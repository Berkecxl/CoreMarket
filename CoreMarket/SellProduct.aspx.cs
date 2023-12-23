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
    public partial class SellProduct : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateProductDropdown();
            }
        }

        protected void ddlProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            int productId = Convert.ToInt32(ddlProducts.SelectedValue);
            Product selectedProduct = ProductService.GetProductById(productId);

            if (selectedProduct != null)
            {
                lblMaxStock.Text = "Max Stock: " + selectedProduct.Count.ToString();
                lblMaxStock.Visible = true;
            }
        }

        protected void btnSell_Click(object sender, EventArgs e)
        {
            int productId = Convert.ToInt32(ddlProducts.SelectedValue);
            int sellQuantity = Convert.ToInt32(txtSellQuantity.Text);

            Product selectedProduct = ProductService.GetProductById(productId);

            if (selectedProduct != null && selectedProduct.Count >= sellQuantity)
            {
                decimal salePrice = selectedProduct.Price; 
                decimal purchasePrice = selectedProduct.PurcasedPrice; 
                decimal profit = (salePrice - purchasePrice) * sellQuantity; 
                selectedProduct.Count -= sellQuantity; 

                ProductService.UpdateProduct(selectedProduct); 

                lblSaleResult.Text = "Satış başarılı. Kazanç: " + profit.ToString("C");
                lblSaleResult.Visible = true;
            }
            else
            {
                lblSaleResult.Text = "Yetersiz stok veya geçersiz miktar!";
                lblSaleResult.Visible = true;
            }
        }

        private void PopulateProductDropdown()
        {
            List<Product> productList = ProductService.GetProductList();

            if (productList != null && productList.Count > 0)
            {
                ddlProducts.DataSource = productList;
                ddlProducts.DataTextField = "Name";
                ddlProducts.DataValueField = "Id";
                ddlProducts.DataBind();
            }
        }
    }
}