   M S B A M L   `   `   `  ���� G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  )clr-namespace:MetroExtrasMetroExtras  H DMahApps.Metro, Version=1.6.5.1, Culture=neutral, PublicKeyToken=nullV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls     ZebraBangumi.Slide5   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ,localclr-namespace:ZebraBangumi     )mexclr-namespace:MetroExtras     PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  !   MetroExtras.MetroExtraColor    	MainBrush
  � � � � 	Resources  �� MergedDictionaries �� Source �� 
TargetType   MetroFlatButton �� BasedOn �� Property �� Value �� RelativeSource	 �� Mode
 �� AncestorType �� Path  Key��  �� $ TransitionsUseOnly.xaml?��� $I Cpack://application:,,,/MahApps.Metro;component/Styles/Controls.xaml?��� $Q Kpack://application:,,,/MahApps.Metro;component/Styles/Controls.Buttons.xaml?��� �� " ��# [  .���  � ��$ Center=���  � ��$ 2q���  � ��$ 12(���  � �� ��  �� $	 FindAncestor=�$
 UserControlL�$% (mex:MetroExtraColor.MainBrush)���  � �� ��  �� $
	 Self=�$ BorderBrush���  � ��
 ������� 	Thumbnail .R��� $��2q�
�������$	��160��$��90������  �� $	 FindAncestor=�$
 UserControlL�$% (mex:MetroExtraColor.MainBrush)�._��� $��Stretch=����� *ImageSource+%
   '��       .��� -   $
��root��$	��600��$
��1074�� � ColumnDefinitions �� $
��Auto ��� $
��Auto ���  � RowDefinitions �� �� $
��Auto �.+�?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  $��0��$��2��C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase   OpeningEffect D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension     Kind$ SlideInFromBottom=�.���� $��30,30,15,40q�$��Hidden=�$��2��.����  �� Orientation$ Vertical=�.+���   	Thumbnail#��[ $��0,0,0,20q��� #��[ $��0,0,0,20q��� #��[ $��0,0,0,20q��� #��[ $��0,0,0,20q��� #��[ $��0,0,0,20q��� #��[ $��0,0,0,20q�  $��1��$��2��   $ SlideInFromTop=�.���� $��2��$��Stretch=�$��	0,20,0,30q�����  �� $	 FindAncestor=�$
 UserControlL�$% (mex:MetroExtraColor.MainBrush)�  $��2��$��0��   $ ExpandIn=�.���� -   $��pictureShow��
�������$��2q�$��Bottom=�$��Stretch=�$	��450��$��
30,0,30,30q�����  �� $	 FindAncestor=�$
 UserControlL�$% (mex:MetroExtraColor.MainBrush)�._��� -   $��
imgViewing��$��Stretch=�$��Stretch=�  $��2��$��1��   $ SlideInFromRight=�.��� -   $��stSaveToFile��$��
30,0,30,50q� �� $
��Auto ��� �� $��80 ��� $��80 �.+��� $��保存到：��$��15(�$��10,0,0,0q�$��Center=�����  �� $	 FindAncestor=�$
 UserControlL�$% (mex:MetroExtraColor.MainBrush)��� $��1��$��Stretch=�  MetroTextBox#��[ $��Center=�*  $MahApps.Metro.Controls.TextBoxHelper   	Watermark$	 C:\��$��	10,0,10,0q��� $��2��$��浏览��$	��5,0q��� $��3��$��保存��$	��5,0q�