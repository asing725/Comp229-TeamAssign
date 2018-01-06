using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
              string  txtx= " is logged in!";
                foruser.Visible =  true;
                foruser1.Visible = true;
                forguest.Visible =  false;
                forguest1.Visible = false;
                userdisp.InnerText = HttpContext.Current.User.Identity.Name + txtx;
            }
            else
            {
                foruser.Visible = false;
                foruser1.Visible = false;
                forguest.Visible = true;
                forguest1.Visible = true;
            }
        }
    }
}