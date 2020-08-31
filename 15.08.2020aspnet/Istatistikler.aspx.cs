using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class Istatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable1TableAdapter dt = new DataSet1TableAdapters.DataTable1TableAdapter();
            Txt1.Text = "Toplam Öğrenci Sayısı: " + dt.Istatistik1().ToString();
            Txt2.Text = "Toplam Öğretmen Sayısı: " + dt.Istatistik2().ToString();
            Txt3.Text = "Toplam Ders Sayısı: " + dt.Istatistik3().ToString();
            TextBox1.Text= "Matematik Dersinde En Başarılı Öğrenci: " + dt.Istatistik4().ToString();
            TextBox2.Text = "Fizik Dersinde En Başarılı Öğrenci: " + dt.Istatistik5().ToString();
            TextBox3.Text= "Dil Anlatım Dersinde En Başarılı Öğrenci: " + dt.Istatistik6().ToString();
            TextBox4.Text= "Edebiyat Dersinde En Başarılı Öğrenci: " + dt.Istatistik7().ToString();

            TextBox5.Text = "Matematik Ders Ortalaması:" + dt.Istatistik8().ToString();
            TextBox6.Text= "Dil Anlatım Ders Ortalaması:" + dt.Istatistik9().ToString();
            TextBox7.Text = "Fizik Ders Ortalaması: " + dt.Istatistik10().ToString();
            TextBox8.Text = "Edebiyat Ders Ortalaması: " + dt.Istatistik11().ToString();
           TextBox9.Text= "Matematik Dersinden Geçenler: " + dt.Istatistik12().ToString();
           TextBox10.Text= "Matematik Dersinden Kalanlar: " + dt.Istatistik13().ToString();


        }
    }
}