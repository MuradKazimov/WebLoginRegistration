using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;

namespace LoginWebPage
{
    public class Connection
    {
        static SqlConnection con = new SqlConnection(DALconnect.SQlConnection);
        static SqlCommand cmd;
        public static string Register(string a1, string a2, string a3, int a4)
        {
            con.Open();
            cmd = new SqlCommand("Register", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Username", a1);
            cmd.Parameters.AddWithValue("@Password", a2);
            cmd.Parameters.AddWithValue("@MailAddress", a3);
            cmd.Parameters.AddWithValue("@PhoneNumber", a4);
            cmd.Parameters.Add(new SqlParameter()
            {
                Direction = ParameterDirection.Output,
                ParameterName = "@result",
                SqlDbType = SqlDbType.Int
            });
            cmd.ExecuteNonQuery();
            con.Close();
            return cmd.Parameters["@result"].Value.ToString();
        }
        public static string Login(string a1, string a2)
        {
            con.Open();
            cmd = new SqlCommand("Login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Username", a1);
            cmd.Parameters.AddWithValue("@Password", a2);
            cmd.Parameters.Add(new SqlParameter()
            {
                Direction = ParameterDirection.Output,
                ParameterName = "@result",
                SqlDbType = SqlDbType.Int
            });
            cmd.ExecuteNonQuery();
            con.Close();
            return cmd.Parameters["@result"].Value.ToString();
        }
    }
}