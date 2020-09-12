using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["Numara"].ToString();

            DataSet1TableAdapters.TBLSTUDENTSTableAdapter dt = new DataSet1TableAdapters.TBLSTUDENTSTableAdapter();
            TextBox2.Text = "Ad Soyad: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRNAME + " " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSURNAME;
            TextBox3.Text = "Mail Adresi: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRMAIL;
            TextBox5.Text = "Telefon: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRTELEPHONE;
            TextBox6.Text = "Şifre: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSIFRE;
            //TextBox4.Text = "Fotoğraf" + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRPICTURE;

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciGuncelle2.Aspx?Numara=" + TextBox1.Text);
        }
    }
}