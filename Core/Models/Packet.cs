﻿using System;
using Core.RoveProtocol;

namespace Core.Models
{
    public readonly struct Packet
    {
        public readonly string Name;
        public readonly byte[] Data;
        public readonly byte Count;
        public readonly byte DataType;

        public Packet(string name, byte[] data, byte count, byte type)
        {
            Name = name;
            Data = data;
            Count = count;
            DataType = type;
        }

        public Packet(string name, SByte data)
        {
            Name = name;
            Data = BitConverter.GetBytes(data);
            Count = 1;
            DataType = (byte)RoveProtocol.DataTypes.INT8_T;
        }

        public Packet(string name, byte data)
        {
            Name = name;
            Data = BitConverter.GetBytes(data);
            Count = 1;
            DataType = (byte)RoveProtocol.DataTypes.UINT8_T;
        }

        public Packet(string name, Int16 data)
        {
            Name = name;
            Data = BitConverter.GetBytes(data);
            Count = 1;
            DataType = (byte)RoveProtocol.DataTypes.INT16_T;
        }

        public Packet(string name, UInt16 data)
        {
            Name = name;
            Data = BitConverter.GetBytes(data);
            Count = 1;
            DataType = (byte)RoveProtocol.DataTypes.UINT16_T;
        }

        public Packet(string name, Int32 data)
        {
            Name = name;
            Data = BitConverter.GetBytes(data);
            Count = 1;
            DataType = (byte)RoveProtocol.DataTypes.INT32_T;
        }

        public Packet(string name, UInt32 data)
        {
            Name = name;
            Data = BitConverter.GetBytes(data);
            Count = 1;
            DataType = (byte)RoveProtocol.DataTypes.UINT32_T;
        }

        public Packet(string name)
        {
            Name = name;
            Data = new byte[] { 4 };
            Count = 1;
            DataType = 0;
        }
    }
}
