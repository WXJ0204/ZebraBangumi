﻿#pragma checksum "..\..\..\..\UI\Controls\AddableSelectBlock.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "2C6478E5C8A21ECB126AF1954C4B78D12C29E326"
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
using MetroExtras;
using MetroExtras.Converters;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using ZebraBangumi;


namespace ZebraBangumi {
    
    
    /// <summary>
    /// AddableSelectBlock
    /// </summary>
    public partial class AddableSelectBlock : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 32 "..\..\..\..\UI\Controls\AddableSelectBlock.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Border back;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\..\..\UI\Controls\AddableSelectBlock.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cbMainType;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\..\..\UI\Controls\AddableSelectBlock.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cbSecondType;
        
        #line default
        #line hidden
        
        
        #line 48 "..\..\..\..\UI\Controls\AddableSelectBlock.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal MetroExtras.SearchBox searchBox;
        
        #line default
        #line hidden
        
        
        #line 49 "..\..\..\..\UI\Controls\AddableSelectBlock.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cbRangeType;
        
        #line default
        #line hidden
        
        
        #line 55 "..\..\..\..\UI\Controls\AddableSelectBlock.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.WrapPanel wpItems;
        
        #line default
        #line hidden
        
        
        #line 57 "..\..\..\..\UI\Controls\AddableSelectBlock.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Shapes.Rectangle lockBlock;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/ZebraBangumi;component/ui/controls/addableselectblock.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\UI\Controls\AddableSelectBlock.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal System.Delegate _CreateDelegate(System.Type delegateType, string handler) {
            return System.Delegate.CreateDelegate(delegateType, this, handler);
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.back = ((System.Windows.Controls.Border)(target));
            return;
            case 2:
            this.cbMainType = ((System.Windows.Controls.ComboBox)(target));
            
            #line 36 "..\..\..\..\UI\Controls\AddableSelectBlock.xaml"
            this.cbMainType.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ComboBox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.cbSecondType = ((System.Windows.Controls.ComboBox)(target));
            
            #line 41 "..\..\..\..\UI\Controls\AddableSelectBlock.xaml"
            this.cbSecondType.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ComboBox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.searchBox = ((MetroExtras.SearchBox)(target));
            return;
            case 5:
            this.cbRangeType = ((System.Windows.Controls.ComboBox)(target));
            
            #line 49 "..\..\..\..\UI\Controls\AddableSelectBlock.xaml"
            this.cbRangeType.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.RangeType_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 6:
            this.wpItems = ((System.Windows.Controls.WrapPanel)(target));
            return;
            case 7:
            this.lockBlock = ((System.Windows.Shapes.Rectangle)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

