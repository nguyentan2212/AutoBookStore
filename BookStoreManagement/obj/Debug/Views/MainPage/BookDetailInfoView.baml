   M S B A M L   `   `   `  ����  BookStoreManagement;    5BookStoreManagement.Views.MainPage.BookDetailInfoView   5      H DMahApps.Metro, Version=1.6.5.1, Culture=neutral, PublicKeyToken=null9MahApp,http://metro.mahapps.com/winfx/xaml/controls  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      ^ ZCaliburn.Micro.Platform, Version=3.2.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  5      U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes  5         PrimaryHueDarkBrush#���   5      (  "MahApps.Metro.Controls.MetroWindow    NonActiveBorderBrush#  �   5        PrimaryHueMidBrush   WindowTitleBrush# �  5        MaterialDesignPaper#���  5	      $��Regular"�5
      $��14(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5       � WindowStartupLocation$ CenterScreen=�5       � Title$   ��5      $	��620��5      $
��1000��6"   .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  $��0��6   $��0��6$   $��2��64   $��0 0 0 10q�6H      Mode$ 
PrimaryMid=�5      .��5      �� $
��Bold"�6   $��Center=�6*    # MaterialDesignHeadlineTextBlock#��[ 5      Thông tin chi tiết5       5!      #  MaterialDesignThemes.Wpf.Card  5"   
   $��1��6   $��0��6   $��10q�6/   $��Stretch=�6;   .��5#      �  5$      �� 5%      $��* �6'   �� 5&      $��* �6'    5(      �� 5)      $
��Auto �6$   �� 5*      $
��Auto �6$   �� 5+      $
��Auto �6$   �� 5,      $
��Auto �6$   �� 5-      $��* �6$   .+�50      � $��0��6   $��0��6$   $��5q�64    51      �� 52      $
��Auto �6+   �� 53      $��* �6+   .+�55      �� $��Bottom=�6    $��0��6;   $
��Bold"�6K   $��5q�6]   	Id sách:57      �� 58        MaterialDesignTextBox#��[ 6   $��1��5:      $��5q�6.   ��59      �� *Id+5:   ;   5;      � 5=      $��0��6   $��1��6$   $��5q�64    5>      �� 5?      $
��Auto �6+   �� 5@      $��* �6+   .+�5B      �� $��Bottom=�6    $��0��6;   $
��Bold"�6K   $��5q�6]   Tên sách:5D      �� 5E      #��[ 6   $��1��5G      $��5q�6.   ��5F      �� *Title+5G   ;   5H      � 5J      $��1��6   $��0��6$   $��5q�64    5K      �� 5L      $
��Auto �6+   �� 5M      $��* �6+   .+�5O      �� $��Bottom=�6    $��0��6;   $
��Bold"�6K   $��5q�6]   Tác giả:5Q      �� 5R      #��[ 6   $��1��5T      $��5q�6.   ��5S      �� *Author+5T   ;   5U      � 5W      $��1��6   $��1��6$   $��5q�64    5X      �� 5Y      $
��Auto �6+   �� 5Z      $��* �6+   .+�5\      �� $��Bottom=�6    $��0��6;   $
��Bold"�6K   $��5q�6]   Nhà xuất bản:5^      �� 5_      #��[ 6   $��1��5a      $��5q�6.   ��5`      �� *	Publisher+5a   ;   5b      � 5d      $��2��6   $��0��6$   $��5q�64    5e      �� 5f      $
��Auto �6+   �� 5g      $��* �6+   .+�5i      �� $��Bottom=�6    $��0��6;   $
��Bold"�6K   $��5q�6]   
Giá bán:5k      �� 5l      #��[ 6   $��1��5n      $��5q�6.   ��5m      �� *Price+5n   ;   5o      �� 5p      $��3��6   $��0��6(   $��2��68   $��5q�6L   ��5q      �� 5r      $
��Bold"�6$   $��Center=�66   Lịch sử nhập sách6f   .��5t      �� 	 �� View	 5u      �� 5v      .P�5w   "   �� $��
Mã nhập��61   �� 5x   "   $��Ngày nhập��61   �� 5y   "   $��Người nhập��61   �� 5z   "   $��Số lượng��61   �� 5{   "   $��Giá nhập��61   �� 5|   "   $��Tổng giá��61   5}      5      5�      5�      5�      � 5�   
   $��1��6   $��1��6    5�      �� 5�      $
��Auto �6    �� 5�      $��* �6    .+�5�        $��0��6   $��10 50 10 10q�6#   $	��200��68   $	��300��6D   .��5�      � .+�5�      �� $	��150��65   $	��250��6A   ��6   �� *Image+6A   �� 5�       , (MaterialDesignFloatingActionAccentButton#��[ 6   $��Bottom=�5�      $��Right=�64   .��5�      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]
   Kind$
 ImageAdd=�6&   $��30��66   $��30��6A   5�      5�      5�      �� 5�      $��1��6   $��10q�6"   $��50��6.   $	��100��6:   $	��Top=�6F    $  MaterialDesignRaisedAccentButton#��[ 5�      .��6K   Cập nhật5�      5�      5�      5�      