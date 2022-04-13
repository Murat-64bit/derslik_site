using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebSite
{
    public partial class NotListesi : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-F24NTQI;Initial Catalog=DbOkul;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
 

            baglanti.Open();

            SqlCommand komut2 = new SqlCommand("select ogrfotograf,notid, ogrenciid,ograd+' '+ogrsoyad as 'Ad Soyad', ogrtbrans as 'Ders', sinav1, sinav2, sinav3, ortalama, OgrNotlar.durum from OgrNotlar inner join TBLOGRETMEN on TBLOGRETMEN.ogrtbrans = OgrNotlar.dersnid inner join TBLOGRENCI on TBLOGRENCI.ogrid = OgrNotlar.ogrenciid where ogrtno=@ogrtno", baglanti);
            komut2.Parameters.AddWithValue("@ogrtno", Session["ogrtno"].ToString());
            komut2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter(komut2);
            da2.Fill(dt2);
            Repeater1.DataSource = dt2;
            Repeater1.DataBind();
            baglanti.Close();
        }
    }
}