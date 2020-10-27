using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;

namespace CyberDaySystem
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "volunteer")
            {
                Label2.Visible = true;
                GridView3.Visible = true;
            }

            if (e.CommandName == "attendee")
            {
                Label1.Visible = true;
                GridView2.Visible = true;
            }
        }
    }
}