   M S B A M L   `   `   `  ����G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  5      )clr-namespace:MetroExtrasMetroExtras  5      ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  5      U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5	          ZebraBangumi.Slide3   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:ZebraBangumi     5      )mexclr-namespace:MetroExtras     5      ;
exConverts$clr-namespace:MetroExtras.Converters     5      Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5	      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
      !   MetroExtras.MetroExtraColor    	MainBrush
  � � � � 	Resources 5       �� MergedDictionaries �� Source  LiveCharts.Wpf.LineSeries �� 
TargetType �� Property �� Value�� 5   
    5      �� 5      $ TransitionsUseOnly.xaml?�6%   %�   '        �� 5      "  6   .�5      ��  �@ PointGeometrySize$ 10Q�6>   �� 5       �@ LineSmoothness$ 0Q�6;   5      5      .��5      � -   5        $
��root��5      $	��600��6   $
��1074��6$    � ColumnDefinitions 5   
   �� 5      �� 5      $
��Auto �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5       �� 5!      $
��Auto �6   .+�5#   
   ?  9MaterialDesignThemes.Wpf.Transitions.TransitioningContent  C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase	   OpeningEffect	 6.   D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  
   Kind$
 SlideInFromLeft=�   Duration$ 0:0:0.5X�.��5$      $   ZebraBangumi.PeriodSelectBlock  -   5          Name$ periodSelect��5$   &   $   ZebraBangumi.PeriodSelectBlock   PeriodChanged$  PeriodSelect_PeriodChanged��5%   &   $��30,20,15,10q�5$   <     5&   &   ��  �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType$ UserControlL� �� Path$% (mex:MetroExtraColor.MainBrush)�5'        5)   
   $��2��6�   $��2��6�   	 6.     $
 SlideInFromRight=�$ 0:0:0.5X�.��5*      %   ZebraBangumi.AddableSelectBlock  -   5          Name$ detailSelect��5*   '   %	   ZebraBangumi.AddableSelectBlock 	  DoSearch$ DetailSelect_DoSearch��5,   '    	  TypeChanged$ DetailSelect_TypeChanged��5-   '    	  ItemCanceled$ DetailSelect_ItemCanceled��5.   '   $	��125��5+   '   $��30,10,30,30q�50   '     5/   '   ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.MainBrush)�50   '   51        53   
   $��1��6�   $��0��6�   	 6.     $
 SlideInFromRight=�$ 0:0:0.5X�.��54      d� -   5        $��btnSaveForm��54      $��1��55      $��
15,20,20,0q�56      $	��240��57         SaveFromBtn#��[  58      59      �� 5;   
   -   5        $��brdChart��5;      $��1��6!   $��2��6.   $��
30,0,30,10q�6B   ._�5<      ]� -   5        $��pChart��5<      $��Stretch=�6&   $��Stretch=�6B   .+�5=      �� -   5        $��
chartTitle��5=      $
��Null��6.   $	��Top=�6:   $��Center=�6O   $��5q�6l   $��16(�6w   $
��Bold"�6�   ��5>      ��  �� $ FindAncestor=�$ UserControlL�$% (mex:MetroExtraColor.MainBrush)�-
   'MetroExtras.Converters.ExColorConverter 
  Dark �� 	Converter# Z  �� ConverterParameter$ 0;0.3��#  LiveCharts.Wpf.CartesianChart  5?      -   5        $��chart��5?   %   &   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$ Right=�62      Series 5@   !   �� *SeriesCollection+   AxisX 5B        LiveCharts.Wpf.Axis     Title$  ��6#      Labels9  3LiveCharts.Wpf.Converters.StringCollectionConverter$ - 6,   5D      5E      5F      5G      5H      