   M S B A M L   `   `   `  ���� G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  )clr-namespace:MetroExtrasMetroExtras  V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null{Sclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf#MaterialDesignThemes.Wpf.Converters ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  %    ZebraBangumi.AddableSelectBlock   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ,localclr-namespace:ZebraBangumi     )mexclr-namespace:MetroExtras     j
convertersSclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf     ;mdt1http://materialdesigninxaml.net/winfx/xaml/themes  4	exConvert$clr-namespace:MetroExtras.Converters  !   MetroExtras.MetroExtraColor    	MainBrush
  ����   
LightBrush ��  �� RelativeSource ��  �� Mode$
 Self=� �� Path$% (mex:MetroExtraColor.MainBrush)�-   'MetroExtras.Converters.ExColorConverter   Light �� 	Converter# Z  �� ConverterParameter$	 0.7�� J� 	CacheMode &   System.Windows.Media.BitmapCache  	   RenderAtScale$	 1Q�
   EnableClearType
 .     SnapsToDevicePixels .   � 	Resources  �� MergedDictionaries �� Source   ExBorderMetroToggleButton �� BasedOn �� 
TargetType �� Property �� Value��  �� $ BlockControlUseOnly.xaml?�%�   'd�       7   �� 8   " d�.���  � ��$ 15(���  � ��$
 25,5q���  � ��$ 5q���  �@d�	IsChecked$
 TrueY�.��� $	��160��.+��� -    ��Name$
 back��
���   � J� Opacity$	 0.6Q��� $��50��$��	15,10,0,0q�$	��Top=�$
��Left=� �� Orientation$ 
Horizontal=�.+��� -   $��
cbMainType��$��5q�  ComboBox#��[ $	��150��$��Stretch=�.@��� $��分类标签�� �� 
IsSelected . �� $
��CAST���� $��制作公司���� -   $��cbSecondType��$��5q�#��[ $	��150��$��Stretch=�$y�Hidden=�$ 0Q�.@��� $��全部�� . �� $��女性���� $��男性���� $��50��$��	0,10,15,0q�$	��Top=�$��Right=�$ 
Horizontal=�.+�   MetroExtras.SearchBox  -     Name$ 	searchBox��   MetroExtras.SearchBox   DoSearch$ SearchBox_DoSearch��$��5q�$	��180��$��0q��� -   $��cbRangeType��$��5q�#��[ $	��150��$��Stretch=�.@��� $��	自定义���� $
��Top5�� . ��   
StrokeLine#��[ $��15,65,15,15q��� $��
15,75,15,5q�$��Hidden=�.��� -   $��wpItems���� -   $��	lockBlock��
�������$ 0Q�$y�Hidden=�