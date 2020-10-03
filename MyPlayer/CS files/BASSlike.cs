using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Un4seen.Bass;

namespace MyPlayer
{
    public static class BASSlike
    {
        public static int HZ = 44100;
        public static bool InitDefaultDevice;
        public static int Stream;
        public static int Volume = 100;




        private static bool InitBass(int hz)
        {
            if (!InitDefaultDevice)
                InitDefaultDevice = Bass.BASS_Init(-1, hz, BASSInit.BASS_DEVICE_DEFAULT, IntPtr.Zero);
            return InitDefaultDevice;
        }
        public static void stop()
        {
            Bass.BASS_ChannelStop(Stream);
            Bass.BASS_StreamFree(Stream);
        }
        public static void SetVolumeToStream(int stream, double vol)
        {
            Volume = (int)vol;
            Bass.BASS_ChannelSetAttribute(stream, BASSAttribute.BASS_ATTRIB_VOL, Volume / 100F);
        }
        public static void Play(string filename, int vol)
        {
           
            if (Bass.BASS_ChannelIsActive(Stream) != BASSActive.BASS_ACTIVE_PAUSED)
            {
                stop();
                if (InitBass(HZ))
                {
                    Stream = Bass.BASS_StreamCreateFile(filename, 0, 0, BASSFlag.BASS_DEFAULT);
                    if (Stream != 0)
                    {
                        Volume = 100;
                        Bass.BASS_ChannelSetAttribute(Stream, BASSAttribute.BASS_ATTRIB_VOL, (float)Volume / 100);
                        Bass.BASS_ChannelPlay(Stream, false);
                    }
                }
            }
            else
            {
                Bass.BASS_ChannelPlay(Stream, false);
            }
        }

        public static void Pause()
        {
            if(Bass.BASS_ChannelIsActive(Stream) == BASSActive.BASS_ACTIVE_PLAYING)
            {
                Bass.BASS_ChannelPause(Stream);
            }
        }

        public static void SetPosition(int stream, int pos)
        {
            Bass.BASS_ChannelSetPosition(stream, (double)pos);
        }

        public static int GetPosition(int stream)
        {
            long pos = Bass.BASS_ChannelGetPosition(stream);
            double posSec = Bass.BASS_ChannelBytes2Seconds(stream, pos);
            return (int) posSec;
        }

        public static int GetTimeOfStream(int stream)
        {
            long TimeBytes = Bass.BASS_ChannelGetLength(stream);
            double Time = Bass.BASS_ChannelBytes2Seconds(stream, TimeBytes);
            return (int)Time;
        }
        public static int getSongTime(int musicStream)
        {
            long timeBytes = Bass.BASS_ChannelGetLength(musicStream);
            double songTime = Bass.BASS_ChannelBytes2Seconds(musicStream, timeBytes);
            return (int)songTime;
        }
      
       
    }
}
