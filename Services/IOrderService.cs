using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace restaurant.Services
{
    interface IOrderService
    {
        void PlaceOrder(List<string> dishes);
    }
}
