   M S B A M L   `   `   `  ���� G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MetroExtrasMetroExtras  V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nulleHclr-namespace:MaterialDesignThemes.Wpf;assembly=MaterialDesignThemes.WpfMaterialDesignThemes.Wpf {Sclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf#MaterialDesignThemes.Wpf.Converters ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ExComboBoxItemStyle  �� 
TargetType �� Property �� Value �� RelativeSource �� Mode �� AncestorType �� Path �� 
TargetType ��Name	 J� Opacity%   MaterialDesignThemes.Wpf.Ripple
 J� SnapsToDevicePixels    Feedback  BrushRoundConverter �� 	Converter �� Triggers P� Property P� Value �� 
TargetName  ExComboBoxToggleButton+  %MaterialDesignThemes.Wpf.ShadowAssist0  *MaterialDesignThemes.Wpf.PackIconExtension   Kind �Name �� Mode.   (MetroExtras.Converters.ExCommanConverter   Instance �� 	Converter �� ConverterParameter J� Effect9  3MaterialDesignThemes.Wpf.Converters.ShadowConverter   Instance F�Name �� Stretch �� Angle �� CenterX �� CenterY'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Name    Transitions%  System.Windows.VisualTransition!   From	"   To#   GeneratedEasingFunction/  )System.Windows.Media.Animation.CircleEase7	  1System.Windows.Media.Animation.EasingFunctionBase$ 	  
EasingMode%   States 
  System.Windows.VisualState& 
  Name' 
  
Storyboard( g� Duration) �� 
TargetName* �� TargetProperty	+ W� To  ExComboBoxTemplate, �Name- � AllowsTransparency. �� MaxDropDownHeight/ �� CornerRadius0 �� TemplatedParent1 �� ElementName2 � RowDefinitions0   *MetroExtras.Converters.CornerRadiusConvert3   GetCornerValue4 ��Name5 �� ClearTypeHint6 ��Name7 ��Name8 K� IsItemsHost-  'System.Windows.Input.KeyboardNavigation9   DirectionalNavigation: � ColumnDefinitions; d�Name< d� 	IsChecked=   ShadowDepth>   Darken? ��Name@ �� SelectionBoxItemA �� SelectionBoxItemTemplateB J� IsHitTestVisibleC ]� 
ConditionsD �� PropertyE �� ValueF P� 
SourceName  ExComboBoxStyle�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     #localclr-namespace:MetroExtras  PmdtHclr-namespace:MaterialDesignThemes.Wpf;assembly=MaterialDesignThemes.Wpf  b
convertersSclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf  5exConverters$clr-namespace:MetroExtras.Converters  %�  &	        7  &	 �    &	 �    7  &	 7    7  �� "  ��.���  � ��$ Center=���  � �� ��  �� $ FindAncestor=�$ ComboBoxL�$ ActualHeight���  � ��$ 10,3,5,3q���  � �� �� " ��.R�� .+��� $
 Back��$		 0.3Q�   $��Stretch=�$��Stretch=�#��z��#��z��#��z��#��z��#��z��|�.  #��z��#
 z
  �� *
Foreground+8    P�  �@��IsHighlighted . . ��� $
 Back�� � ��
 �����P�  �@��
IsSelected . . ��� $
 Back�� � ��
 �   ��� "  d�.���  �@�OverridesDefaultStyle . ��  �@��	ClickMode$ Press=���  � ��
 �������  �@ ShadowDepth$ Depth1=���  � ��   $ MenuDown=���  �@�Cursor$
 Hand����  � �� �� " d�.R�� $
 root��.+��� $ shadow������  �� $ TemplatedParent=�$ OneWay=�$ ActualHeight�# Z $	 0.4������  �� $ TemplatedParent=�$ OneWay=�$ ActualWidth�# Z $	 0.6�� ��  �� *TemplatedParent+$$ (mdt:ShadowAssist.ShadowDepth)�# Z ._�F� $ arrow��$��Stretch=�$ Uniform=�$��Stretch=�#��z��"���� e� e��        � ʚ;    	z��� 
rotate��$ 0Q� ��  �� $ TemplatedParent=�$ OneWay=�$ ActualWidth�# Z $	 0.5�� ��  �� $ TemplatedParent=�$ OneWay=�$ ActualHeight�# Z $	 0.5��   $ Rotate��    $! 	Unchecked��$" Checked��#   $$ EaseOut=�  $! Checked��$" 	Unchecked��#   $$ EaseOut=�.% 
  $& 	Unchecked��.' �� .��W� $( 0:0:0.2D�$) rotate��$* Angle�$+ 0X�
  $& Checked��.' �� .��W� $( 0:0:0.2D�$) rotate��$* Angle�$	+ 180X� P�  �@J�IsMouseOver . . ��� $ shadow�� �@ Darken . �� " ��.R�� $ templateRoot��
 . .+�� $, 
PART_Popup��- . $��2��$��1q�$
��Fade=�$��Bottom=����� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+.���� $ dropDownBorder��#��z��#��z��#��z��#��z. $
	 0.85Q�/ �� # Z0 $7 1(local:MetroExtraBorderAssist.BorderCornerRadius)����� *ActualWidth+$1 templateRoot��._�� 2 �� ����  �� $ FindAncestor=�$ BorderL�$ CornerRadius�# Z3 $ TopLeft���� �� ����  �� $ FindAncestor=�$ BorderL�$ CornerRadius�# Z3 $ 
BottomLeft��.+��� $4 DropDownScrollViewer��$��1��.��� $
 grid��$5 Enabled=�.+��� $6 canvas��$
��Left=�$��0��$	��Top=�$��0��.+��� $7 
opaqueRect������ *
Background+$1 dropDownBorder������ *ActualHeight+$1 dropDownBorder������ *ActualWidth+$1 dropDownBorder���� 8 . $9 Continue=��� #��z��#��z��#��z��$
	 0.85Q�/ �� # Z0 $7 1(local:MetroExtraBorderAssist.BorderCornerRadius)�._�� : �� ����  �� $ FindAncestor=�$ BorderL�$ CornerRadius�# Z3 $ TopLeft���� �� $
��Auto ��� $
��Auto �.+�d� $; toggleButton��#��z��$��3��#��z��8��  ����  �� $ TemplatedParent=�$ OneWay=�$ ActualHeight�����  �� $ TemplatedParent=�$ OneWay=�$ ActualHeight�< �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+�� $ stroke��$��2��#��z��$= Depth1=�> . $��2������  �� $ TemplatedParent=�$ OneWay=�$ ActualHeight�# Z $	 0.7�� ��  �� $
 Self=�$$ (mdt:ShadowAssist.ShadowDepth)�# Z �� $? contentPresenter��#��z@ #��zA #��z��$
��Left=�B .  #��z��#
 z
 $��Center=�$��1�� P�  �@��HasItems .  . ��� $ dropDownBorder�� � ��$ 95��]� C �� D �@��
IsGroupingE . �� "D �@%�IsVirtualizingWhenGroupingE .  ./���  � �� .  P� $F DropDownScrollViewer�� � �� .  . ��� $ 
opaqueRect�� �� *VerticalOffset+$1 DropDownScrollViewer�� �@��Top�� $ 
opaqueRect�� �� *HorizontalOffset+$1 DropDownScrollViewer�� �@��Left�� "  ��.���  � ��
 �������  � ��$	 0.5q���  � �� �	#FF525252��  � ��
 �������  � ��$
 Auto=���  � ��$
 Auto=���  � �� . ��  �@��PanningMode$
 Both=���  �@��IsFlicksEnabled .  ��  � ��$ Center=���  � ��# �   ��  � �� ��  �� $
 Self=�$ ActualHeight�# Z $	 0.5����  � ��8   