using Prism.Mvvm;
using restaurant.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace restaurant.ViewModels
{
    class DishMenuItemViewModel : BindableBase
    {
        public Dish Dish { get; set; }
        private bool isSelected;

        public bool IsSelected
        {
            get { return isSelected; }
            set
            {
                isSelected = value;
                this.RaisePropertyChanged("IsSelected");
            }
        }


    }
}
