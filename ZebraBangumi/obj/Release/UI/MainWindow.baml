   M S B A M L   `   `   `  ���� G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ZebraBangumiZebraBangumi  )clr-namespace:MetroExtrasMetroExtras  ?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters      ZebraBangumi.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:ZebraBangumi     )mexclr-namespace:MetroExtras     4exc$clr-namespace:MetroExtras.Converters     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     � Title$  ZebraBangumi��$	��640��$
��1280�� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � AllowsTransparency .  � 
ResizeMode$ CanMinimize=���Z�  � 	Resources  �� MergedDictionaries<  6MaterialDesignThemes.Wpf.Transitions.TransitionerSlide �� 
TargetTypeC  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase �� Property	 �� Value;  5MaterialDesignThemes.Wpf.Transitions.TransitionEffect
   Kind7  1MaterialDesignThemes.Wpf.Transitions.SlideOutWipe��  %�   '        �� "  .���  �@ OpeningEffect	   $
 ExpandIn=���  �@ ForwardWipe	   ��  �@ BackwardWipe	   .��� .+�� -   $��mainShow��!   MetroExtras.MetroExtraColor   	MainBrush
 �2�2�$��	200,0,0,0q�   
LightBrush ��  �� RelativeSource ��  �� Mode$
 Self=� �� Path$% (mex:MetroExtraColor.MainBrush)�-   'MetroExtras.Converters.ExColorConverter   Light �� 	Converter# Z  �� ConverterParameter$	 0.7��.+��� $��2,0,2,2q� �� CornerRadius$ 	0,0,15,15��$��0,36,0,0q�����  �� $ FindAncestor=� �� AncestorType$
 GridL�$% (mex:MetroExtraColor.MainBrush)�����  �� $ FindAncestor=�$
 GridL�$&  (mex:MetroExtraColor.LightBrush)�._�7  1MaterialDesignThemes.Wpf.Transitions.Transitioner  -   $��transitioner�� �� SelectedIndex$ 0��$��1q�.@�  .��   ZebraBangumi.Slide1  -     Name$ slide1�� ��  �� ElementName$ mainShow��$% (mex:MetroExtraColor.MainBrush)� J� 	CacheMode &	   System.Windows.Media.BitmapCache	   	  RenderAtScale$ 1Q� 	  EnableClearType .   	  SnapsToDevicePixels .    .��
   ZebraBangumi.Slide2
  -    
 Name$ slide2�� �� $ mainShow��$% (mex:MetroExtraColor.MainBrush)� 	  $ 1Q� .   .    .��   ZebraBangumi.Slide3  -     Name$ slide3�� �� $ mainShow��$% (mex:MetroExtraColor.MainBrush)� 	  $ 1Q� .   .    .��   ZebraBangumi.Slide4  -     Name$ slide4�� �� $ mainShow��$% (mex:MetroExtraColor.MainBrush)� 	  $ 1Q� .   .    .��   ZebraBangumi.Slide5  -     Name$ slide5�� �� $ mainShow��$% (mex:MetroExtraColor.MainBrush)� 	  $ 1Q� .   .    .��   ZebraBangumi.Slide6  -	      Name$  slide6�� �� $ mainShow��$% (mex:MetroExtraColor.MainBrush)��� -
   $ 	15,15,0,0��$��36��$	��Top=�����  �� $ FindAncestor=�$
 GridL�$% (mex:MetroExtraColor.MainBrush)�._��� $
��Left=�$��Center=�$��14(�$
��Bold"�$
��30,0q�����  �� $ FindAncestor=�$ WindowL�$ Title�����  �� $ FindAncestor=�$
 GridL�$&  (mex:MetroExtraColor.LightBrush)��� -   $��btnClose��$��Right=�$��20��$��0,8,10,0q�$	��Top=�$��20��   MaterialDesignFlatButton#��[  $��0q�
���������0  *MaterialDesignThemes.Wpf.PackIconExtension  *WindowClose+�� -   $��btnMinimize��$��Right=�$��20��$��0,8,35,0q�$	��Top=�$��20��#��[  $��0q�
���������  *WindowMinimize+�� -   $��stpTabs��$
��Left=�$��0,50,0,0q�$	��200��! J� SnapsToDevicePixels! . .+�   ZebraBangumi.TabButton     ZebraBangumi.TabButton"   Click$" BtnTab_Click��$��数量占比��$��Right=�  ExTabButton#��[ ���	#FF32CD7C  $" BtnTab_Click��$��次数统计��$��Right=�#��[ 
����� �  $" BtnTab_Click��$��变化曲线��$��Right=�#��[ 
����d�  $" BtnTab_Click��$��热点词云��$��Right=�#��[ 
����iA�  $" BtnTab_Click��$��导出文档��$��Right=�#��[ 
����Zj�  $" BtnTab_Click��$��关于设置��$��Right=�#��[ 
����+��