using CoreMarket.Constant;
using CoreMarket.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.IO;
using CoreMarket.Service;

namespace CoreMarket
{
    public partial class ProductLogs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckUserSession();
            List<ProductLog> productLogList = ProductService.GetProductLogs();

            repeaterProductLogs.DataSource = productLogList;
            repeaterProductLogs.DataBind();
        }

        private void CheckUserSession()
        {
            if (Session["CurrentUser"] == null)
            {
                Response.Redirect("Auth.aspx");
            }
        }
    }
}