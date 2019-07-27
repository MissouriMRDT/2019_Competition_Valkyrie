﻿using Core.RoveProtocol;
using RoverNetworkManager.ViewModels;

namespace RoverNetworkManager.Models
{
    internal class MainWindowModel
    {
        public RoveCommCustomPacketViewModel _customPacket;
        public NetworkMapViewModel _networkMap;
        public PingToolViewModel _pingTool;
        public Rovecomm _rovecomm;
    }
}
