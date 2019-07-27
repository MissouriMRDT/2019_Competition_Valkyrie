﻿using Core.RoveProtocol;
using Core.Configurations;
using RED.ViewModels;
using RED.ViewModels.Modules;
using RED.ViewModels.Navigation;
using RED.ViewModels.Tools;
using Core.ViewModels.Input;
using Core.ViewModels.Input.Controllers;

namespace RED.Models
{
    internal class ControlCenterModel
    {
        internal SettingsManagerViewModel _settingsManager;

        internal ConsoleViewModel _console;
        internal XMLConfigManager _configManager;
        internal MetadataManager _metadataManager;
        internal Rovecomm _rovecomm;
        internal InputManagerViewModel _input;
        internal WaypointManagerViewModel _waypoint;
        internal StopwatchToolViewModel _stopwatchTool;
        
        internal GPSViewModel _GPS;
        internal SensorViewModel _sensor;
        internal PowerViewModel _power;
        internal CameraViewModel _cameraMux;
        internal LightingViewModel _lighting;
        internal MapViewModel _map;
        internal DriveViewModel _drive;
        internal GimbalViewModel _gimbal;
        internal XboxControllerInputViewModel _xboxController1;
        internal XboxControllerInputViewModel _xboxController2;
        internal XboxControllerInputViewModel _xboxController3;
        internal FlightStickViewModel _flightStickController;
        internal KeyboardInputViewModel _keyboardController;

		internal bool _networkManagerEnabled;
        internal bool _attachmentManagerEnabled;
    }
}
