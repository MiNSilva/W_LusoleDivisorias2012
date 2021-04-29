using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ///Recupera Cookie
        HttpCookie cookie = Request.Cookies.Get("_gat_gtag_UA_172418564_1");

        // Verifica se existe  Cookie 
        if (cookie == null)
        {
            Panel2.Visible = true;
        }
    }
    protected void btnAceitar_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }


    protected void lkbCookies_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cookies.aspx", false);
        Panel2.Visible = false;

    }
}
