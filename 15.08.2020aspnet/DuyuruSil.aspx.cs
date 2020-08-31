using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class DuyuruSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ANNOUNCEMENTID"].ToString());
            DataSet1TableAdapters.TBLANNOUNCEMENTTableAdapter dt = new DataSet1TableAdapters.TBLANNOUNCEMENTTableAdapter();
            dt.DuyuruSil(id);
            Response.Redirect("duyurulistesi.aspx");
        }
    }
}