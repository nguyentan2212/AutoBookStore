   M S B A M L   `   `   `  ����  BookStoreManagement5    /BookStoreManagement.Views.MainPage.FindBookView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes  5      ^ ZCaliburn.Micro.Platform, Version=3.2.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  5
      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      :d2http://schemas.microsoft.com/expression/blend/2008  5         MaterialDesignBackground  N� 
Background#  �   5      $��Regular"�5      $��14(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5	      .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   #  MaterialDesignThemes.Wpf.Card  $��10q�6   $��2��6   .��5      �  5      �� 5      $��* �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5       $
��Auto �6'   .+�5"      �� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$# Nhập từ khóa tìm kiếm��6    % !MaterialDesignFloatingHintTextBox#��[ 5$      ��5#      �� *	SearchKey+ �� Mode$ OneWayToSource=� �� UpdateSourceTrigger$ PropertyChanged=�.��5$   U   5%      �� 5&      -   5         ��Name$ SearchBy��5'      $	��150��5&      $	��8 0q�5)      $��Bottom=�5*       & "MaterialDesignFloatingHintComboBox#��[ 5+      $��1��5,      $ 	Tìm theo��5-      	 �� SelectedIndex	 5(      �� *
SearchBy+$ TwoWay=�$ PropertyChanged=�.@�5.      �� .��6#   
Tất cả50      �� 51      .��6#   	Mã sách53      �� 54      .��6#   
Tên Sách56      �� 57      .��6#   
Tác giả59      5:      �� 5<       $  MaterialDesignRaisedAccentButton#��[ 6   
 �� 	IsDefault
 . $	��100��5=        Caliburn.Micro.Message   Attach$ Search()��5>      $��Bottom=�5?      $��40��5@      $��2��5A      $��Right=�5B      $��10q�5C      .��6%   Tìm5E      %  MaterialDesignThemes.Wpf.Badged  5G      $��3��6   $��10q�6,     ControlzEx.BadgedEx   Badge$ 2��5H      $��Center=�6   $��Center=�69   .��5I      �� -   5         ��Name$ OpenBill��5I   W   #��[ 6   .��5J      ��  �� Orientation$ 
Horizontal=�6%   .+�5K      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ TrolleyOutline=�6*   �� 5L      $	��5,0q�6(   Giỏ hàng6?   5M      5N      5O      5P      5Q        5S   
   $��10q�6   $��Stretch=�5T      $��Stretch=�5U      $��1��5V      .��5W      � .+�5X      �� -   5         ��Name$ ListBook��5Y      
������  �� SelectionMode$ Single=�5[      $��Disabled=�5]      ��5X      �� *DisplayListBooks+$ OneWay=�$ PropertyChanged=� �� SelectedItem 5\      �� *SelectedBook+��5^      �� 5_       �� 
TargetType" ��6    .�5`      ��  �� Property � �� �� Value 5a   "   �� 5b   &   " ��6,   .�5c   *   ��  � ��
 ���� 5d   -   �� 5e   *    � ��$ 8q�5f   -   5g   '   5i      5j      ��5l      �� 5m      .R�5n      � 5o      ��5q      �� 5r      .R�5s      � $	��150��6#   $	��250��6/    5t   "   �� 5u   &   $��* �64   �� 5v   &   $
��Auto �64   �� 5w   &   $
��Auto �64   �� 5x   &   $
��Auto �64   �� 5y   &   $
��Auto �64   �� 5z   &   $
��Auto �64   .+�5}   "   �� $��0��6A   $��Center=�5~   (   $��Center=�5   (   $��80��5�   (   $��80��5�   (   ��5}   (   �� *Image+5�   (   �� 5�   "   $
��Wrap=�6,   $��1��6@   $��12(�5�   ,   $��5q�5�   ,   ��5�   ,   �� *Title+5�   #   �� 5�   "   $
��Wrap=�6,   $��2��6@   $��12(�5�   ,   $��5q�5�   ,   ��5�   ,   �� *Author+5�   #   �� 5�   "   $
��Wrap=�6,   $��3��6@   $��12(�5�   ,   $��5q�5�   ,   ��5�   ,   �� *Price+5�   #   �� 5�   "   $
��Wrap=�6,   $��4��6@   $��12(�5�   ,   $��5q�5�   ,   ��5�   ,   �� *Left+5�   #   �� 5�   "    ��Name$ Id��6,   $y�Hidden=�6L   ��68   �� *Id+6L   �� 5�   "   $��80��6)   #��[ 64   $9 3[Event Click] = [Action AddToTrolley($DataContext)]��5�   )   $��5��6r   $��Center=�5�   )   $��Bottom=�6F   .��5�   &     $ TrolleyArrowDown=�62   5�   #   5�      5�      5�      �� 5�      $ 
Horizontal=�6   $��Bottom=�66   $��Center=�6Q   .+�5�      �� -   5        $ 
GoPrevious��5�       0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 5�      $��10q�5�      $��28��6)   $��28��65   .��5�        $  ArrowLeftDropCircleOutline=�6&   $��Center=�5�   &   $��Center=�6A   $��24��5�   &   $��24��62   5�      �� 5�      -   5        $ 	PageIndex��5�   U   #��[ 5�      $��Center=�5�      $��Center=�68   $��10q�5�      $��28��6)   $��28��65   .��6@   15�      �� 5�      -   5        $ GoNext��5�      #��[ 5�      $��10q�5�      $��28��6)   $��28��65   .��5�        $! ArrowRightDropCircleOutline=�6&   $��Center=�5�   &   $��Center=�6A   $��24��5�   &   $��24��62   5�      5�      5�      5�        5�   
   $��1��6   $	��250��5�      $��Center=�5�      $��1��5�      y�5�      �� *RighPaneVisibility+$ OneWay=�.��5�      �� $��Center=�6   $��15q�5�      $��Center=�5�      .+�5�      �� ��6   ��  �� ElementName$ ListBook�� �� Path$ SelectedItem.Image��� 5�      $
��Wrap=�6   $��5q�5�      ��5�      �� $ ListBook��$ SelectedItem.Title��� 5�      $
��Wrap=�6   $��5q�5�      �� 5�   *   $�Tác giả:��6.    �� 5�   *   �6.   �� *SelectedBook.Author+5�      �� 5�      $
��Wrap=�6   $��5q�5�      �� 5�   *   $�Nhà xuất bản:��6.    �� 5�   *   �6.   �� *SelectedBook.Publisher+5�      �� 5�      $
��Wrap=�6   $��5q�5�      �� 5�   *   $�Còn :��6.    �� 5�   *   �6.   �� *SelectedBook.Amount+5�      �� 5�      $
��Wrap=�6   $��5q�5�      �� 5�   *   $�
Vị trí:��6.    �� 5�   *   �6.   �� *SelectedBook.Location+5�      5�      5�      5�      5�      