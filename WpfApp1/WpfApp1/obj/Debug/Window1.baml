   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.Window1   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  Window1��5   	   $	��450��6   $	��800��6&   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DGridCharities��5
         AutoGenerateColumns .     
IsReadOnly . $��52,66,41,15q�6Y      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 
Автор��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 280 64      FontSize$ 20Q�6[      
FontWeight$
 Bold"�6i   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6@   �� *Author+
   ElementStyle
 5      �� 5       �� 
TargetType" ��6    .�5      ��  �� Property � �� �� Value$
 Wrap=�6=   6L   �� 5       � ��$ Center=�6D   6U   5      5        5      $ 
Текст��6%   $ * 64   	 6>   �� *Text+
 5      �� 5      " ��6    .�5      ��  � ��$
 Wrap=�6=   6L   5      5        5      $ Дата создания��6%   $ * 6<   	 6F   �� *CreationDate+ �� StringFormat$ {0:dd.MM.yy HH:mm:ss}��
 5      �� 5      " ��6    .�5      ��  � ��$
 Wrap=�6=   6L   5      5!      5#      �� 5$   
   -   5        $��Обновить��5$      $
��Left=�6$   $��	38,26,0,0q�6?   $	��Top=�6R   $��75��6j   6u   5%      5&      