   M S B A M L   `   `   `  ���� O  KWTTextPersonalizator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:WTTextPersonalizatorWTTextPersonalizator  '    !WTTextPersonalizator.WorkingFrame   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     4local"clr-namespace:WTTextPersonalizator       � Title$
  WTTP��$	��450��$	��450��$	��450��$	��900��$	��900��$	��900�����	#FFE0D5C7 � 	Resources ��%    .���  � RowDefinitions �� $��50 ��� $��80 ��� $��* �.+��� -    ��Name$ 	pathLabel��$��0���� -    ��Name$ patchReload��$��Вышел патч��$	��150��$��Center=�$��Right=��� $��1�� �� Orientation$ Vertical=�.+��� -   $ 
changeMenu��$~��xИзменения в файле menu.csv (В бой, Техника уничтожена, Попадание и т.д.)���� $ 
Horizontal=�.+��� -   $ frequentOptions��$#��Частые варианты��$	��135���� -    ��Name$ combo1��$	��180��
���   ��� $ 
Horizontal=�.+��� -   $ 	initValue��$)��#Начальное значение���� -    ��Name$ init1��$	��180��$��1q��� -   $ endValue��$'��!Конечное значение���� -	   $ text1��$	��180��$��1q� �� SelectionBrush �	#FF969263�� -
   $ change1��$	��100��$��Поменять��$��5,0,0,0q��� -   $ clear1��$	��100��$��Очистить��$��5,0,0,0q��� $����Если текст не поменялся - повторите изменение. В игре присутствуют несколько надписей с одинаковыми значениями���� $��2��
���   �$��1��$	��Top=��� $��2��.+��� -   $ changeUi��$����Изменения в файле ui.csv (Миссия выполнена, Миссия провалена, Начать тушить пожар)���� $ 
Horizontal=�.+��� -   $ frequentOptions1��$#��Частые варианты��$	��135���� -   $ combo2��$	��180���� $ 
Horizontal=�.+��� -   $ 
initValue1��$)��#Начальное значение���� -   $ init2��$	��180��$��1q��� -   $ 	endValue1��$'��!Конечное значение���� -   $ text2��$	��180��$��1q��� -   $ change2��$	��100��$��Поменять��$��5,0,0,0q��� -   $ clear2��$	��100��$��Очистить��$��5,0,0,0q��� -   	 ��Name$	 
configText��$
��Wrap=��� $��2��$��Bottom=�$ 
Horizontal=�.+��� -   $ 
saveConfig��$%��Сохранять конфиг��$��30��$��Bottom=�$	��150���� -   $ configStatus��$��Cохраняется��
��� � ��� -   $ 
loadConfig��$%��Загрузить конфиг��$��30��$	��150���� -   $ instalConfig��$��Установить��$	��150��� -   $��myProgressBar��
 � IsIndeterminate
 . $y�Hidden=�$	��160���� -   $ instruction��$��Инструкция��$��80��$��0,0,5,0q��� -   $ helpMe��$	��100��$��Поддержать��