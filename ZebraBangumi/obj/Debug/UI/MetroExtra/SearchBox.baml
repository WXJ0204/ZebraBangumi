   M S B A M L   `   `   `  ����G  CZebraBangumi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:MetroExtras.ConvertersMetroExtras.Converters  5   
   )clr-namespace:MetroExtrasMetroExtras  5   
   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null{Sclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf#MaterialDesignThemes.Wpf.Converters 5   
       MetroExtras.SearchBox   5   
   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   
   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   
   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   
   @d2http://schemas.microsoft.com/expression/blend/2008     5   
   ;
exConverts$clr-namespace:MetroExtras.Converters     5   
   +localclr-namespace:MetroExtras     5   
   j
convertersSclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf     5   
   ;mdt1http://materialdesigninxaml.net/winfx/xaml/themes  5	   
   -   5        $��40��5   
   $	��200��5   
   )  #MaterialDesignThemes.Wpf.HintAssist    Hint$  Search��5   
   
�������
�������   HintOpacity$	 0.4Q�5   
   $	��0.5q�5   
   
�������+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�5   
   ��5   
   ��  �� RelativeSource ��  �� Mode$
 Self=� �� Path$ ActualHeight�.   (MetroExtras.Converters.ExCommanConverter   Instance �� 	Converter# Z  �� ConverterParameter$	 0.5��.��5   .   ��5      �� 5   
   	 �� 
TargetType"	 ��6   .R�5      � 
 �Name$

 root��6   .+�5      ��  ��Name$ border��6   #��z��5      #��z��5      #��z��5       J� Opacity$
 0.85Q�5         Darken .  J� Effect 5      ��  �� $ TemplatedParent=�$$ (mdt:ShadowAssist.ShadowDepth)�9  3MaterialDesignThemes.Wpf.Converters.ShadowConverter   Instance# Z  �� CornerRadius 5!      ��  �� $ TemplatedParent=�$ ActualHeight�0   *MetroExtras.Converters.CornerRadiusConvert   Instance# Z $	 0.5��� 5"       � ColumnDefinitions 5#      �� 5$      ��6+   ��  �� ElementName$ border��$ CornerRadius�   GetCornerValue# Z $ TopLeft���� 5%      �� 5&      ��6+   ��  �� $ TemplatedParent=�$ ActualHeight�.+�5(      � $
 textFieldGrid��6   $��1��5)      #��z��5*      $��Center=�5+      $
��Left=�5,      $��1��5-      .+�5.      ��  ��Name$ PART_ContentHost��6'   |�.  $��Hidden=�5/   '   $��Hidden=�6N    J� SnapsToDevicePixels# z 50   '    � UseLayoutRounding# z 51   '   (  "MaterialDesignThemes.Wpf.SmartHint  52        Name$
 Hint��6(   #��z��55   (   #��z��56   (      Hint 53   (   �� $ (mdt:HintAssist.Hint)� �� *TemplatedParent+   	HintProxy 54   (   ��  �� *TemplatedParent+B  <MaterialDesignThemes.Wpf.Converters.HintProxyFabricConverter   Instance# Z    HintOpacity 57   (   �� $" (mdt:HintAssist.HintOpacity)� �� *TemplatedParent+   UseFloating 58   (   �� $! (mdt:HintAssist.IsFloating)� �� *TemplatedParent+   FloatingScale 59   (   �� $$ (mdt:HintAssist.FloatingScale)� �� *TemplatedParent+   FloatingOffset 5:   (   �� $% (mdt:HintAssist.FloatingOffset)� �� *TemplatedParent+5;      �� 5<      $��btnDoSearch��6   -   5        $��2��5=      
�������$��Stretch=�5?      $��0q�5@      $ Depth3=�5A      $
��Auto��5B      ��5D      �� 5E      "	 ��6.   .R�5F   "   �  5G   &   �� 5H   *   $��1* �6;   �� 5I   *   $��2* �6;   �� 5J   *   $��1* �6;     � RowDefinitions  5L   &   �� 5M   *   $��1* �68   �� 5N   *   $��2* �68   �� 5O   *   $��1* �68   .+�5Q   &   A� #��z��6.   #��z��5R   .   $��1��5S   .   $��1��6>   
�������$ 0Q�5U   .   F� 5V   &   ! F�Name$
! icon��6+   $��1��5W   +   $��1��6;   �����@8�w��@8��	��	@8�w�@8��m@8��� ��	��� �w����� �m�m��� �w���� ���	��� @8�m@8�w�� ��
 ��
р�����	#��z��5Y   +   $��Stretch=�5Z   +   $��Stretch=�6I   " �� Stretch$" Uniform=�6e   $
 0.85Q�5[   +   ��5Y   Q   ��  �� $
 Self=�$ ActualHeight�# Z $
 0.08��5[   +   5\   #   # �� Triggers# 5]   "   P� 5^   &   $ P� Property$ �@J�IsMouseOver% P� Value% . . �5_   *   �� & �� 
TargetName$
& icon��61   ' �� Property' �@J�Opacity( �� Value$( 1Q�6V   5`   '   5b      5d      5e      5f      5g      .��5h      5i      