using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class OgrenciNotu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.OGRNOTTableAdapter dt = new DataSet1TableAdapters.OGRNOTTableAdapter();
            //Repeater1.DataSource = dt.OgrenciNotu("9831");
            Repeater1.DataSource = dt.OgrenciNotu(Session["Numara"].ToString());
            Repeater1.DataBind();
        }
    }
}