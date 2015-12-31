using System;
using System.Collections.Generic;
using System.Text;
using System.Runtime.InteropServices;

namespace TitanMuInstaller
{
    class ini
    {
        [DllImport("kernel32")]
        private static extern long WritePrivateProfileString(string section, string key, string val, string filePath);
        [DllImport("kernel32")]
        private static extern int GetPrivateProfileString(string section, string key, string def, StringBuilder retVal, int size, string filePath);
        private string path;
        private string section;

        public ini(string Path)
        {
            path = Path;
        }

        public string Section
        {
            set
            {
                section = value;
            }
            get
            {
                return section;
            }
        }

        public string ReadString(string Key, string DefaultValue)
        {
            try
            {
                StringBuilder temp = new StringBuilder(2048);
                GetPrivateProfileString(section, Key, "", temp, 255, path);
                if (temp != null)
                    return (temp.ToString());
                else
                    return "";
            }
            catch (Exception)
            {
                return "";
            }
        }

        public int ReadInt(string Key, string DefaultValue)
        {
            try
            {
                StringBuilder temp = new StringBuilder(2048);
                GetPrivateProfileString(section, Key, DefaultValue, temp, 255, path);
                if (temp.Length == 0)
                    return 0;
                else
                    return (Convert.ToInt32(temp.ToString()));
            }
            catch (Exception)
            {
                return 0;
            }
        }

        public void WriteValue(string Key, object Value)
        {
            try
            {
                WritePrivateProfileString(section, Key, Value.ToString(), path);
            }
            catch (Exception)
            {
            }
        }
    }
}
