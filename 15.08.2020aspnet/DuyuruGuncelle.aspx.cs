using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15._08._2020aspnet
{
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                
                
                    id = Convert.ToInt32(Request.QueryString["ANNOUNCEMENTID"].ToString());
                   
                    DataSet1TableAdapters.TBLANNOUNCEMENTTableAdapter dt = new DataSet1TableAdapters.TBLANNOUNCEMENTTableAdapter();
                    dt.DuyuruSec(id);

                    txtduyuruid.Text = id.ToString();
                    TxtDuyuruBaslık.Text = dt.DuyuruSec(id)[0].ANNOUNCEMENTTITLE;
                    TextArea1.Value = dt.DuyuruSec(id)[0].ANNOUNCEMENTCONTENT_;
         
            }

        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLANNOUNCEMENTTableAdapter dt = new DataSet1TableAdapters.TBLANNOUNCEMENTTableAdapter();
            dt.DuyuruGuncelle(TxtDuyuruBaslık.Text, TextArea1.Value, Convert.ToInt32(txtduyuruid.Text));
            Response.Redirect("DuyuruListesi.Aspx");


        }
    }
}