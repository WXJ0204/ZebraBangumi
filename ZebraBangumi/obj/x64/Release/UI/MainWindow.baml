   M S B A M L   `   `   `  ���� G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  )clr-namespace:MetroExtrasMetroExtras  ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters      ZebraBangumi.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:ZebraBangumi     )mexclr-namespace:MetroExtras     4exc$clr-namespace:MetroExtras.Converters     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � Title$  
MainWindow��$	��640��$
��1280�� � WindowStyle$
 None=� � AllowsTransparency .  � 
ResizeMode$ CanMinimize=���Z�  � 	Resources  �� MergedDictionaries<  6MaterialDesignThemes.Wpf.Transitions.TransitionerSlide �� 
TargetTypeC  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase �� Property �� Value;  5MaterialDesignThemes.Wpf.Transitions.TransitionEffect	   Kind4  .MaterialDesignThemes.Wpf.Transitions.SlideWipe
   	Direction��  �� �� "  .���  �@ OpeningEffect   $
	 None=���  �@ ForwardWipe   $
 Up=���  �@ BackwardWipe   $

 Down=�%
   '        .��� .+�� -   $��mainShow��!   MetroExtras.MetroExtraColor   	MainBrush
 �2�2�$��	200,0,0,0q�   
LightBrush ��  �� RelativeSource ��  �� Mode$
 Self=� �� Path$% (mex:MetroExtraColor.MainBrush)�-   'MetroExtras.Converters.ExColorConverter   Light �� 	Converter# Z  �� ConverterParameter$	 0.7��.+��� $��2,0,2,2q� �� CornerRadius$ 	0,0,15,15��$��0,36,0,0q�����  �� $ FindAncestor=� �� AncestorType$
 GridL�$% (mex:MetroExtraColor.MainBrush)�����  �� $ FindAncestor=�$
 GridL�$&  (mex:MetroExtraColor.LightBrush)�._�7  1MaterialDesignThemes.Wpf.Transitions.Transitioner  -   $��transitioner�� �� SelectedIndex$ 0��$��1q�.@�     ForwardWipe   $
 Up=�   BackwardWipe   $

 Down=�.��   ZebraBangumi.Slide1   ��  �� ElementName$ mainShow��$% (mex:MetroExtraColor.MainBrush)�  .��	   ZebraBangumi.Slide2	   �� $ mainShow��$% (mex:MetroExtraColor.MainBrush)�  .��
   ZebraBangumi.Slide3
   �� $ mainShow��$% (mex:MetroExtraColor.MainBrush)�  .��   ZebraBangumi.Slide4   �� $ mainShow��$% (mex:MetroExtraColor.MainBrush)�  .��   ZebraBangumi.Slide5   �� $ mainShow��$% (mex:MetroExtraColor.MainBrush)�  .��   ZebraBangumi.Slide6   �� $ mainShow��$% (mex:MetroExtraColor.MainBrush)��� -   $ 	15,15,0,0��$��36��$	��Top=�����  �� $ FindAncestor=�$
 GridL�$% (mex:MetroExtraColor.MainBrush)��� -   $��btnClose��$��Right=�$��20��$��0,8,10,0q�$	��Top=�$��20��   MaterialDesignFlatButton#��[  $��0q�
���������0  *MaterialDesignThemes.Wpf.PackIconExtension  *WindowClose+�� -   $��btenMinimize��$��Right=�$��20��$��0,8,35,0q�$	��Top=�$��20��#��[  $��0q�
���������  *WindowMinimize+�� -   $��stpTabs��$
��Left=�$��0,50,0,0q�$	��200��.+�   ZebraBangumi.TabButton     ZebraBangumi.TabButton   Click$ BtnTab_Click��$��按钮一号��$��Right=�  ExTabButton#��[ ���	#FF32CD7C  $ BtnTab_Click��$��按钮二号��$��Right=�#��[ 
����� �  $ BtnTab_Click��$��按钮三号��$��Right=�#��[ 
����d�  $ BtnTab_Click��$��按钮四号��$��Right=�#��[ 
����iA�  $ BtnTab_Click��$��按钮五号��$��Right=�#��[ 
����Zj�  $ BtnTab_Click��$��按钮六号��$��Right=�#��[ 
����+��