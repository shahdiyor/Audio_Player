   M S B A M L   `   `   `  ���� C  ?MyPlayer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:MyPlayerMyPlayer      MyPlayer.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:MyPlayer     -     � Title$  
MainWindow��$	��450��$	��800��$y�Visible=� � WindowStyle$
 None=� � AllowsTransparency . ��Z�  � 	Resources    Minimize icon �� ImageSource j� Stretch  Miximize  
Close icon  
Heart icon  Home  AnimateHeart  Playlist  AnimateList  AnimateHome 	 File 
 FileAnim  FocusVisual �� Property �� Value J� SnapsToDevicePixels	 �� StrokeDashArray  Button.Static.Background
 �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border  Button.Disabled.Foreground  MinimizeStyle �� 
TargetType �� 
TargetType ��Name ��Name �� Triggers P� Property P� Value �� 
TargetName  Maximize  
CloseStyle  
HeartStyle J� OpacityMask  	HomeStyle  PlayListStyle  	FileStyle��%o  &	        &	 *     &	 V     &	 �     &	 �     &	 �     &	     &	 5    &	 _    &		 �    &	
 �    &	 �    &	 +    &	 @    &	 U    &	 j    &	     &	 �    &	 �    &	 �    &	 �    &	 �    7  7  7  7   7   7  7  7  &	 �    7  7  7  7  7  7  7  7  &	     7  7  7  7  7  7  7  7  &	 �
    7  7  7  7  7  7  7  7  &	 i    7  7  7  7  7  7  7  7  &	     7  7  7  7  7  7  7  7  &	 �    7  7  7  7 	 7 
 7  7  7  �� $ Assets/Minimize.png��$
 Fill=��� $ Assets/maximaze11.png��$
 Fill=��� $ Assets/CloseFull.png��$
 Fill=��� $ Assets/heartFully.png��$
 Fill=��� $ Assets/homeFully.png��$
 Fill=��� $ Assets/Heartanim.png��$
 Fill=��� $! Assets/PlaylistFullypng.png��$
 Fill=��� $ Assets/Listanim.png��$
 Fill=��� $ Assets/Homeanim.png��$
 Fill=��� $ Assets/FileFull.png��$
 Fill=��� $ Assets/FileAnim.png��$
 Fill=��� .���  � �� �� .R��� $��2q� . #��� ��$��1��$		 1 2R��� $
 	#FFDDDDDD���� $
 	#FF707070���� $
 	#FFBEE6FD���� $
 	#FF3C7FB1���� $
 	#FFC4E5F6���� $
 	#FF2C628B���� $
 	#FFF4F4F4���� $
 	#FFADB2B5���� $
 	#FF838383���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z�� . ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border��8   � ��P�  � �� . . ��� $ border��8   � ��P�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z�� . ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border��8   � ��P�  � �� . . ��� $ border��8   � ��P�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z�� . ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border��8   � ��P�  � �� . . ��� $ border��8   � ��P�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z�� .  �� $ heartFull.png��._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border��8   � ��P�  � �� . . ��� $ border��8   � ��P�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z�� .  �� $ heartFull.png��._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border��8   � ��P�  � �� . . ��� $ border��8   � ��P�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z�� .  �� $ heartFull.png��._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border��8   � ��P�  � �� . . ��� $ border��8   � ��P�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z�� .  Z� ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border��8   � ��P�  � �� . . ��� $ border��8   � ��P�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ��.���  J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect  ���� $ Главная.png�� � ColumnDefinitions �� $
��331* ��� $	��65* �.+��� -   $�� ��$��1��$
��Left=�$��18,6,0,0q�$	��Top=�$��28��$��22��$��0q� � IsSharedSizeScope . #���  ��Z�    ���� $' !Для перемещения.png������ $ Свернуть1.png�� �� $ Свернуть1.png�� �� Opacity$
 0.99Q��� $�� ��$��1��$
��Left=�$��56,6,0,0q�$	��Top=�$��28��$��22�� J� RenderTransformOrigin$ 
0.2,-0.545&�#���  ��Z� ���� $ Assets/maximaze11.png�� �� $ Assets/maximaze11.png������ $ max.png��   �� -   $�� ��$��1��$
��Left=�$��93,6,0,0q�$	��Top=�$��28��$��22��$ 
0.2,-0.545&�#���  ��Z� ���� $ CloseFull.png�� �� $ CloseFull.png������ $ 	Close.png��   �� $��1�����	#FFF4F4F5$
��Left=�$��0��$��795,304,-670,0q�
���   �$	��Top=�$��6���� $�� ��$
��Left=�$��
13,105,0,0q�$	��Top=�$��84��$��64��#���  ��Z�  �� $ heartFull.png������ $ heartFull.png������ $ 
heart1.png���� $�� ��$
��Left=�$��	13,31,0,0q�$	��Top=�$��84��$��64��#���  ��Z�  �� $ homeFull.png������ $ homeFull.png������ $ Home.png���� $�� ��$
��Left=�$��
13,180,0,0q�$	��Top=�$��84��$��64��#���  ��Z�  �� $ PlaylistFull1.png������ $ PlaylistFull1.png������ $ Playlist1.png���� $
��Left=�$	��330��$��
123,47,0,0q�$	��Top=�$	��469��$��
Player.png���� -   $�� ��$
��Left=�$��139,383,0,0q�$	��Top=�$��53��$��43��#���  ��Z�  �� $ FileFull.png������ $ FileFull.png������ $ File.png���� $
��Left=�$��47��$��532,311,0,0q�$	��Top=�$��49��$��
Volume.png���� $��2��$
��Left=�$	��330��$��
592,48,0,0q�$	��Top=�$	��190��$��List.png���� -    ��Name$ 
PlayButton��$
��Play��$��Center=�$��75��$ 0.421,0.281&�$��46��$��0,312,273,92q�
�������$��Right=���Z� ����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FFFF00C5�� � Offset$ 0Q�� $ 	#FFE233DA��$ 1Q��� -    ��Name$
 Pere��$
��Left=�$��140,289,0,0q�$	��Top=�$	��401����
� .��� $ 	#FFFF00A2��$ 0.016Q�� $ 	#FF00FFF3��$ 1Q��� -    ��Name$ Playlist��$��2��$
��Left=�$	��276��$��
604,76,0,0q�$	��Top=�$	��164���� -     ��Name$  label1��$��	00:00:00
��$
��Left=�$��139,265,0,0q�$	��Top=�$��53��$��24�����	#DDFFFFFF�� -	   $  label2��$��	00:00:00
��$
��Left=�$��488,265,0,161q�$��53�����	#DDFFFFFF�� -
   $
��Stop��$
��Left=�$��139,319,0,0q�$	��Top=�$��67���� -   $	 Vol��$
��Left=�$��512,309,0,0q�! � Minimum$! 0Q�" � Maximum$	" 100Q�$	��Top=�   MaterialDesignDiscreteSlider#��[ $��54��$	��103��
�������
 �����# � LargeChange$	# 0.1Q�$ � SmallChange$
$ 0.01Q�% � Value$	% 100Q�z�V� .~��� �� �� & �� Angle$& -90.474Q�T� �� -   $  label3��$E��?Выберите файл для воспроизведения��$��189,88,0,338q�$��Center=�$��24��$	��342�����	#DDFFFFFF$��Center=�$��Center=�$
��Left=�