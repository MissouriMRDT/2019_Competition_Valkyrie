﻿using RED.Interfaces.Input;
using RED.ViewModels.Input;
using System.Collections.ObjectModel;

namespace RED.Models.Input
{
    internal class InputManagerModel
    {
        internal int DefaultSerialReadSpeed;
        internal ObservableCollection<IInputDevice> Devices;
        internal ObservableCollection<MappingViewModel> Mappings;
        internal ObservableCollection<IInputMode> Modes;
    }
}
