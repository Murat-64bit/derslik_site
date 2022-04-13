using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ogrid"].ToString());
            if (Page.IsPostBack==false)
            {
                try
                {
                    TxtOgrID.Text = id.ToString();
                    DataSet1TableAdapters.TBLOGRENCITableAdapter dt = new DataSet1TableAdapters.TBLOGRENCITableAdapter();
                    TxtOgrAd.Text = dt.OgrenciSec(id)[0].ograd;
                    TxtOgrSoyad.Text = dt.OgrenciSec(id)[0].ogrsoyad;
                    TxtOgrNO.Text = dt.OgrenciSec(id)[0].ogrno;
                    TxtOgrMail.Text = dt.OgrenciSec(id)[0].ogrmail;
                    TxtOgrTelefon.Text = dt.OgrenciSec(id)[0].ogrtelefon;
                    TxtOgrSifre.Text = dt.OgrenciSec(id)[0].ogrsifre;
                    TxtOgrFoto.Text = dt.OgrenciSec(id)[0].ogrfotograf;
                }
                catch (Exception)
                {

                }
            }
          
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLOGRENCITableAdapter dt = new DataSet1TableAdapters.TBLOGRENCITableAdapter();
            dt.OgrenciGuncelle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrNO.Text, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text, TxtOgrFoto.Text, short.Parse(TxtOgrID.Text));
            Response.Redirect("WebForm1.aspx");
        }
    }
}