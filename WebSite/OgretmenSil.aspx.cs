﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class OgretmenSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());
            DataSet1TableAdapters.TBLOGRETMENTableAdapter dt = new DataSet1TableAdapters.TBLOGRETMENTableAdapter();
            dt.OgretmenDurum(id);
            Response.Redirect("OgretmenListesi.aspx");
        }
    }
}