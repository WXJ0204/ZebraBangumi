   M S B A M L   `   `   `  ���� G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  )clr-namespace:MetroExtrasMetroExtras  ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null{Sclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf#MaterialDesignThemes.Wpf.Converters A%clr-namespace:ZebraBangumi.PropertiesZebraBangumi.Properties      ZebraBangumi.Slide6   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ,localclr-namespace:ZebraBangumi     )mexclr-namespace:MetroExtras     ;
exConverts$clr-namespace:MetroExtras.Converters     j
convertersSclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf     <
Properties%clr-namespace:ZebraBangumi.Properties     ;mdt1http://materialdesigninxaml.net/winfx/xaml/themes  !   MetroExtras.MetroExtraColor    	MainBrush
  ����   	DarkBrush ��  �� RelativeSource ��  �� Mode$
 Self=� �� Path$% (mex:MetroExtraColor.MainBrush)�-   'MetroExtras.Converters.ExColorConverter   Dark �� 	Converter# Z  �� ConverterParameter$ 0;0.2��   
LightBrush ��  �� $
 Self=�$% (mex:MetroExtraColor.MainBrush)�	   Light# Z	 $ 0;0.4��
 � 	Resources
  �� MergedDictionaries �� Source �� 
TargetType   MetroFlatButton �� BasedOn �� Property �� Value �� AncestorType �� Triggers P� Property P� Value+  %MaterialDesignThemes.Wpf.ShadowAssist9  3MaterialDesignThemes.Wpf.Converters.ShadowConverter   Instance��  �� $ TransitionsUseOnly.xaml?��� $I Cpack://application:,,,/MahApps.Metro;component/Styles/Controls.xaml?��� $Q Kpack://application:,,,/MahApps.Metro;component/Styles/Controls.Buttons.xaml?�%�  '��       7   '�� �    '�� �    �� " ��8   .���  � ��$ Center=���  � ��$ 0q���  � ��$ 14(���  � �� ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.MainBrush)���  �@�Cursor$
 Hand����  � �� ��  �� $
 Self=�$ BorderBrush���  � �� Z� ��  � ��$ 0q� P�  �@J�IsMouseOver . . ���  � �� ��  �� $ FindAncestor=�$ UserControlL�$&  (mex:MetroExtraColor.LightBrush)���  � �� Z� P�  � �� . . ���  � �� ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.DarkBrush)���  � �� Z� �� " ��.���  � ��$ 28(���  � �� ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.DarkBrush)���  � ��$
 Bold"���  �@ ShadowDepth$ Depth1=���  �@J�Effect ��  �� $
 Self=�$$ (mdt:ShadowAssist.ShadowDepth)�# Z ��  �@ Darken .  �� " ��.���  � �� ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.MainBrush)���  � ��$ 14(���  � ��$ Center=�.��� -   $
��root��$	��600��$
��1074��.+��� -   $��settings��$
��Left=�$	��Top=�$��	80,40,0,0q�.+��� $��设置��$��0,0,0,10q��� $T��N图表保存放缩倍率（倍率过高可能导致软件运行明显卡顿）��$��18(�$
��40,2q���    MaterialDesignDiscreteSlider#��[  � ToolTip$" MaterialDesignDiscreteSlider��$
��40,2q� �� Orientation$ 
Horizontal=� � Minimum$ 1Q� � Maximum$ 8Q� � Value �� $ PictureSaveMagnification�&   ZebraBangumi.Properties.Settings   Default �� Source# Z �� $��80,280,40,40q�$��Stretch=�.+��� $��关于��$��0,0,0,5q��� $!��软件名称：ZebraBangumi��$
��40,2q�$
��Left=��� $,��&开发团队：2018 Black Leo STAFF™��$��
40,2,40,20q�$
��Left=���  �� Orientation$ 
Horizontal=�$
��40,2q�$
��Left=�.+��� $��当前软件版本：���� ���� $ SoftwareVersion�# Z �� $ 
Horizontal=�$
��40,2q�$
��Left=�.+��� $��当前数据库版本：���� ���� $ DatabaseVersion�# Z �� $ 
Horizontal=�$��
40,2,40,20q�$
��Left=�.+��� -   $��txbDatabaseHasUpdate��$��数据库有更新���� -    ��Name$ btnDbUpdate��$��更新数据库��$
��30,0q��� $ 
Horizontal=�$y�Visible=�$
��40,2q�$
��Left=�.+��� $��许可证：���� -   $��	txbAccess��$��	未激活���� -   $ btnRegister��$��产品激活��$
��30,0q��� -   $��
seriesCode��$ 
Horizontal=�$y�Visible=�$
��40,2q�$
��Left=�.+��� $��产品密钥：���� ���� $ Series�# Z 