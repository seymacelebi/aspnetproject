using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;

namespace _15._08._2020aspnet
{
    public partial class Grafikler : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-HFPKQE5\SQLEXPRESS;Initial Catalog=udemywebsite;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Execute Graf1", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            while(dr.Read())
            {
                Chart5.Series["DERSLER"].Points.AddXY(Convert.ToString(dr[0]),int.Parse(dr[1].ToString()));
            }
            baglanti.Close();

            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Execute Graf2", baglanti);
            SqlDataReader dr2 = komut2.ExecuteReader();
            while (dr2.Read())
            {
                Chart4.Series["CİNSİYET"].Points.AddXY(Convert.ToString(dr2[0]), int.Parse(dr2[1].ToString()));
            }
            baglanti.Close();


            baglanti.Open();
            SqlCommand komut3 = new SqlCommand("Execute Graf3", baglanti);
            SqlDataReader dr3 = komut3.ExecuteReader();
            while (dr3.Read())
            {
                Chart3.Series["DERSAD"].Points.AddXY(Convert.ToString(dr3[0]), int.Parse(dr3[1].ToString()));
            }
            baglanti.Close();



            baglanti.Open();
            SqlCommand komut4 = new SqlCommand("Execute Graf4", baglanti);
            SqlDataReader dr4 = komut4.ExecuteReader();
            while (dr4.Read())
            {
                Chart1.Series["NOTLAR"].Points.AddXY(Convert.ToString(dr4[0]), int.Parse(dr4[1].ToString()));
            }
            baglanti.Close();

        }
    }
}