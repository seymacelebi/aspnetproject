using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class OgrenciMesajOlustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtGonderen.Text = Session["Numara"].ToString();
        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLMESSAGETableAdapter dt = new DataSet1TableAdapters.TBLMESSAGETableAdapter();
            dt.MesajGonder(TxtGonderen.Text, TxtAlıcı.Text, TxtMesajBaslık.Text, TxtMesajIcerık.Value);
            Response.Redirect("OgrenciGidenMesajlar.Aspx");
        }
    }
}