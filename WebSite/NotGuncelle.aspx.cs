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
    public partial class NotGuncelle : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-F24NTQI;Initial Catalog=DbOkul;Integrated Security=True");

        int notid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                baglanti.Open();
                notid = Convert.ToInt32(Request.QueryString["notid"].ToString());
                SqlCommand komut = new SqlCommand("select notid, ogrenciid, dersnid, sinav1, sinav2, sinav3, ortalama,durum FROM OgrNotlar WHERE (notid = @notid)", baglanti);
                komut.Parameters.AddWithValue("@notid", notid);
                SqlDataReader dr = komut.ExecuteReader();
                if (dr.Read())
                {
                    txtNotid.Text = dr[0].ToString();
                    txtOGRid.Text = dr[1].ToString();
                    txtdersid.Text = dr[2].ToString();
                    txtsinav1.Text = dr[3].ToString();
                    txtsinav2.Text = dr[4].ToString();
                    txtsinav3.Text = dr[5].ToString();
                    txtortalama.Text = dr[6].ToString();
                    chkdurum.Text = dr[7].ToString();
                }
                baglanti.Close();

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double sinav1, sinav2, sinav3;
            double ortalama;
            sinav1 = Convert.ToInt32(txtsinav1.Text);
            sinav2 = Convert.ToInt32(txtsinav2.Text);
            sinav3 = Convert.ToInt32(txtsinav3.Text);
            ortalama = (sinav1 + sinav2 + sinav3) / 3;
            txtortalama.Text = ortalama.ToString("0.00");
            if (ortalama >= 50)
            {
                chkdurum.Checked = true;
            }
            if (ortalama <= 49)
            {
                chkdurum.Checked = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            notid = Convert.ToInt32(Request.QueryString["notid"].ToString());

            DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
            dt.NotGuncelle(byte.Parse(txtsinav1.Text), byte.Parse(txtsinav2.Text), byte.Parse(txtsinav3.Text),
                decimal.Parse(txtortalama.Text), chkdurum.Checked,notid);
            Response.Redirect("NotListesi.aspx");
        }
    }
}