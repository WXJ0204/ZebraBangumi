   M S B A M L   `   `   `  ����G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  5      )clr-namespace:MetroExtrasMetroExtras  5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null{Sclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf#MaterialDesignThemes.Wpf.Converters 5      ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  5
      $    ZebraBangumi.NormalSelectBlock   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:ZebraBangumi     5      )mexclr-namespace:MetroExtras     5      j
convertersSclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf     5      ;mdt1http://materialdesigninxaml.net/winfx/xaml/themes  5	      4	exConvert$clr-namespace:MetroExtras.Converters  5
      !   MetroExtras.MetroExtraColor    	MainBrush
  ����   
LightBrush 5      ��  �� RelativeSource ��  �� Mode$
 Self=� �� Path$% (mex:MetroExtraColor.MainBrush)�-   'MetroExtras.Converters.ExColorConverter   Light �� 	Converter# Z  �� ConverterParameter$	 0.7�� J� 	CacheMode 5      &   System.Windows.Media.BitmapCache  5   
   	   RenderAtScale$	 1Q�6   
   EnableClearType
 .     SnapsToDevicePixels .  6@    � 	Resources 5       �� MergedDictionaries �� Source �� 
TargetType   ExBorderMetroToggleButton �� BasedOn �� Property �� Value�� 5   
    5      �� 5      $ BlockControlUseOnly.xaml?�6%   %�   'd�       7   �� 5      " d�6   8   .�5      ��  � ��$
 20,4q�6,   �� 5       � ��$ 15(�6-   �� 5       �@d�	IsChecked$
 TrueY�6.   �� 5       � ��$ 5q�6+   5      5      .��5      � -   5        $
��root��5      $	��200��6   .+�5    
   �� -   5         ��Name$
 back��5       
���   � J� Opacity$	 0.6Q�5"      �� 5#   
   -   5         ��Name$ cbTypeSelect��5#      $��20,15,20,15q�6)     ComboBox#��[ 6>   $��45��6`   .@�5$      �� $��番剧类型��6    �� 
IsSelected . 6*   �� 5%      $��放送方式��6   5&      �� 5'   
     
StrokeLine#��[ 6   $��15,70,15,15q�68   �� 5(   
   -   5        $��stkItems��5(       �� Orientation$ Vertical=�6%   $��15,80,15,15q�5)      5*      �� 5+   
   -   5        $��	lockBlock��5+      
�������$ 0Q�62   $y�Hidden=�6>   5,      5-      