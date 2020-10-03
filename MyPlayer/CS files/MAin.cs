using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyPlayer
{
    public static class MAin
    {
        public static List<string> Files = new List<string>(); //список имён файлов

        public static string GetFilesName(string file)
        {
            string[] tata = file.Split('\\');
            return tata[tata.Length - 1];
        }
    }
}
