   M S B A M L   `   `   `  ����G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MetroExtrasMetroExtras  5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null{Sclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf#MaterialDesignThemes.Wpf.Converters 5      ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ExBorderMetroToggleButton  �� 
TargetType �� Property �� Value+   %MaterialDesignThemes.Wpf.RippleAssist �� Self �� RelativeSource �� Path+  %MaterialDesignThemes.Wpf.ShadowAssist �� 
TargetType J� Opacity ��Name	 J� SnapsToDevicePixels
 �� CornerRadius �� TemplatedParent J� Effect9  3MaterialDesignThemes.Wpf.Converters.ShadowConverter   Instance �� 	Converter �� ElementName J� Clip3   -MetroExtras.Converters.RectangleClipConverter   Instance `� 	Converter �� Mode0   *MetroExtras.Converters.CornerRadiusConvert   GetCornerValue �� ConverterParameter A�Name �� Mode5   /MetroExtras.Converters.EuclideanDistanceConvert   Instance � LayoutTransform �� ScaleX �� ScaleY �� CenterX.   (MetroExtras.Converters.ExCommanConverter   Instance �� CenterY%  MaterialDesignThemes.Wpf.Ripple �� ContentStringFormat'  !System.Windows.VisualStateManager    VisualStateGroups%	  System.Windows.VisualStateGroup! 	  Name" 	  Transitions%
  System.Windows.VisualTransition# 
  GeneratedDuration	$ 
  To% 
  GeneratedEasingFunction/  )System.Windows.Media.Animation.CircleEase7  1System.Windows.Media.Animation.EasingFunctionBase&   
EasingMode' 	  States   System.Windows.VisualState(   Name)   
Storyboard* g� Duration+ �� TargetProperty	, W� To- 
  From. 
  
Storyboard/ �� 
TargetName0 �� Triggers1 P� Property2 P� Value3 �� 
TargetName , (ExDoubleHalfCycleBorderMetroToggleButton4 �� BasedOn(   "MetroExtras.MetroExtraBorderAssist5   Instance  ExTabButton!   MetroExtras.MetroExtraColor-   'MetroExtras.Converters.ExColorConverter6   Light7   Dark8 �Name9 �� Property: �� 	Converter; �� ConverterParameter<   BorderCornerRadius=   	MainBrush>   
LightBrush? �� EndPoint@ �� 
StartPointA � OffsetB � Color   MetroExtras.ExRippleC   CornerRadius�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      #localclr-namespace:MetroExtras  5      ;mdt1http://materialdesigninxaml.net/winfx/xaml/themes  5      b
convertersSclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf  5      5exConverters$clr-namespace:MetroExtras.Converters  5      %  &	        &	 8    7   &	 �    �� 5      "  d�6.   .�5   
   ��  � ��
 �����6'   �� 5	   
    � ��$ 2q�6,   �� 5
   
    �@  Feedback 66   �� # Z $' !(local:MetroExtraColor.MainBrush)��� 5   
    � �� 6'   �� # Z $' !(local:MetroExtraColor.MainBrush)��� 5   
    � �� 6(   �� # Z $' !(local:MetroExtraColor.MainBrush)��� 5   
    � ��$ 	10 5 10 5q�6$   �� 5   
    �@J�SnapsToDevicePixels . 60   �� 5   
    �@ ShadowDepth$ Depth1=�69   �� 5   
    � �� 5      �� 5      " d�6"   .R�5      � $
 0.85Q�6   .+�5      �� $ border��6!   $��0q�5   !   #��z��5   !   #��z��5   !   #��z��5   !   #	 z	 5   !   
 5   !   �� # Z $7 1(local:MetroExtraBorderAssist.BorderCornerRadius)� 5   !   ��  �� *TemplatedParent+$$ (mdt:ShadowAssist.ShadowDepth)�# Z 5      � 5      $��cutter��6   ��5      �� $ border��$ ActualWidth���5      �� $ border��$ ActualHeight� 5       `� 5!   "   # Z 6/   .1�5"   &   �� $ cutter��6.   $ ActualWidth�6C   $ OneWay=�6V   �� 5#   &   $ cutter��6.   $ ActualHeight�6C   $ OneWay=�6W   �� 5$   &   $ border��6.   $ CornerRadius�6C   $ OneWay=�6W   # Z 6e   $ TopLeft��6�   5%   #   .+�5'      A� $ drawer��6&   #��z��5)   &   $��Center=�5*   &   $��Center=�5+   &   ��5(   &   �� $ OneWay=� �� $
 Self=�$ Width���5,   "   `� 5-   &   # Z 63   .1�5.   *   �� $ OneWay=�62   $ border��6@   $ ActualWidth�6U   �� 5/   *   $ OneWay=�62   $ border��6@   $ ActualHeight�6U   50   '    52   "   �� 53   &   
bigger��$ 0Q�56   5   $ 0Q�6@    54   5   �� $ drawer��$ Width�# Z $	 0.5�� 55   5   ��  �� $
 Self=�$ CenterX�56   @   58      59        5:      #��z��6%   #��z��6I   |�.  # z 5;   %   #��z��5<   %   #��z��5=   %   #��z��5>   %   #	 z	 5?   %    5@      `� 5A   "   # Z 6/   .1�5B   &   �� $ ActualWidth�6Z   $ OneWay=�6m    6.   �� $
 Self=�6m   �� 5C   &   $ ActualHeight�6Z   $ OneWay=�6n    6.   �� $
 Self=�6n   �� 5D   &   $ border��6.   $ CornerRadius�6C   $ OneWay=�6W   # Z 6e   $ TopLeft��6�   5E   #   5G        5H      	  5I      $! Light��6/   " 5J   "   
  5K   &   $# 0:0:0.5D�67   $$ Normal��6S   % 5L   *     5M   .   $& EaseOut=�69   5O   '   
  5P   &   $# 0:0:0.5D�67   $$ 	MouseOver��6S   % 5Q   *     5R   .   $& EaseOut=�69   5T   '   .' 5V   "     $( Normal��6.     5W   "   $( 	MouseOver��6.   .) 5X   &   �� .��5Y   *   W� $* 0D�6:   $+ Opacity�5Z   :   $, 1X�5[   :   5\   '   5]   #   5^      	  5_      $
! Draw��6/   " 5`   "   
  5a   &   $# 0:0:0.2D�67   $- 	Unchecked��6S   $$ Checked��6d   % 5b   *     5c   .   $& EaseOut=�69   .. 5e   *   �� .��5f   .   W� $* 0:0:0.2D�6>   $/ bigger��5g   :   $+ ScaleX�5h   :   $, 1X�5i   :   W� 5j   .   $* 0:0:0.2D�6>   $/ bigger��5k   :   $+ ScaleY�5l   :   $, 1X�5m   :   5n   +   5o   '   
  5p   &   $# 0:0:0.2D�67   $- Checked��6S   $$ 	Unchecked��6b   % 5q   *     5r   .   $& EaseOut=�69   .. 5t   *   �� .��5u   .   W� $* 0:0:0.2D�6>   $/ bigger��5v   :   $+ ScaleX�5w   :   $, 0X�5x   :   W� 5y   .   $* 0:0:0.2D�6>   $/ bigger��5z   :   $+ ScaleY�5{   :   $, 0X�5|   :   5}   +   5~   '   .' 5�   "     $( 	Unchecked��6.   5�   #     5�   "   $( Checked��6.   .) 5�   &   �� .��5�   *   W� $* 0D�6:   $/ bigger��5�   :   $+ ScaleX�5�   :   $, 1X�5�   :   W� 5�   *   $* 0D�6:   $/ bigger��5�   :   $+ ScaleY�5�   :   $, 1X�5�   :   5�   '   5�   #   5�      5�      0 5�      P� 5�      1 �@d�	IsChecked$
2 TrueY�67   . �5�      ��  � ��
 �����6;   �� 5�       �@  Feedback
 �����6J   5�      P� 5�      1 �@J�IsMouseOver2 . . �5�      �� $3 border��6%    �@ Darken . 6\   5�      5�      5�      5�      �� 5�      "  d�6=   84   .�5�   
   ��  �@ BorderCornerRadius 6L   �� # Z $ ActualHeight�# Z5 $	 0.5��5�      �� 5�      "  ��6    .�5�   
   ��  � ��
 ��  �6'   �� 5�   
    � ��$ 80��6#   �� 5�   
    � ��$	 160��6"   �� 5�   
    �@ 	MainBrush 6<   �� # Z $ 
Background��� 5�   
    �@ 
LightBrush 6=   �� # Z $' !(local:MetroExtraColor.MainBrush)�# Z6 $ 0; 0.7���� 5�   
    �@ 	DarkBrush 6<   �� # Z $' !(local:MetroExtraColor.MainBrush)�# Z7 �� 5�   
    � �� 6%   �� # Z $ Height�# Z $
 0.35���� 5�   
    � ��$
 Bold"�6'   �� 5�   
    � �� 6'   �� # Z $' !(local:MetroExtraColor.MainBrush)��� 5�   
    �@ BorderCornerRadius 6L   �� # Z $ Height�# Z5 $
 0.25���� 5�   
    �@  Feedback 66   �� # Z $' !(local:MetroExtraColor.MainBrush)��� 5�   
    � �� 5�      �� 5�      " ��6"   .R�5�      � $8 showingField��6   #��z��5�      #��z��5�      ��5�      �� $ TwoWay=� �� $ TemplatedParent=�$ Height���5�      ��  �� $ TemplatedParent=�$ Width���5�      �� 9 � ��#: Z $
; 1.25����5�      �� 9 � ��#: Z $
; 1.25��.+�5�      �� $ border��6!   #
 z< 5�   !   #��z= 5�   !   $��2q�5�   !   #��z> 5�   !   ��5�   !   �� *Width+#: Z $	; 1.3��5�      �� 5�      $ light��6!   #
 z< 5�   !   #��z= 5�   !   $��2q�5�   !   $ 0Q�5�   !   ��5�   !   �� *Width+#: Z $	; 1.3����5�      �� 5�   "   $? 0.8,1&�66   $@ 0.2,0&�6G   .��5�   &   � $A 1Q�63   � 5�   &   $B White��63   5�   #   5�        5�      #��z��6)   |�.  # z 5�   )   #��z��5�   )   #��z��5�   )   #��z��5�   )   #C z< 5�   )   #	 z	 5�   )   ��5�   )   �� *Width+#: Z $	; 1.3��.��5�      �� $��Center=�6/   $��Center=�6L   #��z��6g   5�        5�      	  5�      $! Light��6/   " 5�   "   
  5�   &   $# 0:0:0.5D�67   $$ Normal��6S   % 5�   *     5�   .   $& EaseOut=�69   5�   '   
  5�   &   $# 0:0:0.5D�67   $$ 	MouseOver��6S   % 5�   *     5�   .   $& EaseOut=�69   5�   '   .' 5�   "     $( Normal��6.     5�   "   $( 	MouseOver��6.   .) 5�   &   �� .��5�   *   W� $* 0:0:1D�6:   $/ light��5�   :   $+ Opacity�5�   :   $	, 0.5X�5�   :   5�   '   5�   #   5�      5�      5�      5�      5�      5�      