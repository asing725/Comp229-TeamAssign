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
           
                switch (Page.Title)
                {
                    case "Home":                      
                        Page.Title = string.Format("AA Library : Home ");
                        break;
                case "Signup":
                    Page.Title = string.Format("AA Library : Sign up");
                    break;
                case "Login":
                    Page.Title = string.Format("AA Library : Log in");
                    break;
                case "AddNewBook":
                    Page.Title = string.Format("AA Library : Add a new book");
                    break;
                case "ItemDetail":
                    Page.Title = string.Format("AA Library : Book detail");
                    break;
                case "Update":
                    Page.Title = string.Format("AA Library : Update a book");
                    break;
                case "Order":
                    Page.Title = string.Format("AA Library : Loan a book");
                    break;


            }
            }
        }
    }
