   M S B A M L   `   `   `  ����G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  5      )clr-namespace:MetroExtrasMetroExtras  5      ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null{Sclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf#MaterialDesignThemes.Wpf.Converters 5	      A%clr-namespace:ZebraBangumi.PropertiesZebraBangumi.Properties  5
          ZebraBangumi.Slide6   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:ZebraBangumi     5      )mexclr-namespace:MetroExtras     5      ;
exConverts$clr-namespace:MetroExtras.Converters     5      j
convertersSclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf     5	      <
Properties%clr-namespace:ZebraBangumi.Properties     5
      ;mdt1http://materialdesigninxaml.net/winfx/xaml/themes  5      !   MetroExtras.MetroExtraColor    	MainBrush
  ����   	DarkBrush 5      ��  �� RelativeSource ��  �� Mode$
 Self=� �� Path$% (mex:MetroExtraColor.MainBrush)�-   'MetroExtras.Converters.ExColorConverter   Dark �� 	Converter# Z  �� ConverterParameter$ 0;0.2��   
LightBrush 5      ��  �� $
 Self=�$% (mex:MetroExtraColor.MainBrush)�	   Light# Z	 $ 0;0.4��
 � 	Resources
 5       �� MergedDictionaries �� Source �� 
TargetType   MetroFlatButton �� BasedOn �� Property �� Value �� AncestorType �� Triggers P� Property P� Value+  %MaterialDesignThemes.Wpf.ShadowAssist9  3MaterialDesignThemes.Wpf.Converters.ShadowConverter   Instance�� 5   
    5      �� 5      $ TransitionsUseOnly.xaml?�6%   �� 5      $I Cpack://application:,,,/MahApps.Metro;component/Styles/Controls.xaml?�6%   �� 5      $Q Kpack://application:,,,/MahApps.Metro;component/Styles/Controls.Buttons.xaml?�6%   %*  '��       7   '�� r    '��      �� 5      " ��6   8   .�5      ��  � ��$ Center=�66   �� 5       � ��$ 0q�64   �� 5       � ��$ 14(�6-   �� 5       � �� 60   ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.MainBrush)��� 5       �@�Cursor$
 Hand��6+   �� 5       � �� 6/   ��  �� $
 Self=�$ BorderBrush��� 5       � �� 6/   Z� �� 5        � ��$ 0q�6,    5!      P� 5"       �@J�IsMouseOver . . �5#      ��  � �� 67   ��  �� $ FindAncestor=�$ UserControlL�$&  (mex:MetroExtraColor.LightBrush)��� 5$       � �� 67   Z� 5%      P� 5&       � �� . . �5'      ��  � �� 67   ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.DarkBrush)��� 5(       � �� 67   Z� 5)      5+      �� 5,      " ��6   .�5-      ��  � ��$ 28(�6-   �� 5.       � �� 6/   ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.DarkBrush)��� 5/       � ��$
 Bold"�6/   �� 50       �@ ShadowDepth$ Depth1=�6A   �� 51       �@J�Effect 6+   ��  �� $
 Self=�$$ (mdt:ShadowAssist.ShadowDepth)�# Z �� 52       �@ Darken .  6<   53      �� 54      " ��6   .�55      ��  � �� 6/   ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.MainBrush)��� 56       � ��$ 14(�6-   �� 57       � ��$ Center=�66   58      59      .��5;      � -   5        $
��root��5;      $	��600��6   $
��1074��6$   .+�5<   
   �� -   5        $��settings��5<      $
��Left=�6%   $	��Top=�6@   $��	80,40,0,0q�6X   .+�5=      �� $��设置��6   $��0,0,0,10q�6!   �� 5>      $T��N图表保存放缩倍率（倍率过高可能导致软件运行明显卡顿）��6   $��18(�6:   $
��40,2q�6H   �� 5?         MaterialDesignDiscreteSlider#��[ 6    � ToolTip$" MaterialDesignDiscreteSlider��5@      $
��40,2q�5A       �� Orientation$ 
Horizontal=�5B       � Minimum$ 1Q�6.    � Maximum$ 8Q�6:    � Value 6F   �� $ PictureSaveMagnification�&   ZebraBangumi.Properties.Settings   Default �� Source# Z 5C      �� 5D   
   $��80,280,40,40q�6   $��Stretch=�6+   .+�5E      �� $��关于��6   $��0,0,0,5q�6!   �� 5F      $!��软件名称：ZebraBangumi��6   $
��40,2q�61   $
��Left=�6?   �� 5G      $,��&开发团队：2018 Black Leo STAFF™��6   $��
40,2,40,20q�6:   $
��Left=�6N   �� 5H       �� Orientation$ 
Horizontal=�6   $
��40,2q�62   $
��Left=�6@   .+�5I      �� $��当前软件版本：��6   �� 5J      ��6   �� $ SoftwareVersion�# Z 5K      �� 5L      $ 
Horizontal=�6   $
��40,2q�62   $
��Left=�6@   .+�5M      �� $��当前数据库版本：��6   �� 5N      ��6   �� $ DatabaseVersion�# Z 5O      �� 5P      $ 
Horizontal=�6   $��
40,2,40,20q�62   $
��Left=�6G   .+�5Q      �� -   5        $��txbDatabaseHasUpdate��5Q      $��数据库有更新��68   �� 5R      -   5         ��Name$ btnDbUpdate��5R      $��更新数据库��6.   $
��30,0q�6X   5S      �� 5T      $ 
Horizontal=�6   $y�Visible=�62   $
��40,2q�6G   $
��Left=�6U   .+�5U      �� $��许可证：��6   �� 5V      -   5        $��	txbAccess��5V      $��	未激活��6-   �� 5W      -   5        $ btnRegister��5W      $��产品激活��6.   $
��30,0q�6W   5X      �� 5Y      -   5        $��
seriesCode��5Y      $ 
Horizontal=�6+   $y�Visible=�6D   $
��40,2q�6Y   $
��Left=�6g   .+�5Z      �� $��产品密钥：��6   �� 5[      ��6   �� $ Series�# Z 5\      5]      5^      5_      