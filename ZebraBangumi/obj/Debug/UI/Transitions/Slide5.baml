   M S B A M L   `   `   `  ����G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  5      )clr-namespace:MetroExtrasMetroExtras  5      H DMahApps.Metro, Version=1.6.5.1, Culture=neutral, PublicKeyToken=nullV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5          ZebraBangumi.Slide5   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:ZebraBangumi     5      )mexclr-namespace:MetroExtras     5      PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      !   MetroExtras.MetroExtraColor    	MainBrush
  � � � � 	Resources 5       �� MergedDictionaries �� Source �� 
TargetType   MetroFlatButton �� BasedOn �� Property �� Value �� RelativeSource	 �� Mode
 �� AncestorType �� Path   MetroExtras.Thumbnail�� 5   
    5      �� 5      $ TransitionsUseOnly.xaml?�6%   �� 5      $I Cpack://application:,,,/MahApps.Metro;component/Styles/Controls.xaml?�6%   �� 5      $Q Kpack://application:,,,/MahApps.Metro;component/Styles/Controls.Buttons.xaml?�6%   %�  '��       7   '      �� 5      " ��6   8   .�5      ��  � ��$ Center=�66   �� 5       � ��$ 2q�64   �� 5       � ��$ 12(�6-   �� 5       � �� 60   ��  �� $	 FindAncestor=�$
 UserControlL�$% (mex:MetroExtraColor.MainBrush)��� 5       � �� 6/   ��  �� $
	 Self=�$ BorderBrush��� 5       � ��
 �����6/   �� 5       � ��$ 20(�6-   �� 5       � ��$ Normal"�6/   �� 5       � ��$ Stretch=�66   �� 5       � ��$
 15,0q�6+   5      �� 5       "  6   .�5!      ��  � ��$ 0,0,0,20q�6+   �� 5"       � �� 60   ��  �� $	 FindAncestor=�$
 UserControlL�$% (mex:MetroExtraColor.MainBrush)�5#      5$      .��5&      � -   5        $
��root��5&      $	��600��6   $
��1074��6$    � ColumnDefinitions 5'   
   �� 5(      $
��Auto �6   �� 5)      $
��Auto �6   �� 5*       � RowDefinitions 5,   
   �� 5-      �� 5.      $
��Auto �6   .+�50   
   ?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  $��0��6�   $��2��6�   C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase   OpeningEffect 6.   D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension     Kind$ SlideInFromLeft=�   Duration$ 0:0:0.5X�.��51      �� $��30,30,15,40q�6   $��Hidden=�60   $��2��6U   .��52      �� -   5        $��spThumbnails��52       �� Orientation$ Vertical=�61   $	��160��6H   53      54      55        57   
   $��1��6�   $��2��6�    6.     $ SlideInFromLeft=�$ 0:0:0.5X�.��58      �� $��2��6   $��Stretch=�59      $��	0,20,0,30q�5;      ��5:      ��  �� $	 FindAncestor=�$
 UserControlL�$% (mex:MetroExtraColor.MainBrush)�5;      5<        5>   
   $��2��6�   $��0��6�    6.     $ ExpandIn=�$ 0:0:0.5X�.��5?      �� -   5        $��pictureShow��5?      $��2q�5@      $	��Top=�5B      $��Stretch=�5C      $	��450��5D      $��30,30,30,30q�5E      ��5A      ��  �� $	 FindAncestor=�$
 UserControlL�$% (mex:MetroExtraColor.MainBrush)�._�5F      �� -   5        $��
imgViewing��5F      $��Center=�6*   $��Center=�6E   $��Uniform=�6b   5G      5H        5J   
   $��2��6�   $��1��6�    6.     $ SlideInFromRight=�$ 0:0:0.5X�.��5K      � -   5        $��stSaveToFile��5K      $��50��5L      $��
30,0,30,40q�5M       5N      �� 5O      $��1* �6'   �� 5P      $��1* �6'   �� 5Q      $��1* �6'   .+�5S      �� -   5        $��	btnDelete��5S      $��0��6*   $��删除当前页��6:   6J   �� 5T      -   5        $��
btnSavePng��5T      $��1��6+   $��保存当前页为PNG��6;   6O   �� 5U      -   5        $��
btnSavePDF��5U      $��2��6+   $��全部保存到PDF��6;   6N   5V      5W      5X      5Y      