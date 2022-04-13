using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLOGRENCITableAdapter dt = new
                DataSet1TableAdapters.TBLOGRENCITableAdapter();
            dt.OgrenciEkle(TxtOgrAd.Text,TxtOgrSoyad.Text,TxtOgrNo.Text, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text, TxtOgrFoto.Text);
            Response.Redirect("WebForm1.aspx");
        }
    }
}