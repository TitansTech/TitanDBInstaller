using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.OleDb;
using System.Data.Odbc;
using Microsoft.SqlServer.Server;
using Microsoft.SqlServer;

namespace TitanMuInstaller
{
    public class DBLite
    {
        public OdbcConnection OdbcCon;
        private OdbcDataReader Odbcdr;
        public OleDbConnection OleDbCon;
        private OleDbDataReader OleDbdr;
        public Exception ExError;
        private string m_DNS;
        private byte ConType;
        private string Path;
        private string Password;
        private string ConFormat;

        public DBLite()
        {
            OdbcCon = new OdbcConnection();
            ConType = 1;
        }

        public DBLite(string path, string password)
        {
            Path = path;
            OleDbCon = new OleDbConnection();
            Password = password;
            ConType = 2;
        }

        public bool Connect()
        {
            try
            {
                ExError = new Exception();
                if (Password == "")
                {
                    ConFormat = String.Format(@"Provider=Microsoft.Jet.OLEDB.4.0; Data source={0}", Path);
                }
                else
                {
                    ConFormat = String.Format(@"Provider=Microsoft.Jet.OLEDB.4.0; Data source={0};Jet OLEDB:Database Password={1}", Path, Password);
                }
                OleDbCon.ConnectionString = ConFormat;
                OleDbCon.Open();
                OleDbCon.Close();
            }
            catch (Exception x)
            {
                ExError = x;
                return false;
            }
            finally
            {
                if (OleDbCon.State != ConnectionState.Closed)
                    OleDbCon.Close();
            }
            return true;
        }

        public bool Connect(string DNS, string Login, string Password) //If is MySql DNS = DataBase
        {
            try
            {
                ExError = new Exception();
                string ConFormat = "DSN=" + DNS + ";UID=" + Login + ";PWD=" + Password + ";";
                OdbcCon.ConnectionString = ConFormat;
                OdbcCon.Open();
                OdbcCon.Close();
                m_DNS = DNS;
                return true;
            }
            catch (Exception x)
            {
                ExError = x;
                return false;
            }
            finally
            {
                if (OdbcCon.State != ConnectionState.Closed)
                    OdbcCon.Close();
            }
        }

        public void Close()
        {
            switch (ConType)
            {
                case 1:
                    {
                        if (OdbcCon.State != ConnectionState.Closed)
                            OdbcCon.Close();
                        if(Odbcdr != null)
                            if (!Odbcdr.IsClosed)
                                Odbcdr.Close();
                    } break;
                case 2:
                    {
                        if (OleDbCon.State != ConnectionState.Closed)
                            OleDbCon.Close();

                        if (OleDbdr != null)
                            if (!OleDbdr.IsClosed)
                                OleDbdr.Close();
                    } break;
            }
        }

        public bool Exec(string Query)
        {
            try
            {
                ExError = new Exception();
                switch (ConType)
                {
                    case 1:
                        {
                            OdbcCon.Open();
                            OdbcCommand cmd = new OdbcCommand(Query, OdbcCon);
                            cmd.ExecuteNonQuery();
                        } break;
                    case 2:
                        {
                            OleDbCon.Open();
                            OleDbCommand cmd = new OleDbCommand(Query, OleDbCon);
                            cmd.ExecuteNonQuery();
                        } break;
                }
                return true;
            }
            catch (Exception x)
            {
                ExError = x;
                return false;
            }
        }

        public bool Read(string Query)
        {
            try
            {
                ExError = new Exception();
                switch (ConType)
                {
                    case 1:
                        {
                            Odbcdr = default(OdbcDataReader);
                            OdbcCommand GetData = default(OdbcCommand);
                            GetData = new OdbcCommand(Query, OdbcCon);

                            OdbcCon.Open();
                            Odbcdr = GetData.ExecuteReader();
                        } break;
                    case 2:
                        {
                            OleDbdr = default(OleDbDataReader);
                            OleDbCommand GetData = default(OleDbCommand);
                            GetData = new OleDbCommand(Query, OleDbCon);

                            OleDbCon.Open();
                            OleDbdr = GetData.ExecuteReader();
                        } break;
                }
                return true;
            }
            catch (Exception x)
            {
                ExError = x;
                return false;
            }
        }

        public bool Fetch()
        {
            try
            {
                ExError = new Exception();
                switch (ConType)
                {
                    case 1:
                        {
                            if (Odbcdr != null)
                            {
                                return Odbcdr.Read();
                            }
                        } break;
                    case 2:
                        {
                            if (OleDbdr != null)
                            {
                                return OleDbdr.Read();
                            }
                        } break;
                }
                return false;
            }
            catch (Exception x)
            {
                ExError = x;
                return false;
            }
        }


        public string GetAsString(string Row)
        {
            try
            {
                ExError = new Exception();
                switch (ConType)
                {
                    case 1:
                        {
                            if (!Odbcdr.IsClosed)
                            {
                                for (int i = 0; i < Odbcdr.FieldCount; i++)
                                {
                                    if (Odbcdr.GetName(i).ToUpper() == Row.ToUpper())
                                    {
                                        return Odbcdr[i].ToString();
                                    }
                                }
                            }
                        } break;
                    case 2:
                        {
                            if (!OleDbdr.IsClosed)
                            {
                                for (int i = 0; i < OleDbdr.FieldCount; i++)
                                {
                                    if (OleDbdr.GetName(i).ToUpper() == Row.ToUpper())
                                    {
                                        return OleDbdr[i].ToString();
                                    }
                                }
                            }
                        } break;
                }
                return null;
            }
            catch (Exception x)
            {
                ExError = x;
                return null;
            }
        }


        public int GetAsInteger(string Row)
        {
            try
            {
                ExError = new Exception();
                switch (ConType)
                {
                    case 1:
                        {
                            if (!Odbcdr.IsClosed)
                            {
                                for (int i = 0; i < Odbcdr.FieldCount; i++)
                                {
                                    if (Odbcdr.GetName(i).ToUpper() == Row.ToUpper())
                                    {
                                        return Convert.ToInt32(Odbcdr[i]);
                                    }
                                }
                            }
                        } break;
                    case 2:
                        {
                            if (!OleDbdr.IsClosed)
                            {
                                for (int i = 0; i < OleDbdr.FieldCount; i++)
                                {
                                    if (OleDbdr.GetName(i).ToUpper() == Row.ToUpper())
                                    {
                                        return Convert.ToInt32(OleDbdr[i]);
                                    }
                                }
                            }
                        } break;
                }
                return 0;
            }
            catch (Exception x)
            {
                ExError = x;
                return 0;
            }
        }

        public Int64 GetAsInteger64(string Row)
        {
            try
            {
                ExError = new Exception();
                switch (ConType)
                {
                    case 1:
                        {
                            if (!Odbcdr.IsClosed)
                            {
                                for (int i = 0; i < Odbcdr.FieldCount; i++)
                                {
                                    if (Odbcdr.GetName(i).ToUpper() == Row.ToUpper())
                                    {
                                        return Convert.ToInt64(Odbcdr[i]);
                                    }
                                }
                            }
                        } break;
                    case 2:
                        {
                            if (!OleDbdr.IsClosed)
                            {
                                for (int i = 0; i < OleDbdr.FieldCount; i++)
                                {
                                    if (OleDbdr.GetName(i).ToUpper() == Row.ToUpper())
                                    {
                                        return Convert.ToInt64(OleDbdr[i]);
                                    }
                                }
                            }
                        } break;
                }
                return 0;
            }
            catch (Exception x)
            {
                ExError = x;
                return 0;
            }
        }

        public float GetAsFloat(string Row)
        {
            try
            {
                ExError = new Exception();
                switch (ConType)
                {
                    case 1:
                        {
                            if (!Odbcdr.IsClosed)
                            {
                                for (int i = 0; i < Odbcdr.FieldCount; i++)
                                {
                                    if (Odbcdr.GetName(i).ToUpper() == Row.ToUpper())
                                    {
                                        return float.Parse(Odbcdr[i].ToString());
                                    }
                                }
                            }
                        } break;
                    case 2:
                        {
                            if (!OleDbdr.IsClosed)
                            {
                                for (int i = 0; i < OleDbdr.FieldCount; i++)
                                {
                                    if (OleDbdr.GetName(i).ToUpper() == Row.ToUpper())
                                    {
                                        return float.Parse(OleDbdr[i].ToString());
                                    }
                                }
                            }
                        } break;
                }
                return 0;
            }
            catch (Exception x)
            {
                ExError = x;
                return 0;
            }
        }

        public byte[] GetAsBinary(string Row)
        {
            try
            {
                ExError = new Exception();
                switch (ConType)
                {
                    case 1:
                        {
                            if (!Odbcdr.IsClosed)
                            {
                                for (int i = 0; i < Odbcdr.FieldCount; i++)
                                {
                                    if (Odbcdr.GetName(i).ToUpper() == Row.ToUpper())
                                    {
                                        return (byte[])(Odbcdr[i]);
                                    }
                                }
                            }
                        } break;
                    case 2:
                        {
                            if (!OleDbdr.IsClosed)
                            {
                                for (int i = 0; i < OleDbdr.FieldCount; i++)
                                {
                                    if (OleDbdr.GetName(i).ToUpper() == Row.ToUpper())
                                    {
                                        return (byte[])(OleDbdr[i]);
                                    }
                                }
                            }
                        } break;
                }
                return null;
            }
            catch (Exception x)
            {
                ExError = x;
                return null;
            }
        }
    }
}
