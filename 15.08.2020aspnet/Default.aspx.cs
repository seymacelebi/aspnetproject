using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLSTUDENTSTableAdapter dt = new DataSet1TableAdapters.TBLSTUDENTSTableAdapter();
            Repeater1.DataSource = dt.OgrenciListesi();
            Repeater1.DataBind();
        }
    }
}