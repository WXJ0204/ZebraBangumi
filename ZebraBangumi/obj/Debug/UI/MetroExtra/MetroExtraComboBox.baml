   M S B A M L   `   `   `  ����G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MetroExtrasMetroExtras  5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nulleHclr-namespace:MaterialDesignThemes.Wpf;assembly=MaterialDesignThemes.WpfMaterialDesignThemes.Wpf 5      {Sclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf#MaterialDesignThemes.Wpf.Converters 5      ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ExComboBoxItemStyle  �� 
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
SourceName  ExComboBoxStyle�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      #localclr-namespace:MetroExtras  5      PmdtHclr-namespace:MaterialDesignThemes.Wpf;assembly=MaterialDesignThemes.Wpf  5      b
convertersSclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf  5      5exConverters$clr-namespace:MetroExtras.Converters  5      %�  &	        7  &	 5    &	 �
    7  &	 �    7  �� 5      "  ��6(   .�5   
   ��  � ��$ Center=�65   �� 5	   
    � �� 6#   ��  �� $ FindAncestor=�$ ComboBoxL�$ ActualHeight��� 5
   
    � ��$ 10,3,5,3q�6$   �� 5   
    � �� 5      �� 5      " ��6"   .R�5      � .+�5      �� $
 Back��6!   $		 0.3Q�5   !      5      $��Stretch=�6%   $��Stretch=�5   %   #��z��5   %   #��z��5   %   #��z��5   %   #��z��5   %   #��z��5   %   |�.  #��z��5   %   #
 z
 5   %    5   %   �� *
Foreground+8   5   %   5       5      P� 5       �@��IsHighlighted . . �5       �� $
 Back��6%    � ��
 �����6]   5!      P� 5"       �@��
IsSelected . . �5#      �� $
 Back��6%    � ��
 �   �6]   5$      5&      5(      5)      �� 5+      "  d�6+   .�5,   
   ��  �@�OverridesDefaultStyle . 62   �� 5-   
    �@��	ClickMode$ Press=�6&   �� 5.   
    � ��
 �����6'   �� 5/   
    �@ ShadowDepth$ Depth1=�69   �� 50   
    � �� 6$     $ MenuDown=��� 51   
    �@�Cursor$
 Hand��6#   �� 52   
    � �� 53      �� 54      " d�6"   .R�55      � $
 root��6   .+�56      �� $ shadow��6!   ��57   !   ��  �� $ TemplatedParent=�$ OneWay=�$ ActualHeight�# Z $	 0.4����58   !   ��  �� $ TemplatedParent=�$ OneWay=�$ ActualWidth�# Z $	 0.6�� 59   !   ��  �� *TemplatedParent+$$ (mdt:ShadowAssist.ShadowDepth)�# Z ._�5:      F� $ arrow��6#   $��Stretch=�62   $ Uniform=�6N   $��Stretch=�6`   #��z��6~   "���� e� e��        � ʚ;    	6�   5;      z�5<      �� 5=      
rotate��$ 0Q�5>   .    5?   .   ��  �� $ TemplatedParent=�$ OneWay=�$ ActualWidth�# Z $	 0.5�� 5@   .   ��  �� $ TemplatedParent=�$ OneWay=�$ ActualHeight�# Z $	 0.5�� 5B        5C      $ Rotate��6/     5D   "     5E   &   $! 	Unchecked��67   $" Checked��6H   # 5F   *     5G   .   $$ EaseOut=�69   5I   '     5J   &   $! Checked��67   $" 	Unchecked��6F   # 5K   *     5L   .   $$ EaseOut=�69   5N   '   .% 5P   "   
  $& 	Unchecked��6.   .' 5Q   &   �� .��5R   *   W� $( 0:0:0.2D�6:   $) rotate��5S   9   $* Angle�5T   9   $+ 0X�5U   9   5V   '   5W   #   
  5X   "   $& Checked��6.   .' 5Y   &   �� .��5Z   *   W� $( 0:0:0.2D�6:   $) rotate��5[   :   $* Angle�5\   :   $	+ 180X�5]   :   5^   '   5_   #   5`      5b       5d      P� 5e       �@J�IsMouseOver . . �5f      �� $ shadow��6%    �@ Darken . 6\   5g      5i      5k      5l      �� 5n      " ��61   .R�5o   
   � $ templateRoot��6   
 . .+�5p      � $, 
PART_Popup��6   - . $��2��6B   $��1q�6�   $
��Fade=�5q      $��Bottom=�6*   ��5p   V   �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+.��5r      �� $ dropDownBorder��6   #��z��5s      #��z��5t      #��z��5u      #��z. 5w      $
	 0.85Q�5y      / 5v      �� # Z0 $7 1(local:MetroExtraBorderAssist.BorderCornerRadius)���5x      �� *ActualWidth+$1 templateRoot��._�5z      � 2 5{      �� 5|      ��6,   ��  �� $ FindAncestor=�$ BorderL�$ CornerRadius�# Z3 $ TopLeft���� 5}      �� 5~      ��6,   ��  �� $ FindAncestor=�$ BorderL�$ CornerRadius�# Z3 $ 
BottomLeft��.+�5�      �� $4 DropDownScrollViewer��6'   $��1��6E   $��Hidden=�6R   .��5�      � $
 grid��6#   $5 Enabled=�61   .+�5�   "   �� $6 canvas��6)   $
��Left=�69   $��0��6T   $	��Top=�6_   $��0��6w   .+�5�   &   �� $7 
opaqueRect��60   ��6D   �� *
Background+$1 dropDownBorder����6|   �� *ActualHeight+$1 dropDownBorder����6�   �� *ActualWidth+$1 dropDownBorder��5�   #   �� 5�   "   8 . $9 Continue=�6@   5�      5�      5�      5�      5�      �� 5�      #��z��6   #��z��5�      #��z��5�      $
	 0.85Q�5�      / 5�      �� # Z0 $7 1(local:MetroExtraBorderAssist.BorderCornerRadius)�._�5�      � : 5�      �� 5�      ��6+   ��  �� $ FindAncestor=�$ BorderL�$ CornerRadius�# Z3 $ TopLeft���� 5�      �� 5�      $
��Auto �6+   �� 5�      $
��Auto �6+   .+�5�      d� $; toggleButton��6#   #��z��5�   #   $��3��5�   #   #��z��5�   #   8��  ��5�   #   ��  �� $ TemplatedParent=�$ OneWay=�$ ActualHeight���5�   #   ��  �� $ TemplatedParent=�$ OneWay=�$ ActualHeight�< 5�   #   �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+5�   #   �� 5�      $ stroke��6   $��2��5�      #��z��5�      $= Depth1=�5�      > . $��2��5�      ��5�      ��  �� $ TemplatedParent=�$ OneWay=�$ ActualHeight�# Z $	 0.7�� 5�      ��  �� $
 Self=�$$ (mdt:ShadowAssist.ShadowDepth)�# Z 5�      �� 5�      $? contentPresenter��6'   #��z@ 5�   '   #��zA 5�   '   #��z��5�   '   $
��Left=�5�   '   B .  #��z��5�   '   #
 z
 5�   '   $��Center=�5�   '   $��1��5�   '   5�      5�      5�       5�   
   P� 5�       �@��HasItems .  . �5�      �� $ dropDownBorder��6+    � ��$ 95��6G   5�      ]� 5�      C 5�      �� 5�      D �@��
IsGroupingE . 66   �� 5�      "D �@%�IsVirtualizingWhenGroupingE .  6X   ./�5�      ��  � �� .  6B   5�      P� 5�      $F DropDownScrollViewer��6?    � �� .  . �5�      �� $ 
opaqueRect��6/    6G   �� *VerticalOffset+$1 DropDownScrollViewer�� �@��Top�� 5�      $ 
opaqueRect��60    6H   �� *HorizontalOffset+$1 DropDownScrollViewer�� �@��Left5�      5�      �� 5�      "  ��6$   .�5�   
   ��  � ��
 �����6(   �� 5�   
    � ��$	 0.5q�6,   �� 5�   
    � �� �	#FF5252526'   �� 5�   
    � ��
 �����6'   �� 5�   
    � ��$
 Auto=�6G   �� 5�   
    � ��$
 Auto=�6E   �� 5�   
    � �� . 6:   �� 5�   
    �@��PanningMode$
 Both=�65   �� 5�   
    �@��IsFlicksEnabled .  63   �� 5�   
    � ��$ Center=�65   �� 5�   
    �@��MaxDropDownHeight 6.   ��  �� $
 Self=�$ ActualHeight�# Z $ 4���� 5�   
    � ��# �   6/   �� 5�   
    � �� 6%   ��  �� $
 Self=�$ ActualHeight�# Z $	 0.5���� 5�   
    � ��8   6%   5�      5�      