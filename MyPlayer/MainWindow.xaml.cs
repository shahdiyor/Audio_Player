using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Un4seen.Bass;
using System.IO;
using System.Windows.Threading;
using MaterialDesignThemes.Wpf;
using System.Windows.Controls.Primitives;
using System.Windows.Automation.Peers;

namespace MyPlayer
{

    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }


        System.Windows.Threading.DispatcherTimer timer = new System.Windows.Threading.DispatcherTimer();
        MediaPlayer player = new MediaPlayer();


        private void Window_MOVE(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }


        private void Button_MINIMIZED(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }


        private void Button_CLOSE(object sender, RoutedEventArgs e)
        {
            this.Close();
        }


        private void Button_open(object sender, RoutedEventArgs e)
        {
            OpenFileDialog fileDialog = new OpenFileDialog
            {
                Multiselect = true
            };
            fileDialog.Filter = "Media files (*.mp3;*.mpg;*.mpegef w)|*.mp3;*.mpg;*.wav;*.mpeg|All files (*.*)|*.*";
            bool? dialogOk = fileDialog.ShowDialog();
            if (dialogOk == true)
            {
                string[] manySongs = fileDialog.FileNames;
                for (int i = 0; i < manySongs.Length; i++)
                {
                    MAin.Files.Add(manySongs[i]);
                    Playlist.Items.Add(System.IO.Path.GetFileNameWithoutExtension(manySongs[i]));
                }
            }
        }


        private void Slider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            BASSlike.SetVolumeToStream(BASSlike.Stream, Vol.Value);
        }


        private void Button_STOP(object sender, RoutedEventArgs e)
        {
            BASSlike.stop();
            timer.Stop();
            Prog.Value = 0;
            label1.Content = "00:00:00";
            PlayButton.Content = "Play";
            i = 2;
        }
        private void inf_open(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("MePlayer версия:  V.1.0.0.1            Разработчик:  Мунавваров Ш.М.\n\n©2020, MSHSH.LTD, Все права защищены");
        }

       
        int i = 2;
        private void Button_Play(object sender, RoutedEventArgs e)
        {
            if ((Playlist.Items.Count != 0) && (Playlist.SelectedIndex != -1) && i==2)
            {
                label3.Content = Playlist.SelectedItem.ToString();
                timer.Tick += new EventHandler(timer_Tick);
                timer.Interval = new TimeSpan(500);
                string current = MAin.Files[Playlist.SelectedIndex];
                BASSlike.Play(current, BASSlike.Volume);
                label2.Content = TimeSpan.FromSeconds(BASSlike.GetTimeOfStream(BASSlike.Stream));
                Prog.Maximum = BASSlike.GetTimeOfStream(BASSlike.Stream);
                timer.IsEnabled = true;
                timer.Start();
                PlayButton.Content = "Pause";
                i = 1;
            }
            else
            {
                if ((i==1) && (Playlist.SelectedIndex != -1))
                {
                    BASSlike.Pause();
                    timer.IsEnabled = false;
                    PlayButton.Content = "Play";
                    i = 2;
                }
                else
                {
                    MessageBox.Show("Выберите аудиодорожку");
                }
            }
        }
        private void timer_Tick(object sender, EventArgs e)
        {
            label1.Content = TimeSpan.FromSeconds(BASSlike.GetPosition(BASSlike.Stream)).ToString();
            Prog.Value = BASSlike.GetPosition(BASSlike.Stream);
            Prog.Maximum = BASSlike.GetTimeOfStream(BASSlike.Stream);
        }


        private void Prog_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            string current = MAin.Files[Playlist.SelectedIndex];
            System.Windows.Point mousepnt = e.GetPosition(this);
            double value = ((mousepnt.X - Prog.Margin.Left) / Prog.Width) * Prog.Maximum;
            Prog.Value = value;
            BASSlike.SetPosition(BASSlike.Stream, (int)Prog.Value);
            timer.Start();
        }
        int p = 2;

        private void Button_Next(object sender, RoutedEventArgs e)
        {
            int i = Playlist.SelectedIndex;
        
            if (i < MAin.Files.Count - 1 && i != -1 && Playlist.SelectedIndex != -1)
            {
                Playlist.SelectedIndex++;
                BASSlike.stop();
                timer.Stop();
                Prog.Value = 0;
                label1.Content = "00:00:00";
                label3.Content = Playlist.SelectedItem.ToString();
                timer.Tick += new EventHandler(timer_Tick);
                timer.Interval = new TimeSpan(1);
                string current = MAin.Files[Playlist.SelectedIndex];
                BASSlike.Play(current, BASSlike.Volume);
                label2.Content = TimeSpan.FromSeconds(BASSlike.GetTimeOfStream(BASSlike.Stream));
                Prog.Maximum = BASSlike.GetTimeOfStream(BASSlike.Stream);
                timer.IsEnabled = true;
                timer.Start();
                p=1;
            }
            else
            {
                MessageBox.Show("Аудиодорожка отсутствует");
            }
          
        }

        private void Button_Prev(object sender, RoutedEventArgs e)
        {
            
            if (Playlist.SelectedIndex != 0 && Playlist.SelectedIndex != -1)
            {
                Playlist.SelectedIndex--;
                BASSlike.stop();
                timer.Stop();
                Prog.Value = 0;
                label1.Content = "00:00:00";
                label3.Content = Playlist.SelectedItem.ToString();
                timer.Tick += new EventHandler(timer_Tick);
                timer.Interval = new TimeSpan(1);
                string current = MAin.Files[Playlist.SelectedIndex];
                BASSlike.Play(current, BASSlike.Volume);
                label2.Content = TimeSpan.FromSeconds(BASSlike.GetTimeOfStream(BASSlike.Stream));
                Prog.Maximum = BASSlike.GetTimeOfStream(BASSlike.Stream);
                timer.IsEnabled = true;
                timer.Start();
            }
            else
            {
                MessageBox.Show("Аудиодорожка отсутствует");
            }
        }

    }
}
