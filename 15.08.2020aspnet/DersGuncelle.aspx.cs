using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {


                id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());

                DataSet1TableAdapters.TBLDERSTableAdapter dt = new DataSet1TableAdapters.TBLDERSTableAdapter();
                TxtDersId.Text = id.ToString();
                TxtDersAdı.Text = dt.DersGetir(id)[0].DERSAD;
            }
        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLDERSTableAdapter dt = new DataSet1TableAdapters.TBLDERSTableAdapter();
            dt.DersGuncelle(TxtDersAdı.Text, Convert.ToInt32(TxtDersId.Text));
            Response.Redirect("DersListesi.Aspx");
        }
    }
}