   M S B A M L   `   `   `  ���� G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  )clr-namespace:MetroExtrasMetroExtras  ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf     ZebraBangumi.Slide1   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ,localclr-namespace:ZebraBangumi     )mexclr-namespace:MetroExtras     ;
exConverts$clr-namespace:MetroExtras.Converters     Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  !   MetroExtras.MetroExtraColor    	MainBrush
  � � � � 	Resources  �� MergedDictionaries �� Source  LiveCharts.Wpf.PieSeries �� 
TargetType  LiveCharts.Wpf.Series �� Property �� Value��  �� $ TransitionsUseOnly.xaml?�%�   '        �� "  .���  �@ StrokeThickness$ 0Q���  �@ 
DataLabels . ��  �@ LabelPosition$ InsideSlice=���  �@ 
Foreground
 �������  �@ FontSize$ 16Q���  �@ PushOut$ 1Q�.��� -   $
��root��$	��600��$
��1074�� � ColumnDefinitions �� $
��Auto ��� �� $
��Auto � � RowDefinitions �� �� $
��Auto �.+�?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  $��0��$��0��C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase	   OpeningEffect	 D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  
   Kind$
 SlideInFromLeft=�   Duration$ 0:0:0.5X�.��"   ZebraBangumi.TimeSelectBlock  -     Name$ tsBlock��"   ZebraBangumi.TimeSelectBlock   TimeChanged$ TsBlock_TimeChanged��$��30,20,30,15q�  ��  �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType$ UserControlL� �� Path$% (mex:MetroExtraColor.MainBrush)�  $��0��$��1��	   $
 SlideInFromLeft=�$ 0:0:0.5X�.��d� -   $��btnSaveForm��$��30,15,30,30q�   SaveFromBtn#��[  �� -   $��brdChart��$��1��$��2��$��	0,20,0,30q�._�]� -   $��pChart��$��Stretch=�$��Stretch=�.+��� -   $��
chartTitle��$
��Null��$	��Top=�$��Center=�$��5q�$��16(�$
��Bold"�����  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.MainBrush)�-	   'MetroExtras.Converters.ExColorConverter 	  Dark �� 	Converter# Z  �� ConverterParameter$ 0;0.3��
  LiveCharts.Wpf.PieChart
  -   $��chart��$��0q�&   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$ Bottom=�   AnimationsSpeed$ 0:0:0.25h�   Series �� *SeriesCollection+  $��2��$��2��	   $
 SlideInFromRight=�.��$   ZebraBangumi.NormalSelectBlock  -     Name$ nsBlock��$   ZebraBangumi.NormalSelectBlock   TypeChanged$ NsBlock_TypeChanged��   ItemChecked$ NsBlock_ItemChecked��   ItemUnchecked$ NsBlock_ItemUnchecked��$��30,20,30,30q�  ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.MainBrush)�