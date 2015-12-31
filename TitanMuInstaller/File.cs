using System;
using System.Collections.Generic;
using System.Text;
using System.IO;

namespace TitanMuInstaller
{
    public class File
    {
        public static void WriteLine(string Path, string Text, bool Append)
        {
            try
            {
                StreamWriter w = new StreamWriter(Path, Append);
                w.WriteLine(Text);
                w.Close();
            }
            catch (Exception) { }
        }

        public static void Write(string Path, string Text, bool Append)
        {
            try
            {
                StreamWriter w = new StreamWriter(Path, Append);
                w.Write(Text);
                w.Close();
            }
            catch (Exception) { }
        }

        public static string Read(string FilePath)
        {
            try
            {
                StreamReader r = new StreamReader(FilePath);
                string str = r.ReadToEnd();
                r.Close();
                return str;
            }
            catch (Exception)
            {
                return "";
            }
        }
    }
}
