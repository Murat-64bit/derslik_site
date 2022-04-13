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
    public partial class DersKayit : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLDERSLERTableAdapter dt = new DataSet1TableAdapters.TBLDERSLERTableAdapter();
                DropDownList1.DataSource = dt.DersListesi();
                DropDownList1.DataTextField = "dersad";
                DropDownList1.DataValueField = "dersid";
                DropDownList1.DataBind();


            }
            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLOGRENCITableAdapter dt = new
             DataSet1TableAdapters.TBLOGRENCITableAdapter();
                Repeater1.DataSource = dt.DersKayitListe(Session["ogrno"].ToString());
                Repeater1.DataBind();


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLOGRENCITableAdapter dt = new DataSet1TableAdapters.TBLOGRENCITableAdapter();
            dt.DersKaydet(Convert.ToInt32(DropDownList1.SelectedValue), Session["ogrno"].ToString());
            Response.Redirect("DersKayit.aspx");
        }
    }
}