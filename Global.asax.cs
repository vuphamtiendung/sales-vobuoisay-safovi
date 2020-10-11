using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Safovi
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {

        }
        // trang chi tiết giỏ hàng
        void Session_Start(object sender, EventArgs e)
        {
            Session["so_tien"] = 0;
            Session["gio_hang"] = 0;
        }
    }
}