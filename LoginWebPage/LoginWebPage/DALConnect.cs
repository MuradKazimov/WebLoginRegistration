using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LoginWebPage
{
    public class DALconnect
    {
        public static string SQlConnection
        {
            get { return "Data Source=DESKTOP-HQ54VJP\\SQLEXPRESS01;Integrated Security=True; Database=Northwind;"; }

        }
    }
}