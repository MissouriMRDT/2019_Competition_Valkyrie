﻿using Caliburn.Micro;
using RED.Interfaces;
using RED.Models;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows.Threading;

namespace RED.ViewModels
{
    public class StopwatchToolViewModel : PropertyChangedBase
    {
        private StopwatchToolModel _model;
        private IConfigurationManager _configManager;

        public ObservableCollection<ScheduleViewModel> Schedules
        {
            get
            {
                return _model.Schedules;
            }
            private set
            {
                _model.Schedules = value;
                NotifyOfPropertyChange(() => Schedules);
            }
        }

        public ScheduleViewModel SelectedSchedule
        {
            get
            {
                return _model.SelectedSchedule;
            }
            set
            {
                _model.SelectedSchedule = value;
                NotifyOfPropertyChange(() => SelectedSchedule);
            }
        }
        public DispatcherTimer Timer
        {
            get
            {
                return _model.Timer;
            }
            private set
            {
                _model.Timer = value;
                NotifyOfPropertyChange(() => Timer);
            }
        }
        public bool IsRunning
        {
            get
            {
                return _model.IsRunning;
            }
            set
            {
                _model.IsRunning = value;
                NotifyOfPropertyChange(() => IsRunning);
            }
        }

        public DateTime StartTime
        {
            get
            {
                return _model.StartTime;
            }
            private set
            {
                _model.StartTime = value;
                NotifyOfPropertyChange(() => StartTime);
                NotifyOfPropertyChange(() => ScheduleRemainingTime);
                NotifyOfPropertyChange(() => ScheduleElapsedPercent);
                NotifyOfPropertyChange(() => PhaseElapsedTime);
                NotifyOfPropertyChange(() => PhaseRemainingTime);
                NotifyOfPropertyChange(() => PhaseElapsedPercent);
            }
        }
        public TimeSpan ElapsedTime
        {
            get
            {
                return _model.ElapsedTime;
            }
            private set
            {
                _model.ElapsedTime = value;
                NotifyOfPropertyChange(() => ElapsedTime);
                NotifyOfPropertyChange(() => CurrentPhase);
                NotifyOfPropertyChange(() => ScheduleElapsedTime);
                NotifyOfPropertyChange(() => ScheduleRemainingTime);
                NotifyOfPropertyChange(() => ScheduleElapsedPercent);
                NotifyOfPropertyChange(() => PhaseElapsedTime);
                NotifyOfPropertyChange(() => PhaseRemainingTime);
                NotifyOfPropertyChange(() => PhaseElapsedPercent);
            }
        }

        public SchedulePhaseViewModel CurrentPhase
        {
            get
            {
                return SelectedSchedule.PhaseAtTime(ScheduleElapsedTime);
            }
        }
        public TimeSpan ScheduleElapsedTime
        {
            get
            {
                return ElapsedTime;
            }
        }
        public TimeSpan ScheduleRemainingTime
        {
            get
            {
                return SelectedSchedule.Duration - ScheduleElapsedTime;
            }
        }
        public double ScheduleElapsedPercent
        {
            get
            {
                return (double)ScheduleElapsedTime.Ticks / SelectedSchedule.Duration.Ticks;
            }
        }
        public TimeSpan PhaseElapsedTime
        {
            get
            {
                return SelectedSchedule.ElapsedTimeInPhase(ScheduleElapsedTime);
            }
        }
        public TimeSpan PhaseRemainingTime
        {
            get
            {
                return SelectedSchedule.RemainingTimeInPhase(ScheduleElapsedTime);
            }
        }
        public double PhaseElapsedPercent
        {
            get
            {
                return (double)PhaseElapsedTime.Ticks / SelectedSchedule.PhaseAtTime(ScheduleElapsedTime).Duration.Ticks;
            }
        }

        public StopwatchToolViewModel(IConfigurationManager configs)
        {
            _model = new StopwatchToolModel();
            _configManager = configs;

            Schedules = new ObservableCollection<ScheduleViewModel>();
            Schedules.Add(new ScheduleViewModel("TestSchedule", new[] {
                new SchedulePhaseViewModel("Blah", TimeSpan.FromMinutes(99)),
                new SchedulePhaseViewModel("Phase0", TimeSpan.FromSeconds(30)),
                new SchedulePhaseViewModel("Phase1", TimeSpan.FromSeconds(200)),
                new SchedulePhaseViewModel("Phase2", TimeSpan.FromSeconds(10))
            }));
            ElapsedTime = TimeSpan.FromSeconds(0);

            SelectedSchedule = Schedules.FirstOrDefault();

            Timer = new DispatcherTimer();
            Timer.Tick += Timer_Tick;
        }

        public void Toggle()
        {
            if (IsRunning)
                Stop();
            else
                Start();
        }
        public void Start()
        {
            StartTime = DateTime.Now - ElapsedTime;
            Timer.Interval = TimeSpan.FromSeconds(Math.Ceiling(ElapsedTime.TotalSeconds) - ElapsedTime.TotalSeconds);
            Timer.Start();
            IsRunning = true;
        }
        public void Stop()
        {
            Timer.Stop();
            ElapsedTime = DateTime.Now - StartTime;
            IsRunning = false;
        }
        public void Reset()
        {
            if (IsRunning) Stop();
            ElapsedTime = TimeSpan.Zero;
        }
        public void SetTime(TimeSpan newTime)
        {
            ElapsedTime = newTime;
            if (IsRunning)
                Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            ElapsedTime = DateTime.Now - StartTime;
            Timer.Interval = TimeSpan.FromSeconds(1);
            if (ElapsedTime >= SelectedSchedule.Duration) Stop();
        }

        public class ScheduleViewModel : PropertyChangedBase
        {
            private StopwatchToolModel.ScheduleModel _model;

            public string Name
            {
                get
                {
                    return _model.Name;
                }
                set
                {
                    _model.Name = value;
                    NotifyOfPropertyChange(() => Name);
                }
            }
            public ObservableCollection<SchedulePhaseViewModel> Phases
            {
                get
                {
                    return _model.Phases;
                }
                set
                {
                    _model.Phases = value;
                    NotifyOfPropertyChange(() => Phases);
                }
            }

            public TimeSpan Duration
            {
                get
                {
                    return Phases.Aggregate(TimeSpan.Zero, (x, y) => x + y.Duration);
                }
            }

            public ScheduleViewModel(string name, SchedulePhaseViewModel[] phases)
            {
                _model = new StopwatchToolModel.ScheduleModel();
                Name = name;
                Phases = new ObservableCollection<SchedulePhaseViewModel>(phases);
            }

            public SchedulePhaseViewModel PhaseAtTime(TimeSpan time)
            {
                TimeSpan sum = TimeSpan.Zero;
                foreach (var phase in Phases)
                {
                    sum += phase.Duration;
                    if (sum > time)
                        return phase;
                }
                return Phases.Last();
            }
            public TimeSpan ElapsedTimeInPhase(TimeSpan time)
            {
                TimeSpan sum = TimeSpan.Zero;
                foreach (var phase in Phases)
                {
                    if (sum + phase.Duration > time)
                        return time - sum;
                    sum += phase.Duration;
                }
                return Phases.Last().Duration;
            }
            public TimeSpan RemainingTimeInPhase(TimeSpan time)
            {
                TimeSpan sum = TimeSpan.Zero;
                foreach (var phase in Phases)
                {
                    sum += phase.Duration;
                    if (sum > time)
                        return sum - time;
                }
                return time - Duration;
            }
        }

        public class SchedulePhaseViewModel : PropertyChangedBase
        {
            private StopwatchToolModel.SchedulePhaseModel _model;

            public string Name
            {
                get
                {
                    return _model.Name;
                }
                set
                {
                    _model.Name = value;
                    NotifyOfPropertyChange(() => Name);
                }
            }
            public TimeSpan Duration
            {
                get
                {
                    return _model.Duration;
                }
                set
                {
                    _model.Duration = value;
                    NotifyOfPropertyChange(() => Duration);
                }
            }

            public SchedulePhaseViewModel(string name, TimeSpan duration)
            {
                _model = new StopwatchToolModel.SchedulePhaseModel();
                Name = name;
                Duration = duration;
            }
        }
    }
}
