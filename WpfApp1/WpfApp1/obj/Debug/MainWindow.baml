   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � .+�5
   
   �� $
��Left=�6   $��	117,0,0,0q�6/   $
��Wrap=�6B   $?��9Благотворительные организации��6V   $	��Top=�6{   $	��582��6�   $��25(�6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ DGridCharities��5         AutoGenerateColumns .     
IsReadOnly . $��52,66,41,15q�6Y      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        Name��,  &System.Windows.Controls.DataGridColumn   Header$ Название��5   3      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6E      FontSize$ 20Q�6o      
FontWeight$
 Bold"�6}   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6O   �� *CharityName+
   ElementStyle
 5      �� 5       �� 
TargetType" ��6    .�5      ��  �� Property � �� �� Value$
 Wrap=�6=   6L   �� 5       � ��$ Center=�6D   6U   5      5        5      $ Информация��6%   $ * 69   	 6C   �� *CharityDescription+
 5      �� 5      " ��6    .�5      ��  � ��$
 Wrap=�6=   6L   5      5      4  .System.Windows.Controls.DataGridTemplateColumn  5         CellTemplate 5      �� 5      .R�5      �� ��6$   �� *Logo+5       5"      ��5$      �� 5%      )  #System.Windows.Controls.DataGridRow"  6   .�5&      -   5        5'      5)      5+      5,      