   M S B A M L   `   `   `  ���� G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  $    ZebraBangumi.SeriesInputWindow   H DMahApps.Metro, Version=1.6.5.1, Culture=neutral, PublicKeyToken=null;Controls,http://metro.mahapps.com/winfx/xaml/controls  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:ZebraBangumi     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     AccentColorBrush(  "MahApps.Metro.Controls.MetroWindow    	GlowBrush#  �    � Title$ 产品注册�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�$	��600��$	��700�� � 	Resources  �� MergedDictionaries �� Source �� 
TargetType  AccentedSquareButtonStyle �� BasedOn<  6MaterialDesignThemes.Wpf.Transitions.TransitionerSlideC  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase	 �� Property
 �� Value;  5MaterialDesignThemes.Wpf.Transitions.TransitionEffect   Kind4  .MaterialDesignThemes.Wpf.Transitions.SlideWipe   	Direction��  �� $I Cpack://application:,,,/MahApps.Metro;component/Styles/Controls.xaml?��� $F @pack://application:,,,/MahApps.Metro;component/Styles/Fonts.xaml?��� $G Apack://application:,,,/MahApps.Metro;component/Styles/Colors.xaml?��� $M Gpack://application:,,,/MahApps.Metro;component/Styles/Accents/Blue.xaml?��� $R Lpack://application:,,,/MahApps.Metro;component/Styles/Accents/BaseLight.xaml?�%�   '��       7  '       �� " ��8   �� "  .��� 	 �@ OpeningEffect
   $ ExpandIn=��� 	 �@ ForwardWipe
   $
 Left=��� 	 �@ BackwardWipe
   $ Right=�.��� .+�7  1MaterialDesignThemes.Wpf.Transitions.Transitioner  -   $��transitioner�� �� SelectedIndex$ 0��$��
35,35,35,0q�$	��135��$	��Top=�.@�  .��� -   $��page1��.+��� $
��Wrap=�$��产品需要验证��$	��Top=�$��	10,20,0,0q�$
��Left=�$��28(��� $
��Wrap=�$	��Top=�$��
10,70,10,0q�$��14(�$��Stretch=�$����        您的产品尚未验证，如果您拥有产品密钥，请选择"验证产品"进行激活；您也可以对该产品进行试用，但部分功能将遭到限制。��  .��� -   $��page2��.+��� $
��Wrap=�$��输入您的产品密钥��$	��Top=�$��	10,20,0,0q�$
��Left=�$��28(��� -   $��tbSeriesCode�� �� TextWrapping$ NoWrap=�$	��Top=�$��
20,70,20,0q�$��14(�$��Stretch=� �� 	MaxLength$ 24��*  $MahApps.Metro.Controls.TextBoxHelper   	Watermark$ Series code here��   ClearTextButton .   .��� -   $��page3��.+��� $
��Wrap=�$��产品注册成功��$	��Top=�$��	10,20,0,0q�$
��Left=�$��28(��� $
��Wrap=�$	��Top=�$��
10,70,10,0q�$��14(�$��Stretch=�$#��        已应用产品密钥���� -   $��btnLeft��$��验证产品��$
��Left=�$��Bottom=�$��75��$��	35,0,0,35q��� -   $��btnRight��$��试用��$��Right=�$��Bottom=�$��75��$��	0,0,35,35q�