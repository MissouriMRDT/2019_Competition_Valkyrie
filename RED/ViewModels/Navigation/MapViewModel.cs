﻿using Caliburn.Micro;
using Core;
using Core.Interfaces;
using Core.Models;
using Core.ViewModels;
using GMap.NET;
using GMap.NET.MapProviders;
using GMap.NET.WindowsPresentation;
using RED.Addons.Navigation;
using RED.Models.Navigation;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Timers;
using System.Windows;
using System.Windows.Media;

namespace RED.ViewModels.Navigation
{
    public class MapViewModel : PropertyChangedBase
    {
        private readonly MapModel _model;
        private readonly ILogger _log;

        public Waypoint CurrentLocation
        {
            get
            {
                return _model.CurrentLocation;
            }
            set
            {
                _model.CurrentLocation = value;
                NotifyOfPropertyChange(() => CurrentLocation);
            }
        }
        public ObservableCollection<Waypoint> Waypoints
        {
            get
            {
                return _model.Manager.Waypoints;
            }
        }

        public WaypointManager Manager
        {
            get
            {
                return _model.Manager;
            }
            private set
            {
                _model.Manager = value;
                NotifyOfPropertyChange(() => Manager);
            }
        }

        public GPSCoordinate StartPosition
        {
            get
            {
                return _model.StartPosition;
            }
            set
            {
                _model.StartPosition = value;
                NotifyOfPropertyChange(() => StartPosition);
            }
        }
        public bool ShowEmptyTiles
        {
            get
            {
                return _model.ShowEmptyTiles;
            }
            set
            {
                _model.ShowEmptyTiles = value;
                if (MainMap != null) MainMap.FillEmptyTiles = !ShowEmptyTiles;
                NotifyOfPropertyChange(() => ShowEmptyTiles);
            }
        }

        public int CachePrefetchStartZoom
        {
            get
            {
                return _model.CachePrefetchStartZoom;
            }
            set
            {
                _model.CachePrefetchStartZoom = value;
                NotifyOfPropertyChange(() => CachePrefetchStartZoom);
            }
        }
        public int CachePrefetchStopZoom
        {
            get
            {
                return _model.CachePrefetchStopZoom;
            }
            set
            {
                _model.CachePrefetchStopZoom = value;
                NotifyOfPropertyChange(() => CachePrefetchStopZoom);
            }
        }

        public GMapControl MainMap
        {
            get
            {
                return _model.MainMap;
            }
            private set
            {
                _model.MainMap = value;
                NotifyOfPropertyChange(() => MainMap);
            }
        }

        public MapViewModel(ILogger log)
        {
            _model = new MapModel();
            _log = log;
            Manager = WaypointManager.Instance;

            CurrentLocation = new Waypoint("GPS", 0f, 0f) { Color = System.Windows.Media.Colors.Red };
			RefreshMap();
        }

        public void SetMap(GMapControl map)
        {
            MainMap = map;
            InitializeMapControl();
            CachePrefetchStartZoom = MainMap.MinZoom;
            CachePrefetchStopZoom = MainMap.MaxZoom;
        }

        public List<PointLatLng> RoverPath;

        private void InitializeMapControl()
        {
            MainMap.Margin = new Thickness(-5);

            MainMap.FillEmptyTiles = !ShowEmptyTiles;

            MainMap.Manager.Mode = AccessMode.CacheOnly;
            MainMap.MapProvider = GMapProviders.OpenStreetMapQuestHybrid;

            MainMap.Position = new PointLatLng(StartPosition.Latitude, StartPosition.Longitude);
            MainMap.MinZoom = 1;
            MainMap.MaxZoom = 18;
            MainMap.Zoom = 10;

            MainMap.EmptyMapBackground = Brushes.White;
            MainMap.EmptytileBrush = Brushes.White;
            MainMap.EmptyTileText = new FormattedText("No imagery available in cache.", System.Globalization.CultureInfo.CurrentUICulture, FlowDirection.LeftToRight, new Typeface("Sans Serif"), SystemFonts.MessageFontSize, Brushes.Black);

            MainMap.IgnoreMarkerOnMouseWheel = true;
            MainMap.MouseWheelZoomType = MouseWheelZoomType.MousePositionWithoutCenter;

            RoverPath = new List<PointLatLng>();

            Timer checkForTime = new Timer(1000);
            checkForTime.Elapsed += new ElapsedEventHandler(UpdateRoverPath);
            checkForTime.Enabled = true;

        }

        void UpdateRoverPath(object sender, ElapsedEventArgs e)
        {
            if (CurrentLocation.Longitude == 0 && CurrentLocation.Latitude == 0) {
                return;
            }

            PointLatLng curr = new PointLatLng(CurrentLocation.Latitude, CurrentLocation.Longitude);
            
            if(RoverPath.Count > 0 && RoverPath[RoverPath.Count - 1].Equals(curr))
            {
                RoverPath.Add(curr);
                _log.Log("Added point!");
            }
            else if(RoverPath.Count == 0)
            {
                RoverPath.Add(curr);
                _log.Log("Added point!");
            }
            RefreshMap();
        }

        void ClearRoverPath()
        {
            RoverPath.Clear();
            RefreshMap();
        }

        public void CacheImport()
        {
            MainMap.ShowImportDialog();
        }
        public void CacheExport()
        {
            MainMap.ShowExportDialog();
        }
        public void CachePrefetch()
        {
            RectLatLng area = MainMap.SelectedArea;
            if (area.IsEmpty)
            {
                MessageBox.Show("Select map area holding ALT", "GMap.NET", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            for (int zoomLevel = CachePrefetchStartZoom; zoomLevel <= CachePrefetchStopZoom; zoomLevel++)
            {
                TilePrefetcher obj = new TilePrefetcher();
                obj.Owner = Application.Current.MainWindow;
                obj.Start(area, zoomLevel, MainMap.MapProvider, 100);
            }
        }
        public void CacheClear()
        {
            try
            {
                MainMap.Manager.PrimaryCache.DeleteOlderThan(System.DateTime.Now, null);
            }
            catch (System.Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void RefreshMap()
        {
            if (MainMap == null) return;
            MainMap.Markers.Clear();

            var converter = new GMapMarkerCollectionMultiConverter();
            var newdata = (IEnumerable<GMapMarker>)converter.Convert(new object[] { CurrentLocation, Waypoints.Where(x => x.IsOnMap) }, typeof(System.Collections.ObjectModel.ObservableCollection<GMapMarker>), null, System.Globalization.CultureInfo.DefaultThreadCurrentUICulture);
            foreach (var marker in newdata)
                MainMap.Markers.Add(marker);

            var routeMarker = new GMapRoute(RoverPath);
            MainMap.Markers.Add(routeMarker);
        }
    }
}
