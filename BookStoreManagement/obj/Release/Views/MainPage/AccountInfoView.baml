   M S B A M L   `   `   `  ����   BookStoreManagement8    2BookStoreManagement.Views.MainPage.AccountInfoView   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ^ ZCaliburn.Micro.Platform, Version=3.2.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes     MaterialDesignBackground  N� 
Background#  �   $��Regular"�$��14(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=� N� Title$ AccountInfoView��.���  � RowDefinitions �� $	��300 ��� $
��Auto ��� $
��Auto �.+�#  MaterialDesignThemes.Wpf.Card  $��0��.���  �� $	��280 � � ColumnDefinitions �� $
��Auto ��� .+��� $	��225��$	��200��$��UniformToFill=�$��10q����� *DisplayAccount.Image+��  , (MaterialDesignFloatingActionAccentButton#��[ $��Bottom=�$��Right=�$��0 0 16 0q�.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$ ImageAdd=��� $��1�� �� Orientation$ 
Horizontal=�.+�  $��Center=�$��10q�.���� $��Basic infomation��.���  �� �� �� �� �� ��  �� $
��Auto ��� $	��150 �.+��� $
��Wrap=�$��5q�$��Id��$��0���� $
��Wrap=�$��5q�$��	Họ tên��$��1���� $
��Wrap=�$��5q�$��	User name��$��2���� $
��Wrap=�$��5q�$��Email��$��3���� $
��Wrap=�$��5q�$��Chức vụ��$��4���� $��0��$��1��$��5q����� *DisplayAccount.Id+.���� $��1��$��1��$��5q����� *DisplayAccount.Name+.���� $��2��$��1��$��5q����� *DisplayAccount.UserName+.���� $��3��$��1��$��5q����� *DisplayAccount.Email+.���� $��4��$��1��$��5q����� *DisplayAccount.Type+.���� -   $
��Edit��$��5��$��0��$��2��$	��100��$��Center=� $  MaterialDesignFlatAccentBgButton#��[ .��Sửa  $��Center=�$��10q�.���� $��password��.���  �� �� �� �� ��  �� $
��Auto ��� $	��150 �.+��� $
��Wrap=�$��5q�$��Mật khẩu hiện tại��$��0���� $
��Wrap=�$��5q�$��Mật khẩu mới��$��1���� $
��Wrap=�$��5q�$��Xác nhận mật khẩu��$��2��G� -    G�Name$ CurrentPassword��$��0��$��1��$��5q�  Caliburn.Micro.Message	   Attach$	 SetPassword($source,0)��G� -   $ NewPassword��$��1��$��1��$��5q�$	 SetPassword($source,1)��G� -   $ ConfirmPassword��$��2��$��1��$��5q�$	 SetPassword($source,2)���� -   
 ��Name$
 Confirm��$��3��$��0��$��5q�$	��100��$��Center=�#��[ $��2��.��Xác nhận  $��1��.���� .+��� $��Tìm kiếm��  MaterialDesignCardGroupBox#���  $��16q����� .R��� $��8,0,0,0q�$��Center=� % !MaterialDesignSubheadingTextBlock#��[ ���� .���  �� $��* ��� $
��Auto ��� $
��Auto �.+��� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$# Nhập từ khóa tìm kiếm�� % !MaterialDesignFloatingHintTextBox#��[ ���� *	SearchKey+ �� Mode$ OneWayToSource=� �� UpdateSourceTrigger$ PropertyChanged=�.���� -    ��Name$ SearchBy��$	��150��$	��8 0q�$��Bottom=� & "MaterialDesignFloatingHintComboBox#��[ $��1��$ 	Tìm theo�� �� SelectedIndex �� *
SearchBy+$ TwoWay=�$ PropertyChanged=�.@��� .��
Tất cả�� .��	Họ tên�� .��	User name�� .��Email�� .��Chức vụ��  $  MaterialDesignRaisedAccentButton#��[ $	��100��$	 Search()��$��Bottom=�$��40��$��2��$��Right=�$��10q�.��Tìm  $��1��$��16q�.���  �� $��* ��� $
��Auto � �� $
��Auto ��� $
��Auto �.+��� -    ��Name$ ListAccount��$��0��$��0��$��2��  MaterialDesignListView#���  ���� *ListAccount+ �� SelectedItem �� *SelectedAccount+$ PropertyChanged=�$ OneWayToSource=� �� View �� .P��� $��Id�� �� DisplayMemberBinding �� *Id+�� $��	Họ tên�� �� *Name+�� $��	User name�� �� *
UserName+�� $��Email�� �� *Email+�� $��Chức vụ�� �� *Type+�� -   $��Create��$��0��$��1��$��10q�$	��100��$��Center=�#��[ .��Tạo mới�� -	   $��Delete��$��1��$��1��$��10q�$	��100��$��Center=�#��[ .��Xóa