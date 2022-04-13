using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite
{
    public partial class OgrenciSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ogrid"].ToString());

            DataSet1TableAdapters.TBLOGRENCITableAdapter dt = new DataSet1TableAdapters.TBLOGRENCITableAdapter();
            dt.OgrenciSil(id);
            Response.Redirect("WebForm1.aspx");
        }
    }
}