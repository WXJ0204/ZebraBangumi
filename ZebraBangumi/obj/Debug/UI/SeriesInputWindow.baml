   M S B A M L   `   `   `  ����G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  5      $    ZebraBangumi.SeriesInputWindow   5      H DMahApps.Metro, Version=1.6.5.1, Culture=neutral, PublicKeyToken=null;Controls,http://metro.mahapps.com/winfx/xaml/controls  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      ,localclr-namespace:ZebraBangumi     5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	         AccentColorBrush(  "MahApps.Metro.Controls.MetroWindow    	GlowBrush#  �   5
       � Title$ 产品注册��5       � 
ResizeMode$ NoResize=�5       � WindowStartupLocation$ CenterScreen=�5      $	��600��5      $	��700��6$    � 	Resources 5       �� MergedDictionaries �� Source �� 
TargetType  AccentedSquareButtonStyle �� BasedOn<  6MaterialDesignThemes.Wpf.Transitions.TransitionerSlideC  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase	 �� Property
 �� Value;  5MaterialDesignThemes.Wpf.Transitions.TransitionEffect   Kind4  .MaterialDesignThemes.Wpf.Transitions.SlideWipe   	Direction�� 5   
    5      �� 5      $I Cpack://application:,,,/MahApps.Metro;component/Styles/Controls.xaml?�6%   �� 5      $F @pack://application:,,,/MahApps.Metro;component/Styles/Fonts.xaml?�6%   �� 5      $G Apack://application:,,,/MahApps.Metro;component/Styles/Colors.xaml?�6%   �� 5      $M Gpack://application:,,,/MahApps.Metro;component/Styles/Accents/Blue.xaml?�6%   �� 5      $R Lpack://application:,,,/MahApps.Metro;component/Styles/Accents/BaseLight.xaml?�6%   %h  '��       7  '  "     �� 5      " ��6   8   6(   �� 5      "  6   .�5      �� 	 �@ OpeningEffect
 5        5      $ ExpandIn=�6:   5      �� 5      	 �@ ForwardWipe
 5         5!      $
 Left=�63   5#      �� 5$      	 �@ BackwardWipe
 5%        5&      $ Right=�63   5(      5)      5*      .��5-      � .+�5.   
   7  1MaterialDesignThemes.Wpf.Transitions.Transitioner  -   5        $��transitioner��5.   8    �� SelectedIndex$ 0��6&   $��
35,35,35,0q�6L   $	��135��6`   $	��Top=�6m   .@�5/        .��50      � -   5        $��page1��50      .+�51      �� $
��Wrap=�6    $��产品需要验证��64   $	��Top=�6B   $��	10,20,0,0q�6Z   $
��Left=�6m   $��28(�6�   �� 52      $
��Wrap=�6    $	��Top=�64   $��
10,70,10,0q�6L   $��14(�6a   $��Stretch=�6o   $����        您的产品尚未验证，如果您拥有产品密钥，请选择"验证产品"进行激活；您也可以对该产品进行试用，但部分功能将遭到限制。��53      54      55        56      .��57      � -   5        $��page2��57      .+�58      �� $
��Wrap=�6    $��输入您的产品密钥��64   $	��Top=�6D   $��	10,20,0,0q�6\   $
��Left=�6o   $��28(�6�   �� 59      -   5        $��tbSeriesCode��59       �� TextWrapping$ NoWrap=�62   $	��Top=�6H   $��
20,70,20,0q�6`   $��14(�6u   $��Stretch=�6�    �� 	MaxLength$ 24��6�   *  $MahApps.Metro.Controls.TextBoxHelper   	Watermark$ Series code here��6�      ClearTextButton . 6�   5:      5;        5<      .��5=      � -   5        $��page3��5=      .+�5>      �� $
��Wrap=�6    $��产品注册成功��64   $	��Top=�6B   $��	10,20,0,0q�6Z   $
��Left=�6m   $��28(�6�   �� 5?      $
��Wrap=�6    $	��Top=�64   $��
10,70,10,0q�6L   $��14(�6a   $��Stretch=�6o   $#��        已应用产品密钥��5@      5A      5B      5C      �� 5D   
   -   5        $��btnLeft��5D      $��验证产品��6    $
��Left=�6/   $��Bottom=�6J   $��75��6e   $��	35,0,0,35q�6p   6�   �� 5E   
   -   5        $��btnRight��5E      $��试用��6!   $��Right=�6.   $��Bottom=�6J   $��75��6e   $��	0,0,35,35q�6p   6�   5F      5G      