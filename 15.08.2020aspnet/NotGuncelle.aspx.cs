using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int nid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
                DataSet1TableAdapters.OGRNOTTableAdapter dt = new DataSet1TableAdapters.OGRNOTTableAdapter();
                TxtOgrId.Text = dt.NotGetir2(nid)[0].OGRENCIID.ToString();
                TxtOgrAdSoyad.Text = dt.NotGetir2(nid)[0].OGRENCIADSOYAD.ToString();
                TxtDersAdı.Text = dt.NotGetir2(nid)[0].DERSAD.ToString();
                TxtSınav1.Text = dt.NotGetir2(nid)[0].EXAM1.ToString();
                TxtSınav2.Text = dt.NotGetir2(nid)[0].EXAM2.ToString();
                TxtSınav3.Text = dt.NotGetir2(nid)[0].EXAM3.ToString();
                TxtOrtalama.Text = dt.NotGetir2(nid)[0].AVERAGE.ToString();
                TxtDurum.Text = dt.NotGetir2(nid)[0].STATUS.ToString();
            }
        }

        protected void Unnamed9_Click(object sender, EventArgs e)
        {
        
                int sinav1, sinav2, sinav3;
                double ortalama;
                sinav1 = Convert.ToInt32(TxtSınav1.Text);
                sinav2 = Convert.ToInt32(TxtSınav2.Text);
                sinav3 = Convert.ToInt32(TxtSınav3.Text);
                ortalama = (sinav1 + sinav2 + sinav3) / 3;
                TxtOrtalama.Text = ortalama.ToString("0.00");
                if (ortalama >= 50)
                {
                    TxtDurum.Text = "true";
                }
                else
                {
                    TxtDurum.Text = "false";
                }
            }
        
        protected void Unnamed10_Click(object sender, EventArgs e)
        {
            nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
            DataSet1TableAdapters.OGRNOTTableAdapter dt = new DataSet1TableAdapters.OGRNOTTableAdapter();
            dt.NotGuncelle(byte.Parse(TxtSınav1.Text),byte.Parse(TxtSınav2.Text),byte.Parse(TxtSınav3.Text),decimal.Parse(TxtOrtalama.Text),bool.Parse(TxtDurum.Text),nid);
            Response.Redirect("NotListesi.Aspx");

        }
    }
}