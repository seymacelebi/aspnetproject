using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLTEACHERSTableAdapter dt = new DataSet1TableAdapters.TBLTEACHERSTableAdapter();
                DropDownList1.DataSource = dt.OgretmenListesi();
                DropDownList1.DataTextField = "TEACHERNAME";
                DropDownList1.DataValueField = "TEACHERID";
                DropDownList1.DataBind();
            }
        }
        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLANNOUNCEMENTTableAdapter dt = new DataSet1TableAdapters.TBLANNOUNCEMENTTableAdapter();
            dt.DuyuruEkle(TxtDuyuruBaslık.Text, TextArea1.Value.ToString(),Convert.ToInt32(DropDownList1.SelectedValue));
            Response.Redirect("duyurulistesi.aspx");
        }
    }
}