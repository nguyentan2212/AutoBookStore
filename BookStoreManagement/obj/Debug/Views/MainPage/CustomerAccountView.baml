   M S B A M L   `   `   `  ����  BookStoreManagement<    6BookStoreManagement.Views.MainPage.CustomerAccountView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ^ ZCaliburn.Micro.Platform, Version=3.2.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  5      U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes  5         MaterialDesignBackground  N� 
Background#  �   5      $��Regular"�5      $��14(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5	         TextRenderingMode$
 Auto=�5
       N� Title$ StaffAccountView��5      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��10q�6    ��5      �� 5      $
��Bold"�6   $��Center=�6.   Thông tin khách hàng6a   .��5      �  5      �� 5      $��* �6$   �� 5      $
��Auto �6$   .+�5"      �� $��5q�6    �� View 5#      �� 5$      .P�5%      �� $��Id��6-   �� 5&      $��	Họ tên��6-   �� 5'      $��Số điện thoại��6-   �� 5(      $��Email��6-   �� 5)      $��Cấp thành viên��6-   �� 5*      $"��Tổng số tiền mua hàng��6-   5+      5-      5.      5/      �� 50   
   $��1��6   $
��10 5q�6    ��51      �� 52      $
��Bold"�6   $��Center=�6.   Chi tiết mua hàng6^   .��54      �  55      �� 56      $
��Auto �6$   �� 57      $��* �6$   .+�5:      �� $��0��6    �� Orientation$ 
Horizontal=�6*   .+�5;      �� $��Bottom=�6    $
��Bold"�6;   $��5q�6M   Thống kê theo:6h   �� 5<      $��Bottom=�6     VirtualisedMetroComboBox#��[ 6:   .@�5=      ��  �� 
IsSelected . .��69   Số sách đã mua6I   �� 5>      .��6'   Số tiền đã trả67   5?      �� 5@      $��Bottom=�6    $
��Bold"�6;   $��5q�6M   Từ ngày:6b   (  "System.Windows.Controls.DatePicker  5A       ( $MaterialDesignFloatingHintDatePicker#��[ 6!   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Chọn ngày��5B   !   $��5q�5C   !   5D      �� 5E      $��Bottom=�6    $
��Bold"�6;   $��5q�6M   Đến ngày:6c     5F      #��[ 6!   $ Chọn ngày��5G   !   $��5q�5H   !   5I      5J      � 5K      $��1��6   5M      5N      5O      5P      5Q      