using CoreMarket.Model;
using CoreMarket.Service;
using System;

namespace CoreMarket
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            try
            {
                string name = txtName.Text;
                int count = Convert.ToInt32(txtCount.Text);
                decimal price = decimal.Parse(txtPrice.Text);
                decimal purcasedPrice = decimal.Parse(txtPurcasedPrice.Text);

                Product newProduct = new Product
                {
                    Id = GenerateId(),
                    Name = name,
                    Count = count,
                    Price = price,
                    PurcasedPrice = purcasedPrice,
                };

                ProductService.AddProduct(newProduct);

            }
            catch (Exception ex){
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Girilen bilgiler eksik ya da hatalı.');", true);
            }




        }

        private int GenerateId(){
        return Guid.NewGuid().GetHashCode();    
        }
    }
}