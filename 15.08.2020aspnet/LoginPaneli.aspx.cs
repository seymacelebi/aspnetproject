using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace _15._08._2020aspnet
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-HFPKQE5\SQLEXPRESS;Initial Catalog=udemywebsite;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from TBLSTUDENTS WHERE NUMARA=@P1 AND  OGRSIFRE=@P2", baglanti);
            komut.Parameters.AddWithValue("@P1", TxtNumara.Text );
            komut.Parameters.AddWithValue("@P2", Txtsifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("numara", TxtNumara.Text);
                Response.Redirect("OgrenciDefault.Aspx");
            }
            else
            {
                Txtsifre.Text = "Hatalı Şifre";
            }
            baglanti.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from TBLTEACHERS WHERE OGRTNUMARA=@P1 AND  OGRTSIFRE=@P2", baglanti);
            komut.Parameters.AddWithValue("@P1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@P2", Txtsifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("OGRTNUMARA", TxtNumara.Text);
                Response.Redirect("Default.Aspx");
            }
            else
            {
                Txtsifre.Text = "Hatalı Şifre";
            }
            baglanti.Close();
        }
    }
}