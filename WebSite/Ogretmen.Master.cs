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
    public partial class Ogretmen1 : System.Web.UI.MasterPage
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-F24NTQI;Initial Catalog=DbOkul;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select dersad from TBLOGRETMEN inner join TBLDERSLER on TBLDERSLER.dersid = TBLOGRETMEN.ogrtbrans where ogrtno=@ogrtno", baglanti);
            komut.Parameters.AddWithValue("@ogrtno", Session["ogrtno"].ToString());
            komut.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            baglanti.Close();
        }
    }
}