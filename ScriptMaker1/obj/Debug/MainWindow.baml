   M S B A M L   `   `   `  ����G  CScriptMaker1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ScriptMaker1ScriptMaker1  5   	       ScriptMaker1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ScriptMaker1     5   	     � Title$  Version 1.01��5   	   $	��500��6   $	��810��6+   .��5	      � .+�5
   
   �� .@�5      �� $
��Main��6   .��5      �  � ColumnDefinitions 5      �� 5      �� 5      $	��30* �6+   �� 5      $
��368* �6+   .+�5      �� $"��Paste Area
(Paste data here)��6    �� TextAlignment$ Center=�6G   $
��Left=�6h   $��Century Gothic)�6�   $��26.751,10,0,0q�5      $	��Top=�63   $	��117��6K   $��2��6W   �� 5      $��SQL INSERT HELPER��6   $��2��68   $��226.751,10,293,382q�6H   $
��Auto��6d   $
��Auto��6r   $��	UltraBold"�6�   $��Lobster-Regular)�6�   $��18(�6�   $��UltraExpanded&�6�    J� RenderTransformOrigin$ 
0.35,0.282&�6�   �� 5      $0��*Copy Area
(copy to paste into your insert)��6   $ Center=�6U   $
��Left=�6v   $��Century Gothic)�6�   $��472.751,10,0,0q�5      $	��Top=�64   $ -0.012,0.085&�6L   $	��188��6q   $��2��6}   �� 5      -   5        $��txtInput��5      $
��Left=�6.   $	��345��6I   $��6,47,0,0q�6V    �� TextWrapping$
 Wrap=�6h    �� AcceptsReturn . $	��Top=�5      $	��274��66   $ -0.334,0.531&�6B   $��1��6g   
���   �$��2q�6�   $��2��6�   �� 5!      -   5        $��	txtOutput��5!      $
��Left=�6/   $	��345��6J   $��426.751,47,0,0q�6W   $
 Wrap=�6o   $	��Top=�5"      $	��275��66   $ -0.334,0.531&�6B   $��2��6g   
���   �$��2q�6�   �� 5&      
���   �$��2q�61   $
��Left=�6E   $	��148��6`   $��226.751,47,0,0q�6m   $	��Top=�6�   $	��195��6�   $��2��6�   �� 5'      $x��rSingle Insert:
Values separated by row
Creates one insert
Enter "Y" or "N" for quotes
(Ex: y = vchar, n = int etc)��6   $ Center=�5(      $
��Left=�6=   $��243.751,47,0,0q�6X   $	��Top=�6p   $	��161��6�   $��2��6�   �� 5)      -   5         ��Name$ txtBool2��5)      $
��Left=�60   $��23��6K   $��241.751,137,0,0q�6W   $
 Wrap=�6p   $�� ��6�   $	��Top=�6�   $	��163��6�   $��2��6�   �� 5*      -   5        $��Single Insert��5*      $
��Left=�65   $��287.751,165,0,0q�6P   $	��Top=�6i   $��76��6�   $ 0.361,-1.172&�6�   $��2��6�   �� 5.      
���   �$��2q�61   $
��Left=�6E   $	��139��6`   $��226.751,205,0,0q�6m   $	��Top=�6�   $	��195��6�   $��2��6�   �� 5/      $���}Multi Insert:
Values separated by spaces
Inserts separated by row
Enter "Y" or "N" for quotes
(Ex: y,n,y = vchar, int, vchar)��6   $ Center=�50      $
��Left=�6=   $��246.751,200,0,0q�6X   $	��Top=�6q   $	��158��6�   $��2��6�   $��89��6�   �� 51      -   5        $��Multi Insert��51      $
��Left=�64   $��287.751,312,0,0q�6O   $	��Top=�6h   $��75��6�   $ 0.361,-1.172&�6�   $��2��6�   �� 52      -   5        $��txtBool��52      $
��Left=�6-   $��23��6H   $��241.751,284,0,0q�6T   $
 Wrap=�6m   $�� ��6�   $	��Top=�6�   $	��167��6�   $��2��6�   �� 56      
���   �$��2q�61   $
��Left=�6E   $��45��6`   $��226.751,347,0,0q�6l   $	��Top=�6�   $	��196��6�   $��2��6�   �� 57      -   5        $��Clear��57      $
��Left=�6-   $��287.751,358,0,0q�6H   $	��Top=�6a   $��75��6y   $��2��6�   $ 0.604,0.667&�6�   5:      5<      �� 5=      $��About��6   .��5>      �� $
��Wrap=�6   $��10,17,365,80q�60   �� 6G   $
�2021��6K   �� 6Y   �� 6e   $�Version 1.01��6i   �� 6   �� 6�   $�Coded by: Lee Hutson��6�   �� 6�   �� 6�   �� 6�   �� 6�   $�Instructions:��6�    �� TextDecorations$ 	Underline{�6�   �� 6  �� 6  �� 6  �� 6   $
��Bold"�6$  $�Single Insert:��66  $ 	Underline{�6L  �� 6j  �� 6v  $%�1. Copy column from spreadsheet��6z  �� 6�  �� 6�  $2�,2. enter "Y" for quotes or "N" for no quotes��6�  �� 6�  �� 6	  $�3. Press "single Insert"��6  �� 69  �� 6E  $U�O4. Copy formatted insert values and paste to the rest of your insert statement.��6I  �� 6�  �� 6�  �� 6�  �� 6�  $
��Bold"�6�  $�Multi Insert:��6�  $ 	Underline{�6�  �� 6	  �� 6  $V�P1. Copy multiple columns from a spreadsheet (Values in cells cannot have spaces)��6  �� 6s  �� 6  $k�e2. enter "Y" for quotes or "N" for no quotes for each column data type (Ex: vchar, int, vchar = y,n,y��6�  �� 6  �� 6  $�3. Press "Multi Insert"��6  �� 6A  �� 6M  $U�O4. Copy formatted insert values and paste to the rest of your insert statement.��6Q  6�  5?      5D      5K      5L      