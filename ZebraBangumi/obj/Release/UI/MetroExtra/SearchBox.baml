   M S B A M L   `   `   `  ���� G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  )clr-namespace:MetroExtrasMetroExtras  V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null{Sclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf#MaterialDesignThemes.Wpf.Converters     MetroExtras.SearchBox   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ;
exConverts$clr-namespace:MetroExtras.Converters     +localclr-namespace:MetroExtras     j
convertersSclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf     ;mdt1http://materialdesigninxaml.net/winfx/xaml/themes  -   $��40��$	��200��)  #MaterialDesignThemes.Wpf.HintAssist    Hint$  Search��
�������
�������   HintOpacity$	 0.4Q�$	��0.5q�
�������+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�����  �� RelativeSource ��  �� Mode$
 Self=� �� Path$ ActualHeight�.   (MetroExtras.Converters.ExCommanConverter   Instance �� 	Converter# Z  �� ConverterParameter$	 0.5��.������ 	 �� 
TargetType"	 ��.R�� 
 �Name$

 root��.+���  ��Name$ border��#��z��#��z��#��z�� J� Opacity$
 0.85Q�   Darken .  J� Effect ��  �� $ TemplatedParent=�$$ (mdt:ShadowAssist.ShadowDepth)�9  3MaterialDesignThemes.Wpf.Converters.ShadowConverter   Instance# Z  �� CornerRadius ��  �� $ TemplatedParent=�$ ActualHeight�0   *MetroExtras.Converters.CornerRadiusConvert   Instance# Z $	 0.5���  � ColumnDefinitions �� ����  �� ElementName$ border��$ CornerRadius�   GetCornerValue# Z $ TopLeft���� �� ����  �� $ TemplatedParent=�$ ActualHeight�.+�� $
 textFieldGrid��$��1��#��z��$��Center=�$
��Left=�$��1��.+���  ��Name$ PART_ContentHost��|�.  $��Hidden=�$��Hidden=� J� SnapsToDevicePixels# z  � UseLayoutRounding# z (  "MaterialDesignThemes.Wpf.SmartHint    Name$
 Hint��#��z��#��z��   Hint �� $ (mdt:HintAssist.Hint)� �� *TemplatedParent+   	HintProxy ��  �� *TemplatedParent+B  <MaterialDesignThemes.Wpf.Converters.HintProxyFabricConverter   Instance# Z    HintOpacity �� $" (mdt:HintAssist.HintOpacity)� �� *TemplatedParent+   UseFloating �� $! (mdt:HintAssist.IsFloating)� �� *TemplatedParent+   FloatingScale �� $$ (mdt:HintAssist.FloatingScale)� �� *TemplatedParent+   FloatingOffset �� $% (mdt:HintAssist.FloatingOffset)� �� *TemplatedParent+�� $��btnDoSearch��-   $��2��
�������$��Stretch=�$��0q�$ Depth3=�$
��Auto������ "	 ��.R��  �� $��1* ��� $��2* ��� $��1* �  � RowDefinitions  �� $��1* ��� $��2* ��� $��1* �.+�A� #��z��#��z��$��1��$��1��
�������$ 0Q�F� ! F�Name$
! icon��$��1��$��1�������@8�w��@8��	��	@8�w�@8��m@8��� ��	��� �w����� �m�m��� �w���� ���	��� @8�m@8�w�� ��
 ��
р�����	#��z��$��Stretch=�$��Stretch=�" �� Stretch$" Uniform=�$
 0.85Q�����  �� $
 Self=�$ ActualHeight�# Z $
 0.08��# �� Triggers# P� $ P� Property$ �@J�IsMouseOver% P� Value% . . ��� & �� 
TargetName$
& icon��' �� Property' �@J�Opacity( �� Value$( 1Q�.��