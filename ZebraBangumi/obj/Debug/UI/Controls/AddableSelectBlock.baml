   M S B A M L   `   `   `  ����G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  5      )clr-namespace:MetroExtrasMetroExtras  5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null{Sclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf#MaterialDesignThemes.Wpf.Converters 5      ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  5
      %    ZebraBangumi.AddableSelectBlock   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:ZebraBangumi     5      )mexclr-namespace:MetroExtras     5      j
convertersSclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf     5      ;mdt1http://materialdesigninxaml.net/winfx/xaml/themes  5	      4	exConvert$clr-namespace:MetroExtras.Converters  5
      !   MetroExtras.MetroExtraColor    	MainBrush
  ����   
LightBrush 5      ��  �� RelativeSource ��  �� Mode$
 Self=� �� Path$% (mex:MetroExtraColor.MainBrush)�-   'MetroExtras.Converters.ExColorConverter   Light �� 	Converter# Z  �� ConverterParameter$	 0.7�� J� 	CacheMode 5      &   System.Windows.Media.BitmapCache  5   
   	   RenderAtScale$	 1Q�6   
   EnableClearType
 .     SnapsToDevicePixels .  6@    � 	Resources 5       �� MergedDictionaries �� Source   ExBorderMetroToggleButton �� BasedOn �� 
TargetType �� Property �� Value�� 5   
    5      �� 5      $ BlockControlUseOnly.xaml?�6%   %�   'd�       7   �� 5      8   " d�6I   .�5      ��  � ��$ 15(�6-   �� 5       � ��$
 25,5q�6,   �� 5       � ��$ 5q�6+   �� 5       �@d�	IsChecked$
 TrueY�6.   5      5      .��5      � $	��160��6   .+�5    
   �� -   5         ��Name$
 back��5       
���   � J� Opacity$	 0.6Q�5"      �� 5#   
   $��50��6   $��	15,10,0,0q�6!   $	��Top=�64   $
��Left=�6L    �� Orientation$ 
Horizontal=�6g   .+�5$      �� -   5        $��
cbMainType��5$      $��5q�6)     ComboBox#��[ 64   $	��150��6V   $��Stretch=�6b   .@�5%      �� $��分类标签��6    �� 
IsSelected . 6.   �� 5&      $
��CAST��6   �� 5'      $��制作公司��6   5(      �� 5)      -   5        $��cbSecondType��5)      $��5q�6+   #��[ 66   $	��150��6X   $��Stretch=�6d   $y�Hidden=�6�   $ 0Q�6�   .@�5*      �� $��全部��6    . 6,   �� 5+      $��女性��6   �� 5,      $��男性��6   5-      5.      �� 5/   
   $��50��6   $��	0,10,15,0q�6!   $	��Top=�64   $��Right=�6L   $ 
Horizontal=�6h   .+�50         MetroExtras.SearchBox  -   5          Name$ 	searchBox��50         MetroExtras.SearchBox   DoSearch$ SearchBox_DoSearch��6Z   $��5q�6/   $	��180��6:   $��0q�6F   6Z   �� 51      -   5        $��cbRangeType��51      $��5q�6*   #��[ 65   $	��150��6W   $��Stretch=�6c   .@�52      �� $��	自定义��6   �� 53      $
��Top5��6    . 6.   54      55      �� 56   
     
StrokeLine#��[ 6   $��15,65,15,15q�68   �� 57   
   $��
15,75,15,5q�6   $��Hidden=�6+   .��58      � -   5        $��wpItems��58      59      �� 5:   
   -   5        $��	lockBlock��5:      
�������$ 0Q�62   $y�Hidden=�6>   5;      5<      