   M S B A M L   `   `   `  ����G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  5          ZebraBangumi.TipDialog   5      H DMahApps.Metro, Version=1.6.5.1, Culture=neutral, PublicKeyToken=null;Controls,http://metro.mahapps.com/winfx/xaml/controls  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      ,localclr-namespace:ZebraBangumi     5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      $	��200��5
   6   $	��500��6C     � WindowStartupLocation$  CenterScreen=�6O    � Topmost .  � 
ResizeMode$ NoResize=�5      (  "MahApps.Metro.Controls.MetroWindow   ShowCloseButton .     AccentColorBrush   	GlowBrush# �   5       � Title 5
      �� *MessageTitle+ � 	Resources 5       �� MergedDictionaries �� Source	 �� 
TargetType  AccentedSquareButtonStyle
 �� BasedOn�� 5   
    5      �� 5      $I Cpack://application:,,,/MahApps.Metro;component/Styles/Controls.xaml?�6%   �� 5      $F @pack://application:,,,/MahApps.Metro;component/Styles/Fonts.xaml?�6%   �� 5      $G Apack://application:,,,/MahApps.Metro;component/Styles/Colors.xaml?�6%   �� 5      $M Gpack://application:,,,/MahApps.Metro;component/Styles/Accents/Blue.xaml?�6%   �� 5      $R Lpack://application:,,,/MahApps.Metro;component/Styles/Accents/BaseLight.xaml?�6%   %0   '��       7  �� 5      "	 ��6   8
   6(   5      .��5      � .+�5   
   �� $
��Left=�61   $
��Bold"�6L   #���   6^   $	��Top=�6�   $��18(�6�   $��	30,30,0,0q�6�   ��6   �� *MessageTitle+6�   �� 5   
   $
��Wrap=�6   #���   6A   $��14(�6q   $��30,60,30,57.96q�6   ��6(   �� *	Message+6   �� 5   
   -   5        $��
btnCertain��5      $��确定��6#   $��Right=�60   $��Bottom=�6L   $��75��6g   $��	0,0,30,25q�6r   6�   5      5       