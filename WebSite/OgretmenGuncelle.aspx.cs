using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class OgretmenGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());
            if (Page.IsPostBack == false)
            {
                try
                {
                    txtOgrtID.Text = id.ToString();
                    DataSet1TableAdapters.TBLOGRETMENTableAdapter dt = new DataSet1TableAdapters.TBLOGRETMENTableAdapter();
                    txtOgrtAdSoyad.Text = dt.OgretmenSec(id)[0].ogrtadsoyad;
                    txtOgrtFotograf.Text = dt.OgretmenSec(id)[0].ogrtfoto;
                    txtOgrtDersid.Text = dt.OgretmenSec(id)[0].ogrtbrans.ToString();
                    txtOgrtSifre.Text = dt.OgretmenSec(id)[0].ogrtsifre.ToString();
                    txtOgretmenNumara.Text = dt.OgretmenSec(id)[0].ogrtno.ToString();
                }
                catch (Exception)
                {

                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLOGRETMENTableAdapter dt = new DataSet1TableAdapters.TBLOGRETMENTableAdapter();
            dt.OgretmenGuncelle(txtOgrtAdSoyad.Text, txtOgrtFotograf.Text, int.Parse(txtOgrtDersid.Text), txtOgrtSifre.Text, txtOgretmenNumara.Text, int.Parse(txtOgrtID.Text));
            Response.Redirect("OgretmenListesi.aspx");
        }
    }
}