﻿using Caliburn.Micro;
using Core.Contexts.Network;

namespace RED.ViewModels.Settings.Network
{
    public class NetworkManagerSettingsViewModel : PropertyChangedBase
    {
        private readonly NetworkManagerSettingsContext _settings;

        public bool EnableReliablePackets
        {
            get
            {
                return false;
            }
            set
            {
                _settings.EnableReliablePackets = value;
                NotifyOfPropertyChange(() => EnableReliablePackets);
            }
        }

        public NetworkManagerSettingsViewModel(NetworkManagerSettingsContext settings)
        {
            _settings = settings;
        }
    }
}
