   M S B A M L   `   `   `  ���� G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MetroExtrasMetroExtras  V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null{Sclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf#MaterialDesignThemes.Wpf.Converters ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ExBorderMetroToggleButton  �� 
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
StartPointA � OffsetB � Color   MetroExtras.ExRippleC   CornerRadius�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     #localclr-namespace:MetroExtras  ;mdt1http://materialdesigninxaml.net/winfx/xaml/themes  b
convertersSclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf  5exConverters$clr-namespace:MetroExtras.Converters  %&  &	        &	 �	    7   &	 !
    �� "  d�.���  � ��
 �������  � ��$ 2q���  �@  Feedback �� # Z $' !(local:MetroExtraColor.MainBrush)���  � �� �� # Z $' !(local:MetroExtraColor.MainBrush)���  � �� �� # Z $' !(local:MetroExtraColor.MainBrush)���  � ��$ 	10 5 10 5q���  �@J�SnapsToDevicePixels . ��  �@ ShadowDepth$ Depth1=���  � �� �� " d�.R�� $
 0.85Q�.+��� $ border��$��0q�#��z��#��z��#��z��#	 z	 
 �� # Z $7 1(local:MetroExtraBorderAssist.BorderCornerRadius)� ��  �� *TemplatedParent+$$ (mdt:ShadowAssist.ShadowDepth)�# Z � $��cutter������ $ border��$ ActualWidth����� $ border��$ ActualHeight� `� # Z .1��� $ cutter��$ ActualWidth�$ OneWay=��� $ cutter��$ ActualHeight�$ OneWay=��� $ border��$ CornerRadius�$ OneWay=�# Z $ TopLeft��.+�A� $ drawer��#��z��$��Center=�$��Center=����� $ OneWay=� �� $
 Self=�$ Width���`� # Z .1��� $ OneWay=�$ border��$ ActualWidth��� $ OneWay=�$ border��$ ActualHeight� �� 
bigger��$ 0Q�$ 0Q� �� $ drawer��$ Width�# Z $	 0.5�� ��  �� $
 Self=�$ CenterX�  #��z��#��z��|�.  # z #��z��#��z��#��z��#	 z	  `� # Z .1��� $ ActualWidth�$ OneWay=� �� $
 Self=��� $ ActualHeight�$ OneWay=� �� $
 Self=��� $ border��$ CornerRadius�$ OneWay=�# Z $ TopLeft��  	  $! Light��" 
  $# 0:0:0.5D�$$ Normal��%   $& EaseOut=�
  $# 0:0:0.5D�$$ 	MouseOver��%   $& EaseOut=�.'   $( Normal��  $( 	MouseOver��.) �� .��W� $* 0D�$+ Opacity�$, 1X�	  $
! Draw��" 
  $# 0:0:0.2D�$- 	Unchecked��$$ Checked��%   $& EaseOut=�.. �� .��W� $* 0:0:0.2D�$/ bigger��$+ ScaleX�$, 1X�W� $* 0:0:0.2D�$/ bigger��$+ ScaleY�$, 1X�
  $# 0:0:0.2D�$- Checked��$$ 	Unchecked��%   $& EaseOut=�.. �� .��W� $* 0:0:0.2D�$/ bigger��$+ ScaleX�$, 0X�W� $* 0:0:0.2D�$/ bigger��$+ ScaleY�$, 0X�.'   $( 	Unchecked��  $( Checked��.) �� .��W� $* 0D�$/ bigger��$+ ScaleX�$, 1X�W� $* 0D�$/ bigger��$+ ScaleY�$, 1X�0 P� 1 �@d�	IsChecked$
2 TrueY�. ���  � ��
 �������  �@  Feedback
 �����P� 1 �@J�IsMouseOver2 . . ��� $3 border�� �@ Darken . �� "  d�84   .���  �@ BorderCornerRadius �� # Z $ ActualHeight�# Z5 $	 0.5���� "  ��.���  � ��
 ��  ���  � ��$ 80����  � ��$	 160����  �@ 	MainBrush �� # Z $ 
Background���  �@ 
LightBrush �� # Z $' !(local:MetroExtraColor.MainBrush)�# Z6 $ 0; 0.7����  �@ 	DarkBrush �� # Z $' !(local:MetroExtraColor.MainBrush)�# Z7 ��  � �� �� # Z $ Height�# Z $
 0.35����  � ��$
 Bold"���  � �� �� # Z $' !(local:MetroExtraColor.MainBrush)���  �@ BorderCornerRadius �� # Z $ Height�# Z5 $
 0.25����  �@  Feedback �� # Z $' !(local:MetroExtraColor.MainBrush)���  � �� �� " ��.R�� $8 showingField��#��z��#��z������ $ TwoWay=� �� $ TemplatedParent=�$ Height�����  �� $ TemplatedParent=�$ Width����� 9 � ��#: Z $
; 1.25������ 9 � ��#: Z $
; 1.25��.+��� $ border��#
 z< #��z= $��2q�#��z> ���� *Width+#: Z $	; 1.3���� $ light��#
 z< #��z= $��2q�$ 0Q����� *Width+#: Z $	; 1.3������ $? 0.8,1&�$@ 0.2,0&�.��� $A 1Q�� $B White��  #��z��|�.  # z #��z��#��z��#��z��#C z< #	 z	 ���� *Width+#: Z $	; 1.3��.���� $��Center=�$��Center=�#��z��  	  $! Light��" 
  $# 0:0:0.5D�$$ Normal��%   $& EaseOut=�
  $# 0:0:0.5D�$$ 	MouseOver��%   $& EaseOut=�.'   $( Normal��  $( 	MouseOver��.) �� .��W� $* 0:0:1D�$/ light��$+ Opacity�$	, 0.5X�