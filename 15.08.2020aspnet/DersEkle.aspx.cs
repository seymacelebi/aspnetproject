using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class DersEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLDERSTableAdapter dt = new DataSet1TableAdapters.TBLDERSTableAdapter();
            dt.DersEkle(TxtDersAdı.Text);
            Response.Redirect("DersListesi.Aspx");


        }
    }
}