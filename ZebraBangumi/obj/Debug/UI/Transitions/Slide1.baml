   M S B A M L   `   `   `  ����G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  5      )clr-namespace:MetroExtrasMetroExtras  5      ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  5      U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5	          ZebraBangumi.Slide1   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:ZebraBangumi     5      )mexclr-namespace:MetroExtras     5      ;
exConverts$clr-namespace:MetroExtras.Converters     5      Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5	      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
      !   MetroExtras.MetroExtraColor    	MainBrush
  � � � � 	Resources 5       �� MergedDictionaries �� Source  LiveCharts.Wpf.PieSeries �� 
TargetType  LiveCharts.Wpf.Series �� Property �� Value�� 5   
    5      �� 5      $ TransitionsUseOnly.xaml?�6%   %R  '        �� 5      "  6   .�5      ��  �@ StrokeThickness$ 0Q�64   �� 5       �@ 
DataLabels . 6/   �� 5       �@ LabelPosition$ InsideSlice=�62   �� 5       �@ 
Foreground
 �����6/   �� 5       �@ FontSize$ 16Q�6-   �� 5       �@ PushOut$ 1Q�6,   5      5      .��5      � -   5        $
��root��5      $	��600��6   $
��1074��6$    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5       �� 5!      $
��Auto �6    � RowDefinitions 5#   
   �� 5$      �� 5%      $
��Auto �6   .+�5'   
   ?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  $��0��6�   $��0��6�   C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase	   OpeningEffect	 6.   D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  
   Kind$
 SlideInFromLeft=�   Duration$ 0:0:0.5X�.��5(      "   ZebraBangumi.TimeSelectBlock  -   5          Name$ tsBlock��5(   $   "   ZebraBangumi.TimeSelectBlock   TimeChanged$ TsBlock_TimeChanged��5)   9   $��30,20,30,15q�6$     5(   5   ��  �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType$ UserControlL� �� Path$% (mex:MetroExtraColor.MainBrush)�5)   9   5*        5,   
   $��0��6�   $��1��6�   	 6.     $
 SlideInFromLeft=�$ 0:0:0.5X�.��5-      d� -   5        $��btnSaveForm��5-      $��30,15,30,30q�5.         SaveFromBtn#��[  5/      50      �� 52   
   -   5        $��brdChart��52      $��1��53      $��2��54      $��	0,20,0,30q�55      ._�56      ]� -   5        $��pChart��56      $��Stretch=�6&   $��Stretch=�6B   .+�57      �� -   5        $��
chartTitle��57      $
��Null��6.   $	��Top=�6:   $��Center=�6O   $��5q�6l   $��16(�6w   $
��Bold"�6�   ��58      ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.MainBrush)�-	   'MetroExtras.Converters.ExColorConverter 	  Dark �� 	Converter# Z  �� ConverterParameter$ 0;0.3��
  LiveCharts.Wpf.PieChart
  59      -   5        $��chart��59      $��0q�5:      &   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$ Bottom=�5;         AnimationsSpeed$ 0:0:0.25h�5=         Series 5<      �� *SeriesCollection+5>      5?      5@        5C   
   $��2��6v   $��2��6�   	 6.     $
 SlideInFromRight=�.��5D      $   ZebraBangumi.NormalSelectBlock  -   5          Name$ nsBlock��5D   &   $   ZebraBangumi.NormalSelectBlock   TypeChanged$ NsBlock_TypeChanged��5E   ;      ItemChecked$ NsBlock_ItemChecked��6]      ItemUnchecked$ NsBlock_ItemUnchecked��6   $��30,20,30,30q�6&     5D   7   ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.MainBrush)�5E      5F      5G      5H      