   M S B A M L   `   `   `  ���� G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  )clr-namespace:MetroExtrasMetroExtras  U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf     ZebraBangumi.Slide1   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ,localclr-namespace:ZebraBangumi     )mexclr-namespace:MetroExtras     Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  !   MetroExtras.MetroExtraColor    	MainBrush
  � � � � 	Resources  �� MergedDictionaries �� Source  LiveCharts.Wpf.PieSeries �� 
TargetType  LiveCharts.Wpf.Series �� Property �� Value��  �� $ TransitionsUseOnly.xaml?��� �� "  .���  �@ StrokeThickness$ 0Q���  �@ 
DataLabels . ��  �@ LabelPosition$ InsideSlice=���  �@ 
Foreground
 �������  �@ FontSize$ 16Q���  �@ PushOut$ 1Q�%
   '        .��� -   $
��root��$	��600��$
��1074�� � ColumnDefinitions �� $
��Auto ��� �� $
��Auto � � RowDefinitions �� �� $
��Auto �.+�?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  $��0��$��0��C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase	   OpeningEffect	 D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  
   Kind$
 SlideInFromTop=�.��"   ZebraBangumi.TimeSelectBlock  $��30,20,30,15q�  ��  �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType$ UserControlL� �� Path$% (mex:MetroExtraColor.MainBrush)�  $��0��$��1��	   $
 SlideInFromBottom=�.��d� -   $��btnSaveForm��$��30,15,30,30q�   SaveFromBtn#��[    LiveCharts.Wpf.PieChart  -   $��chart��$��0q�$��1��$��2��&	   LiveCharts.Wpf.Charts.Base.Chart 	  AnimationsSpeed$ 0:0:0.25h� 	  DataTooltip Z�  	  Series      Title$ Maria��   Values;
  5LiveCharts.Wpf.Converters.NumericChartValuesConverter$ 3
    
DataLabels .    StrokeThickness$ 0Q�   PushOut$ 1Q�  $ Charles��$ 4
   $ Frida��$ 6
   $ Frederic��$ 2
   $��2��$��2��	   $
 SlideInFromRight=�.��$   ZebraBangumi.NormalSelectBlock  $��30,20,30,30q�  ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.MainBrush)�