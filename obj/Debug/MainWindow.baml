   M S B A M L   `   `   `  ����E  Arestaurant, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:restaurant
restaurant  5   	       restaurant.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:restaurant     5   	   $	��600��5   L   $
��1000��6Y     � WindowStartupLocation$  CenterScreen=�5	       � Title 5      �� *Restaurant.Name+ �� StringFormat$ {0}-在线订餐��.��5
      �� 
��� ���$��3q�6"    �� CornerRadius$ 6��66   
��� ���._�5   
   � -   5         �Name$
 Root��5      $��4q�6    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $��* �6    �� 5      $
��Auto �6    .+�5      �� 
��� ���$��1q�6*   $ 6��6>    �� Padding$ 4q�6O   ._�5      �� .+�5      ��  �� Orientation$ 
Horizontal=�6!    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      	   Color$	 	LightGray��6/   .+�5      �� $��欢迎光临-��6$   $��60(�61   $��LiShu)�6?   �� 5      $��60(�6E   $��LiShu)�6S   ��6$   �� *Restaurant.Name+6S   5      �� 5      $ 
Horizontal=�6!   .+�5      �� $��小店地址：��6$   $��24(�61   $��LiShu)�6?   �� 5      $��24(�6H   $��LiShu)�6V   ��6$   �� *Restaurant.Address+6V   5      �� 5      $ 
Horizontal=�6!   .+�5      �� $��订餐电话：��6$   $��24(�61   $��LiShu)�6?   �� 5       $��24(�6D   $��LiShu)�6R   ��6$   �� *Restaurant.Tel+6R   5!      5"      5#      &   System.Windows.Controls.DataGrid  5$      
   AutoGenerateColumns
 .     GridLinesVisibility$
 None=�63      CanUserDeleteRows .     CanUserAddRows .  $	��0,5q�5%   &   $��1��63   $��16(�6@   ��6N   �� *
DishMenu+   Columns 5&      0  *System.Windows.Controls.DataGridTextColumn  5'      ,  &System.Windows.Controls.DataGridColumn   Header$ 菜品��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$	 120 6S   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *	Dish.Name+6S     5(      $ 种类��6)   $	 120 6W    65   �� *Dish.Categoty+6W     5)      $ 点评��6)   $	 120 6V    65   �� *Dish.Comment+6V     5*      $ 推荐分数��6)   $	 120 6V    67   �� *
Dish.Score+6V   4  .System.Windows.Controls.DataGridTemplateColumn  5+      $ 选中��6-      SortMemberPath$ 
IsSelected��69   $	 120 6U      CellTemplate 5,      �� 5-      .R�5.   "   �� $��Center=�5/   #   $��Center=�6>    d� 	IsChecked 5.   +   ��  �� Path$ 
IsSelected� �� UpdateSourceTrigger$ PropertyChanged=���50   #   �� $' !DataContext.SelectMenuItemCommand� �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType"  51      53      55      �� 56      $ 
Horizontal=�6   $��Right=�62   $��2��6N   .+�57      �� $��共计��6   $��Center=�6&   �� 58       �� 
IsReadOnly .  �� TextAlignment$ Center=�6,   $	��120��6C   $	��4,0q�6f   ��6O   �� *Count+6f   �� 59      $��Order��6   $��24��6)   $	��120��65   ��6A   �� *PlaceOrderCommand+5:      5<      5>      5?      