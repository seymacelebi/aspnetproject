using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class Ogrenci : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed7_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLSTUDENTSTableAdapter dt = new DataSet1TableAdapters.TBLSTUDENTSTableAdapter();
            dt.OgrenciEkle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrTelefon.Text, TxtOgrMail.Text,TxtOgrSıfre.Text, TxtOgrFoto.Text);
            Response.Redirect("Default.aspx");
        }
    }
}