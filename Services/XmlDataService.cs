using restaurant.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace restaurant.Services
{
    class XmlDataService : IDataService
    {
        public List<Dish> GetAllDishes()
        {
            List<Dish> dishList = new List<Dish>();
            string xmlFileName = System.IO.Path.Combine(Environment.CurrentDirectory, @"Data\Data.xml");
            XDocument xDoc = XDocument.Load(xmlFileName);
            //使用 XDocument 类的 Descendants 方法来选取 XML 文档中所有的 <Dish> 元素。
            var dishes = xDoc.Descendants("Dish");
            foreach (var d in dishes)
            {
                Dish dish = new Dish();
                dish.Name = d.Element("Name").Value;
                dish.Categoty = d.Element("Category").Value;
                dish.Comment = d.Element("Comment").Value;
                dish.Score = double.Parse(d.Element("Score").Value);
                dishList.Add(dish);
            }
            return dishList;
        }
    }
}
