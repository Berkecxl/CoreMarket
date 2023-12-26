using CoreMarket.Model;
using CoreMarket.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoreMarket
{
    public partial class Profit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CheckUserAccess();
                CalculateAndDisplayProfit();
            }
        }

        private void CalculateAndDisplayProfit()
        {
            List<ProductLog> productLogs = ProductService.GetProductLogs();

            decimal totalRevenue = 0;
            decimal totalCost = 0;

            foreach (ProductLog log in productLogs)
            {
                if (log.Action == "Sell")
                {
                    totalRevenue += log.SoldPrice * log.Count;
                }
                else if (log.Action == "Add")
                {
                    totalCost += log.BoughtPrice * log.Count;
                }
            }

            decimal totalProfit = totalRevenue - totalCost;

            revenueLabel.Text = $"Total Revenue: {totalRevenue:C}";
            costLabel.Text = $"Total Cost: {totalCost:C}";
            profitLabel.Text = $"Total Profit: {totalProfit:C}";
        }
        private void CheckUserAccess()
        {
            User currentUser = (User)Session["CurrentUser"];

            if (currentUser == null || currentUser.title != "Owner")
            {
                Response.Redirect("Auth.aspx");
            }
        }
    }
}