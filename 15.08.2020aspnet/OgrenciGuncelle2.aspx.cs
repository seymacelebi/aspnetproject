using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class OgrenciGuncelle2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Request.QueryString["Numara"];
            if (Page.IsPostBack == false)
            {
               
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLSTUDENTSTableAdapter dt = new DataSet1TableAdapters.TBLSTUDENTSTableAdapter();
            //dt.OgrenciSifreGuncelle(TextBox6.Text, TextBox1.Text);
            if (TextBox6.Text == TextBox2.Text)
            {
                dt.OgrenciSifreGuncelle(TextBox6.Text, TextBox1.Text);
                Response.Redirect("ogrencidefault.aspx?NUMARA=" + TextBox1.Text);
            }
            else
            {
                TextBox2.Text = "Şifreler Aynı Değil";
            }
            Response.Redirect("OgrenciDefault.Aspx?Numara="+ TextBox1.Text);
        }
    }
}