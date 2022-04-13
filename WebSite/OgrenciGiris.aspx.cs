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
    public partial class OgrenciGiris : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-F24NTQI;Initial Catalog=DbOkul;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from TBLOGRENCI where ogrno=@p1 and ogrsifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", txtLogin.Text);
            komut.Parameters.AddWithValue("@p2", txtPass.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {

                Session.Add("ogrno", txtLogin.Text);
                Response.Redirect("OgrenciDef.aspx?ogrno=" + txtLogin.Text);

            }
            else
            {
                txtPass.Text = "Hatalı Şifre";
            }
            baglanti.Close();
        }
    }
}