using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class DuyuruListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLANNOUNCEMENTTableAdapter dt = new DataSet1TableAdapters.TBLANNOUNCEMENTTableAdapter();
            Repeater1.DataSource = dt.DuyuruListesi();
            Repeater1.DataBind();

        }
    }
}