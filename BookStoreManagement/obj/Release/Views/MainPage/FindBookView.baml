   M S B A M L   `   `   `  ����   BookStoreManagement5    /BookStoreManagement.Views.MainPage.FindBookView   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null:md1http://materialdesigninxaml.net/winfx/xaml/themes  ^ ZCaliburn.Micro.Platform, Version=3.2.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  :d2http://schemas.microsoft.com/expression/blend/2008     MaterialDesignBackground  N� 
Background#  �   $��Regular"�$��14(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�.���  � ColumnDefinitions �� $��* ��� $
��Auto � � RowDefinitions �� $
��Auto ��� $��* �.+��� $��Tìm kiếm��$��2��  MaterialDesignCardGroupBox#���  $��16q����� .R��� $��8,0,0,0q�$��Center=� % !MaterialDesignSubheadingTextBlock#��[ ���� .���  �� $��* ��� $
��Auto ��� $
��Auto �.+��� )  #MaterialDesignThemes.Wpf.HintAssist   Hint$# Nhập từ khóa tìm kiếm�� % !MaterialDesignFloatingHintTextBox#��[ ���� *	SearchKey+ �� Mode$ OneWayToSource=� �� UpdateSourceTrigger$ PropertyChanged=�.���� -    ��Name$ SearchBy��$	��150��$	��8 0q�$��Bottom=� & "MaterialDesignFloatingHintComboBox#��[ $��1��$ 	Tìm theo��	 �� SelectedIndex	 �� *
SearchBy+$ TwoWay=�$ PropertyChanged=�.@��� .��
Tất cả�� .��	Mã sách�� .��
Tên Sách�� .��
Tác giả��  $  MaterialDesignRaisedAccentButton#��[ $	��100��  Caliburn.Micro.Message
   Attach$
 Search()��$��Bottom=�$��40��$��2��$��Right=�$��10q�.��Tìm#  MaterialDesignThemes.Wpf.Card  $
��10 0q�$��Stretch=�$��Stretch=�$��1��.���� -    ��Name$ ListBook��
������  �� SelectionMode$ Single=�$��Disabled=����� *	ListBooks+$ OneWay=�$ PropertyChanged=� �� SelectedItem �� *SelectedBook+����  �� 
TargetType" ��.���  �� Property � �� �� Value �� " ��.���  � ��
 ���� ��  � ��$ 8q����� .R�� ���� .R�%  MaterialDesignThemes.Wpf.Badged  
������    BadgeColorZoneMode$ Accent=�  ControlzEx.BadgedEx   Badge �� *Left+.���� $	��110��$	��160��.+��� $��Center=�$��Center=�$	��100��$	��140������ *Image+�� $
��Wrap=�$��12(�$��5q����� *Title+  $��1��$	��200��$��Center=�$��1��y��� *RighPaneVisibility+$ OneWay=�.���� $��Center=�$��15q�$��Center=�.+��� ����  �� ElementName$ ListBook�� �� Path$ SelectedItem.Image��� $
��Wrap=�$��5q����� $ ListBook��$ SelectedItem.Title��� $
��Wrap=�$��5q��� $�Tác giả:�� �� ��� $ ListBook��$ SelectedItem.Author��� $
��Wrap=�$��5q��� $�Nhà xuất bản:�� �� ��� $ ListBook��$ SelectedItem.Publisher��� $
��Wrap=�$��5q��� $�Còn :�� �� ��� $ ListBook��$ SelectedItem.Left��� $
��Wrap=�$��5q��� $�
Vị trí:�� �� ��� $ ListBook��$ SelectedItem.Location�