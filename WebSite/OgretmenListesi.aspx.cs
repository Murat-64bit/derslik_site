using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class OgretmenListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLOGRETMENTableAdapter dt = new
              DataSet1TableAdapters.TBLOGRETMENTableAdapter();
            Repeater1.DataSource = dt.OgretmenListesi();
            Repeater1.DataBind();
        }
    }
}