   M S B A M L   `   `   `  ���� O  KWTTextPersonalizator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:WTTextPersonalizatorWTTextPersonalizator      WTTextPersonalizator.App   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     4local"clr-namespace:WTTextPersonalizator       �� 	Resources   �� 
TargetType �� Property �� Value   msgBoxStyle-  'System.Windows.Input.KeyboardNavigation �� 
TargetType ��Name J� SnapsToDevicePixels ��Name �� Triggers	 P� Property
 P� Value �� 
TargetName �� Triggers ]� 
Conditions �� Property �� Value  ComboBoxToggleButton � ColumnDefinitions �� CornerRadius F�Name  ComboBoxTextBox �� 	ClickMode d� 	IsChecked �� Path �� Mode �� RelativeSource J� IsHitTestVisible �� SelectionBoxItem �� SelectionBoxItemTemplate ��Name �� 
IsReadOnly �� 
IsReadOnly �� IsDropDownOpen � AllowsTransparency  � ActualWidth! �� MaxDropDownHeight" K� IsItemsHost#   DirectionalNavigation$ P� 
SourceName% �� Padding��%E  '��       '�� /     &	  ^     '�� �     '�� /    &	 k    &	 �    '��     7  7  '�� r    �� " ��.���  � ��$ Century Gothic)��� " ��.���  � ��$ Century Gothic)��� " ��.���  � ��$ Century Gothic)��� " ��.���  � ��$ Century Gothic)���  � �� �	#FFE2DACF��  �@��SelectionBrush �	#FF969263��  � ��# � ����  � ��
 �������  � ��# � ����  � ��$ 1q���  �@ TabNavigation$
 None=���  � ��$
 Left=���  �@�FocusVisualStyle Z� ��  �@J�	AllowDrop . ��  �@��PanningMode$ VerticalFirst=���  �@��IsFlicksEnabled .  ��  � �� �� " ��.R��� $ border��#��z��#��z��#��z�� . ._��� $ PART_ContentHost��|�.  $��Hidden=�$��Hidden=� P� 	 � {�
 .  . ��� $ border�� �@J�Opacity$
 0.56Q�P� 	 �@J�IsMouseOver
 . . ��� $ border�� � ��
 �   �P� 	 �@J�IsKeyboardFocused
 . . ��� $ border�� � ��
 �   � ]�  �� + �@��#IsInactiveSelectionHighlightEnabled . ��  �@��IsSelectionActive .  ./���  �@��SelectionBrush
 ������� " ��.���  � ��$ Century Gothic)���  �@�OverridesDefaultStyle . ��  � �� �� " ��.R��� $	��0.5q�
���   �._�� #��z��.+��� $��Center=�$��Center=� P� 	 �@J�IsMouseOver
 . . ���  � ��
 �����P� 	 �@J�IsMouseOver
 .  . ���  � ��
 ������� " d�.R��  �� �� $��20 �.+��� $ Border��$��2��$ 0��
�������
�������$��1q��� $��0��$ 0��$��1q�
�������
�������$��0,0,1,0q�F� $ Arrow��$��1��
���   �$��Center=�$��Center=�=����        �    �� � 	= ��[ � z �� � z     � 	=  	= 	 P� 	 �@J�IsMouseOver
 . . ��� $ Border�� � �� �#808080P� 	 �@d�	IsChecked$

 trueY�. ��� $ Border�� � �� �#E0E0E0P� 	 � {�
 .  . ��� $ Border�� � �� �#EEEEEE�� $ Border�� � �� �#AAAAAA��  � ��
 �   ��� $ Arrow�� � �� �#888888�� " ��.R��� $ PART_ContentHost��|�.  #��z���� " ��.���  �@J�SnapsToDevicePixels .  ��  �@�OverridesDefaultStyle . ��  � ��$ Century Gothic)���  � ��$
 Auto=���  � ��$
 Auto=���  � �� . ��  � ��$	 120����  � ��$ 20����  � ��
 �   ���  � �� �� " ��.R�� .+�d� $��ToggleButton��8��  $��2��|�.  $ Press=� �� $ IsDropDownOpen�$ TwoWay=� �� *TemplatedParent+�� $��ContentSite�� .  #��z #��z #��z��$��3,3,23,3q�$��Center=�$
��Left=��� $ PART_EditableTextBox��8�� $
��Left=�$��Center=�$��3,3,23,3q�|�. 
���   �
���  ��$y�Hidden=�# z ��Z� � $��Popup��$��Bottom=�#��z  . |�.  $��Slide=�.��� $��DropDown�� . #��z  #��z! .+��� $ DropDownBorder��
�������$��1q����#888888�� $��4,6,4,6q� . .���� " . $# 	Contained=� P� 	 �@��HasItems
 .  . ��� $ DropDownBorder�� � ��$ 95��P� 	 � {�
 .  . ���  � ��
 �����P� 	 �@��
IsGrouping
 . . ���  � �� .  P� $$ Popup��	 �@�AllowsTransparency
 . . ��� $ DropDownBorder�� �@��CornerRadius$ 0���� $ DropDownBorder�� � ��$ 0,2,0,0q�P� 	 �@��
IsEditable
 . . ���  � �� .  �� $ PART_EditableTextBox�� � y�$ Visible=��� $ ContentSite�� � y�$ Hidden=� �� " ��.���  �@J�SnapsToDevicePixels .  ��  �@�OverridesDefaultStyle . ��  � ��$ Stretch=���  � ��$ Stretch=���  � ��
 �   ���  � �� �� " ��.R��� $��Border��$% 0q� . ._���  P� 	 �@��IsHighlighted
 . . ��� $ Border�� � ��
 �����P� 	 � {�
 .  . ���  � ��
 �����