using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                try
                {
                    id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
                    TxtOgrId.Text = id.ToString();
                    DataSet1TableAdapters.TBLSTUDENTSTableAdapter dt = new DataSet1TableAdapters.TBLSTUDENTSTableAdapter();

                    TxtOgrAd.Text = dt.OgrenciSec(id)[0].OGRNAME;
                    TxtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSURNAME;
                    TxtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
                    TxtOgrTelefon.Text = dt.OgrenciSec(id)[0].OGRTELEPHONE;
                    TxtOgrSıfre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
                    TxtOgrFoto.Text = dt.OgrenciSec(id)[0].OGRPICTURE;

                }
                catch (Exception)
                {
                    TxtOgrId.Text = "null";
                    TxtOgrFoto.Text = "Link Girin";
                }
            }

        }

        protected void Unnamed8_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLSTUDENTSTableAdapter dt = new DataSet1TableAdapters.TBLSTUDENTSTableAdapter();
            dt.OgrenciGuncelle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrTelefon.Text,TxtOgrMail.Text, TxtOgrSıfre.Text, TxtOgrFoto.Text,Convert.ToInt32(TxtOgrId.Text));
            Response.Redirect("Default.aspx");
        }
    }
}