using CoreMarket.Constant;
using CoreMarket.Model;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace CoreMarket.Service
{
    public class ProductService
    {
        public static List<Product> GetProductList()
        {
            string filePath = HttpContext.Current.Server.MapPath(Constants.ProductsJson);
            string jsonFile = File.ReadAllText(filePath);

            List<Product> productList = JsonConvert.DeserializeObject<List<Product>>(jsonFile);
            return productList;
        }

        public static void AddProduct(Product product)
        {
            List<Product> productList = GetProductList();
            productList.Add(product);
            File.WriteAllText(HttpContext.Current.Server.MapPath(Constants.ProductsJson), JsonConvert.SerializeObject(productList));
        }

        public static Product GetProductById(int productId)
        {
            List<Product> productList = GetProductList(); 

            return productList.FirstOrDefault(product => product.Id == productId);
        }

        public static void UpdateProduct(Product updatedProduct)
        {
            List<Product> productList = GetProductList();

            Product newProduct = GetProductById(updatedProduct.Id);

            if (newProduct != null)
            {
                newProduct.Name = updatedProduct.Name;
                newProduct.Count = updatedProduct.Count;
                newProduct.Price = updatedProduct.Price;

                SaveProductList(productList); 
            }
            else
            {
                //TODO hata mesajı
            }
        }

        private static void SaveProductList(List<Product> productList)
        {
            string json = JsonConvert.SerializeObject(productList);

            File.WriteAllText(Constants.ProductsJson, json);
        }
    }
}
