   M S B A M L   `   `   `  ���� G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  )clr-namespace:MetroExtrasMetroExtras  ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf     ZebraBangumi.Slide2   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ,localclr-namespace:ZebraBangumi     )mexclr-namespace:MetroExtras     ;
exConverts$clr-namespace:MetroExtras.Converters     Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  !   MetroExtras.MetroExtraColor    	MainBrush
  � � � � 	Resources  �� MergedDictionaries �� Source  LiveCharts.Wpf.RowSeries �� 
TargetType �� Property �� Value  LiveCharts.Wpf.Series��  �� $ TransitionsUseOnly.xaml?�%�   '        �� "  .���  �@ MaxRowHeigth$ 60Q���  �@ 
RowPadding$ 20Q���  �@ 
DataLabels . ��  �@ 
Foreground
 �������  �@ FontSize$ 16Q�.��� -   $
��root��$	��600��$
��1074�� � ColumnDefinitions �� $
��Auto ���  � RowDefinitions �� �� $	��100 ��� $	��105��.+�?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  $��0��$��0��$��2��C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase	   OpeningEffect	 D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  
   Kind$
 SlideInFromLeft=�   Duration$ 0:0:0.5X�.��"   ZebraBangumi.TimeSelectBlock  -     Name$ 
timeSelect��"   ZebraBangumi.TimeSelectBlock   TimeChanged$ TimeSelect_TimeChanged��$��30,20,30,15q�  ��  �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType$ UserControlL� �� Path$% (mex:MetroExtraColor.MainBrush)�  $��0��$��2��	   $
 SlideInFromLeft=�$ 0:0:0.5X�.��d� -   $��btnSaveForm��$��30,15,30,30q�   SaveFromBtn#��[    $��1��$��1��$��2��	   $
 SlideInFromRight=�$ 0:0:0.5X�.��%	   ZebraBangumi.AddableSelectBlock	  -    	 Name$ detailSelect��%
   ZebraBangumi.AddableSelectBlock 
  DoSearch$ DetailSelect_DoSearch�� 
  TypeChanged$ DetailSelect_TypeChanged�� 
  RangeTypeChanged$# DetailSelect_RangeTypeChanged�� 
  ItemCanceled$ DetailSelect_ItemCanceled��$��
0,20,30,20q�  ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.MainBrush)��� -   $��brdChart��$��1��$��
0,20,30,20q�._�]� -   $��pChart��$��Stretch=�$��Stretch=�.+��� -   $��
chartTitle��$
��Null��$	��Top=�$��Center=�$��5q�$��16(�$
��Bold"�����  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.MainBrush)�-   'MetroExtras.Converters.ExColorConverter   Dark �� 	Converter# Z  �� ConverterParameter$ 0;0.3��#  LiveCharts.Wpf.CartesianChart  -   $��chart��&   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$ Right=�   Series �� *SeriesCollection+   AxisY   LiveCharts.Wpf.Axis     Title$  ��   Labels9  3LiveCharts.Wpf.Converters.StringCollectionConverter$ - 