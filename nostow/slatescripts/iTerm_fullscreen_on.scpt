FasdUAS 1.101.10   ��   ��    k             l     ����  I     �� ���� 0 setfullscreen setFullScreen   	 
 	 m       �   
 i T e r m 
     m    ����    ��  m    ��
�� boovtrue��  ��  ��  ��        l     ��������  ��  ��        l      ��  ��   ��
Sets the fullscreen status for either the front window or all windows of the specified, *AppleScript-enabled* application.
The 2nd parameter can take the following values:
 0 � turn fullscreen OFF
 1 � turn fullscreen ON
 2 � toggle fullscreen
The 3rd parameter is used to specify whether *all* windows should be targeted.

Example:
  my setFullScreen("Safari", 2, false) toggles fullscreen status of Safari's front window. 

NOTE:
    - ONLY works with AppleScript-enabled applications.
    - The targeted application is also activated (also required for technical reasons).
    - If you target *all* windows of an application, this subroutine will activate them one by one, which
      is required for technical reasons, unfortunately.
      This means: Whenever you target *all* windows, expect a lot of visual activity, even when 
      the fullscreen status needs no changing; activity is prolonged when fullscreen transitions
      are involved.
     - If the target application has a mix of fullscreen and non-fullscreen windows and the application
      is not currently frontmost, the OS considers the first *non*-fullscreen window to
      be the front one, even if a fullscreen window was active when the application was
      last frontmost.
     �  	� 
 S e t s   t h e   f u l l s c r e e n   s t a t u s   f o r   e i t h e r   t h e   f r o n t   w i n d o w   o r   a l l   w i n d o w s   o f   t h e   s p e c i f i e d ,   * A p p l e S c r i p t - e n a b l e d *   a p p l i c a t i o n . 
 T h e   2 n d   p a r a m e t e r   c a n   t a k e   t h e   f o l l o w i n g   v a l u e s : 
   0   &   t u r n   f u l l s c r e e n   O F F 
   1   &   t u r n   f u l l s c r e e n   O N 
   2   &   t o g g l e   f u l l s c r e e n 
 T h e   3 r d   p a r a m e t e r   i s   u s e d   t o   s p e c i f y   w h e t h e r   * a l l *   w i n d o w s   s h o u l d   b e   t a r g e t e d . 
 
 E x a m p l e : 
     m y   s e t F u l l S c r e e n ( " S a f a r i " ,   2 ,   f a l s e )   t o g g l e s   f u l l s c r e e n   s t a t u s   o f   S a f a r i ' s   f r o n t   w i n d o w .   
 
 N O T E : 
         -   O N L Y   w o r k s   w i t h   A p p l e S c r i p t - e n a b l e d   a p p l i c a t i o n s . 
         -   T h e   t a r g e t e d   a p p l i c a t i o n   i s   a l s o   a c t i v a t e d   ( a l s o   r e q u i r e d   f o r   t e c h n i c a l   r e a s o n s ) . 
         -   I f   y o u   t a r g e t   * a l l *   w i n d o w s   o f   a n   a p p l i c a t i o n ,   t h i s   s u b r o u t i n e   w i l l   a c t i v a t e   t h e m   o n e   b y   o n e ,   w h i c h 
             i s   r e q u i r e d   f o r   t e c h n i c a l   r e a s o n s ,   u n f o r t u n a t e l y . 
             T h i s   m e a n s :   W h e n e v e r   y o u   t a r g e t   * a l l *   w i n d o w s ,   e x p e c t   a   l o t   o f   v i s u a l   a c t i v i t y ,   e v e n   w h e n   
             t h e   f u l l s c r e e n   s t a t u s   n e e d s   n o   c h a n g i n g ;   a c t i v i t y   i s   p r o l o n g e d   w h e n   f u l l s c r e e n   t r a n s i t i o n s 
             a r e   i n v o l v e d . 
           -   I f   t h e   t a r g e t   a p p l i c a t i o n   h a s   a   m i x   o f   f u l l s c r e e n   a n d   n o n - f u l l s c r e e n   w i n d o w s   a n d   t h e   a p p l i c a t i o n 
             i s   n o t   c u r r e n t l y   f r o n t m o s t ,   t h e   O S   c o n s i d e r s   t h e   f i r s t   * n o n * - f u l l s c r e e n   w i n d o w   t o 
             b e   t h e   f r o n t   o n e ,   e v e n   i f   a   f u l l s c r e e n   w i n d o w   w a s   a c t i v e   w h e n   t h e   a p p l i c a t i o n   w a s 
             l a s t   f r o n t m o s t . 
   ��  i         I      �� ���� 0 setfullscreen setFullScreen      o      ���� 0 appname appName      o      ���� @0 zeroforoffoneforontwofortoggle zeroForOffOneForOnTwoForToggle   ��  o      ���� 0 
allwindows 
allWindows��  ��    k    U      ! " ! l     ��������  ��  ��   "  # $ # l     �� % &��   % !  Get window list and count.    & � ' ' 6   G e t   w i n d o w   l i s t   a n d   c o u n t . $  ( ) ( O       * + * k     , ,  - . - r     / 0 / 6    1 2 1 2   
��
�� 
cwin 2 =    3 4 3 1    ��
�� 
pvis 4 m    ��
�� boovtrue 0 o      ���� 0 	wapp_list   .  5 6 5 r     7 8 7 I   �� 9��
�� .corecnte****       **** 9 o    ���� 0 	wapp_list  ��   8 o      ���� 
0 wcount   6  : ; : l   �� < =��   < ? 9# set wapp_names to name of windows whose visible is true    = � > > r #   s e t   w a p p _ n a m e s   t o   n a m e   o f   w i n d o w s   w h o s e   v i s i b l e   i s   t r u e ;  ?�� ? l   �� @ A��   @  # log wapp_names    A � B B   #   l o g   w a p p _ n a m e s��   + 4     �� C
�� 
capp C o    ���� 0 appname appName )  D E D l  ! !��������  ��  ��   E  F G F l  ! $ H I J H r   ! $ K L K m   ! "����  L o      ���� 0 	max_tries 	MAX_TRIES I E ? Max. number of attempts to obtain the relevant process window.    J � M M ~   M a x .   n u m b e r   o f   a t t e m p t s   t o   o b t a i n   t h e   r e l e v a n t   p r o c e s s   w i n d o w . G  N O N l  % %��������  ��  ��   O  P Q P r   % * R S R =  % ( T U T o   % &���� @0 zeroforoffoneforontwofortoggle zeroForOffOneForOnTwoForToggle U m   & '����  S o      ���� 
0 toggle   Q  V W V r   + . X Y X m   + ,��
�� boovfals Y o      ���� 0 turnon turnOn W  Z [ Z Z  / = \ ]���� \ H   / 1 ^ ^ o   / 0���� 
0 toggle   ] r   4 9 _ ` _ =  4 7 a b a o   4 5���� @0 zeroforoffoneforontwofortoggle zeroForOffOneForOnTwoForToggle b m   5 6����  ` o      ���� 0 turnon turnOn��  ��   [  c d c l  > >��������  ��  ��   d  e f e Z   >S g h i�� g F   > G j k j o   > ?���� 0 
allwindows 
allWindows k ?   B E l m l o   B C���� 
0 wcount   m m   C D����  h l  J� n o p n O   J� q r q O   N� s t s k   U� u u  v w v r   U X x y x m   U V������ y o      ���� *0 indexoftruefrontwin indexOfTrueFrontWin w  z { z r   Y \ | } | m   Y Z��
�� 
msng } o      ���� 0 wproc_target   {  ~  ~ r   ] ` � � � m   ] ^��
�� 
msng � o      ���� $0 wproc_targetname wproc_targetName   � � � l  a a�� � ���   � %  Loop over application windows:    � � � � >   L o o p   o v e r   a p p l i c a t i o n   w i n d o w s : �  � � � l  a a�� � ���   � , & Note that we have 2 extra iterations:    � � � � L   N o t e   t h a t   w e   h a v e   2   e x t r a   i t e r a t i o n s : �  � � � l  a a�� � ���   � u o  Index 0 to determine the index of the true front window, and count + 1 to process the true front window last.    � � � � �     I n d e x   0   t o   d e t e r m i n e   t h e   i n d e x   o f   t h e   t r u e   f r o n t   w i n d o w ,   a n d   c o u n t   +   1   t o   p r o c e s s   t h e   t r u e   f r o n t   w i n d o w   l a s t . �  ��� � Y   a� ��� � ��� � k   m� � �  � � � l  m m�� � ���   �  # log "iteration " & i    � � � � , #   l o g   " i t e r a t i o n   "   &   i �  ��� � Z   m� � ��� � � F   m x � � � >   m p � � � o   m n���� 0 i   � m   n o����   � =   s v � � � o   s t���� 0 i   � o   t u���� *0 indexoftruefrontwin indexOfTrueFrontWin � l  { {�� � ���   � 3 -# log "ignoring true front win for now: " & i    � � � � Z #   l o g   " i g n o r i n g   t r u e   f r o n t   w i n   f o r   n o w :   "   &   i��   � k   � � �  � � � r    � � � � m    ���
�� boovfals � o      ���� 0 ok   �  � � � Z   � � � ����� � >   � � � � � o   � ����� 0 i   � m   � �����   � k   � � � �  � � � r   � � � � � o   � ����� 0 i   � o      ���� 0 
wapp_index   �  � � � Z  � � � ����� � =   � � � � � o   � ����� 0 i   � [   � � � � � o   � ����� 
0 wcount   � m   � �����  � r   � � � � � o   � ����� *0 indexoftruefrontwin indexOfTrueFrontWin � o      ���� 0 
wapp_index  ��  ��   �  � � � r   � � � � � e   � � � � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 
wapp_index   � o   � ����� 0 	wapp_list   � o      ���� 0 wapp_target   �  ��� � l  � � � � � � r   � � � � � e   � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 wapp_target   � o      ���� "0 wapp_targetname wapp_targetName � W Q Note: We get the name up front, as accessing the property below sometimes fails.    � � � � �   N o t e :   W e   g e t   t h e   n a m e   u p   f r o n t ,   a s   a c c e s s i n g   t h e   p r o p e r t y   b e l o w   s o m e t i m e s   f a i l s .��  ��  ��   �  � � � Y   �� ��� � ��� � k   �� � �  � � � l  � ��� � ���   � [ U# log "looking for #" & i & ": [" & wapp_targetName & "] (" & id of wapp_target & ")"    � � � � � #   l o g   " l o o k i n g   f o r   # "   &   i   &   " :   [ "   &   w a p p _ t a r g e t N a m e   &   " ]   ( "   &   i d   o f   w a p p _ t a r g e t   &   " ) " �  � � � l  � ��� � ���   � p j NOTE: We MUST activate the application and the specific window in case that window is in fullscreen mode.    � � � � �   N O T E :   W e   M U S T   a c t i v a t e   t h e   a p p l i c a t i o n   a n d   t h e   s p e c i f i c   w i n d o w   i n   c a s e   t h a t   w i n d o w   i s   i n   f u l l s c r e e n   m o d e . �  � � � l  � ��� � ���   � u o        Bizzarrely, without activating both, we would not gain access to that active window's *process* window,    � � � � �                 B i z z a r r e l y ,   w i t h o u t   a c t i v a t i n g   b o t h ,   w e   w o u l d   n o t   g a i n   a c c e s s   t o   t h a t   a c t i v e   w i n d o w ' s   * p r o c e s s *   w i n d o w , �  � � � l  � ��� � ���   � D >        which we need to examine and change fullscreen status.    � � � � |                 w h i c h   w e   n e e d   t o   e x a m i n e   a n d   c h a n g e   f u l l s c r e e n   s t a t u s . �  � � � Z   � � � ����� � >   � � � � � o   � ����� 0 i   � m   � �����   � k   � � � �  � � � l  � ��� � ���   � 5 /# log "making front window: " & wapp_targetName    � � � � ^ #   l o g   " m a k i n g   f r o n t   w i n d o w :   "   &   w a p p _ t a r g e t N a m e �  ��� � l  � � � � � � r   � � � � � m   � �����  � n         1   � ���
�� 
pidx o   � ����� 0 wapp_target   � � � Make the window the front (active) one; we try this *repeatedly*, as it can get ignored if a switch from a previous window hasn't completed yet.    � �"   M a k e   t h e   w i n d o w   t h e   f r o n t   ( a c t i v e )   o n e ;   w e   t r y   t h i s   * r e p e a t e d l y * ,   a s   i t   c a n   g e t   i g n o r e d   i f   a   s w i t c h   f r o m   a   p r e v i o u s   w i n d o w   h a s n ' t   c o m p l e t e d   y e t .��  ��  ��   �  l  � � r   � �	 m   � ���
�� boovtrue	 1   � ���
�� 
pisf Z T Activate the application; we also do this repeatedly in the interest of robustness.    �

 �   A c t i v a t e   t h e   a p p l i c a t i o n ;   w e   a l s o   d o   t h i s   r e p e a t e d l y   i n   t h e   i n t e r e s t   o f   r o b u s t n e s s .  l  � � I  � �����
�� .sysodelanull��� ��� nmbr m   � � ?�      ��   � � Note: Only when the window at hand is currently in fullscreen mode are several iterations needed - presumably, because switching to that window's space takes time.    �H   N o t e :   O n l y   w h e n   t h e   w i n d o w   a t   h a n d   i s   c u r r e n t l y   i n   f u l l s c r e e n   m o d e   a r e   s e v e r a l   i t e r a t i o n s   n e e d e d   -   p r e s u m a b l y ,   b e c a u s e   s w i t c h i n g   t o   t h a t   w i n d o w ' s   s p a c e   t a k e s   t i m e . �� Q   ���� k   �~  l  � �����   4 . Obtain the same window as a *process* window.    � \   O b t a i n   t h e   s a m e   w i n d o w   a s   a   * p r o c e s s *   w i n d o w .  l  � �����   O I Note: This can fail before switching to a fullscreen window is complete.    �   �   N o t e :   T h i s   c a n   f a i l   b e f o r e   s w i t c h i n g   t o   a   f u l l s c r e e n   w i n d o w   i s   c o m p l e t e . !"! r   � �#$# 4  � ��%
� 
cwin% m   � ��~�~ $ o      �}�} 0 wproc_current  " &'& l  � ��|()�|  ( 7 1 See if the desired process window is now active.   ) �** b   S e e   i f   t h e   d e s i r e d   p r o c e s s   w i n d o w   i s   n o w   a c t i v e .' +,+ l  � ��{-.�{  - p j Note that at this point a previous, fullscreen window may still be reported as the active one, so we must   . �// �   N o t e   t h a t   a t   t h i s   p o i n t   a   p r e v i o u s ,   f u l l s c r e e n   w i n d o w   m a y   s t i l l   b e   r e p o r t e d   a s   t h e   a c t i v e   o n e ,   s o   w e   m u s t, 010 l  � ��z23�z  2 L F test whether the process window just obtained it is the desired one.    3 �44 �   t e s t   w h e t h e r   t h e   p r o c e s s   w i n d o w   j u s t   o b t a i n e d   i t   i s   t h e   d e s i r e d   o n e .  1 565 l  � ��y78�y  7 \ V We test by *name* (window title), as that is the only property that the *application*   8 �99 �   W e   t e s t   b y   * n a m e *   ( w i n d o w   t i t l e ) ,   a s   t h a t   i s   t h e   o n l y   p r o p e r t y   t h a t   t h e   * a p p l i c a t i o n *6 :;: l  � ��x<=�x  < d ^ window class and the *process* window class (directly) share; sadly, only application windows   = �>> �   w i n d o w   c l a s s   a n d   t h e   * p r o c e s s *   w i n d o w   c l a s s   ( d i r e c t l y )   s h a r e ;   s a d l y ,   o n l y   a p p l i c a t i o n   w i n d o w s; ?@? l  � ��wAB�w  A   have an 'id' property.   B �CC .   h a v e   a n   ' i d '   p r o p e r t y .@ DED l  � ��vFG�v  F ` Z (There is potential for making this more robust, though, by also comparing window sizes.)   G �HH �   ( T h e r e   i s   p o t e n t i a l   f o r   m a k i n g   t h i s   m o r e   r o b u s t ,   t h o u g h ,   b y   a l s o   c o m p a r i n g   w i n d o w   s i z e s . )E I�uI Z   �~JK�tLJ =   � �MNM o   � ��s�s 0 i  N m   � ��r�r  K k   �OO PQP l  � ��qRS�q  R W Q We determine the index of the *actual* front window, so we can process it *last*   S �TT �   W e   d e t e r m i n e   t h e   i n d e x   o f   t h e   * a c t u a l *   f r o n t   w i n d o w ,   s o   w e   c a n   p r o c e s s   i t   * l a s t *Q UVU l  � ��pWX�p  W Z T so we return to the same window that was originally active; with fullscreen windows   X �YY �   s o   w e   r e t u r n   t o   t h e   s a m e   w i n d o w   t h a t   w a s   o r i g i n a l l y   a c t i v e ;   w i t h   f u l l s c r e e n   w i n d o w sV Z[Z l  � ��o\]�o  \ L F involved, sadly, `front window` is NOT always the true front window.    ] �^^ �   i n v o l v e d ,   s a d l y ,   ` f r o n t   w i n d o w `   i s   N O T   a l w a y s   t h e   t r u e   f r o n t   w i n d o w .  [ _`_ r   � �aba m   � ��n�n b o      �m�m *0 indexoftruefrontwin indexOfTrueFrontWin` cdc Y   �e�lfg�ke Z   �hi�j�ih =  �jkj n   � �lml 1   � ��h
�h 
pnamm l  � �n�g�fn n   � �opo 4   � ��eq
�e 
cobjq o   � ��d�d 0 ndx  p o   � ��c�c 0 	wapp_list  �g  �f  k n   �rsr 1  �b
�b 
pnams o   ��a�a 0 wproc_current  i k  tt uvu r  wxw o  
�`�` 0 ndx  x o      �_�_ *0 indexoftruefrontwin indexOfTrueFrontWinv y�^y  S  �^  �j  �i  �l 0 ndx  f m   � ��]�] g o   � ��\�\ 
0 wcount  �k  d z{z l �[|}�[  | 6 0# log "true front index: " & indexOfTrueFrontWin   } �~~ ` #   l o g   " t r u e   f r o n t   i n d e x :   "   &   i n d e x O f T r u e F r o n t W i n{ � r  ��� m  �Z
�Z boovtrue� o      �Y�Y 0 ok  � ��X�  S  �X  �t  L Z   ~���W�� =  '��� l  %��V�U� n   %��� 1  #%�T
�T 
pnam� o   #�S�S 0 wproc_current  �V  �U  � o  %&�R�R "0 wapp_targetname wapp_targetName� k  *z�� ��� l **�Q���Q  � 9 3# log "processing: [" & name of wproc_current & "]"   � ��� f #   l o g   " p r o c e s s i n g :   [ "   &   n a m e   o f   w p r o c _ c u r r e n t   &   " ] "� ��� O  *t��� k  0s�� ��� r  0A��� e  0=�� n  0=��� 1  8<�P
�P 
valL� 4  08�O�
�O 
attr� m  47�� ���  A X F u l l S c r e e n� o      �N�N 0 isfullscreen isFullScreen� ��� Z BP���M�L� o  BC�K�K 
0 toggle  � r  FL��� H  FJ�� o  FI�J�J 0 isfullscreen isFullScreen� o      �I�I 0 turnon turnOn�M  �L  � ��H� Z  Qs���G�� > QV��� o  QT�F�F 0 isfullscreen isFullScreen� o  TU�E�E 0 turnon turnOn� k  Yo�� ��� l YY�D���D  � . (# log "setting fullscreen to: " & turnOn   � ��� P #   l o g   " s e t t i n g   f u l l s c r e e n   t o :   "   &   t u r n O n� ��� r  Yg��� o  YZ�C�C 0 turnon turnOn� n      ��� 1  bf�B
�B 
valL� 4  Zb�A�
�A 
attr� m  ^a�� ���  A X F u l l S c r e e n� ��@� l ho���� I ho�?��>
�? .sysodelanull��� ��� nmbr� m  hk�� ?�333333�>  � d ^ For good measure; it seems turning fullscreen *on* sometimes fails (you'll hear a pop sound).   � ��� �   F o r   g o o d   m e a s u r e ;   i t   s e e m s   t u r n i n g   f u l l s c r e e n   * o n *   s o m e t i m e s   f a i l s   ( y o u ' l l   h e a r   a   p o p   s o u n d ) .�@  �G  � l rr�=���=  �  # log "no change needed"   � ��� 0 #   l o g   " n o   c h a n g e   n e e d e d "�H  � o  *-�<�< 0 wproc_current  � ��� r  ux��� m  uv�;
�; boovtrue� o      �:�: 0 ok  � ��9�  S  yz�9  �W  � l }}�8���8  � f `# log "no match; waiting for '" & wapp_targetName & "', actual: '" & name of wproc_current & "'"   � ��� � #   l o g   " n o   m a t c h ;   w a i t i n g   f o r   ' "   &   w a p p _ t a r g e t N a m e   &   " ' ,   a c t u a l :   ' "   &   n a m e   o f   w p r o c _ c u r r e n t   &   " ' "�u   R      �7�6�5
�7 .ascrerr ****      � ****�6  �5  ��  ��  �� 0 attempt   � m   � ��4�4  � o   � ��3�3 0 	max_tries 	MAX_TRIES��   � ��2� Z �����1�0� H  ���� o  ���/�/ 0 ok  � R  ���.��-
�. .ascrerr ****      � ****� b  ����� b  ����� b  ����� b  ����� m  ���� ��� 4 O b t a i n i n g   p r o c e s s   w i n d o w   '� o  ���,�, "0 wapp_targetname wapp_targetName� m  ���� ��� " '   o f   a p p l i c a t i o n  � o  ���+�+ 0 appname appName� m  ���� ���    t i m e d   o u t .�-  �1  �0  �2  ��  �� 0 i   � m   d e�*�*   � [   e h��� o   e f�)�) 
0 wcount  � m   f g�(�( ��  ��   t 4   N R�'�
�' 
prcs� o   P Q�&�& 0 appname appName r m   J K���                                                                                  sevs  alis    �  Macintosh HD               Ηs�H+     -System Events.app                                               �j�Wլ        ����  	                CoreServices    Η��      �X�       -   *   )  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   o . ( Target *all* the application's windows.    p ��� P   T a r g e t   * a l l *   t h e   a p p l i c a t i o n ' s   w i n d o w s . i ��� ?  ����� o  ���%�% 
0 wcount  � m  ���$�$  � ��#� l �O���� O  �O��� O  �N��� k  �M�� ��� l ���"���"  � ^ X NOTE: We MUST activate the application in case its active window is in fullscreen mode.   � ��� �   N O T E :   W e   M U S T   a c t i v a t e   t h e   a p p l i c a t i o n   i n   c a s e   i t s   a c t i v e   w i n d o w   i s   i n   f u l l s c r e e n   m o d e .� ��� l ���!���!  � o i       Bizzarrely, without activating, we would not gain access to that active window's *process* window.   � ��� �               B i z z a r r e l y ,   w i t h o u t   a c t i v a t i n g ,   w e   w o u l d   n o t   g a i n   a c c e s s   t o   t h a t   a c t i v e   w i n d o w ' s   * p r o c e s s *   w i n d o w .� ��� r  ��   m  ��� 
�  boovtrue 1  ���
� 
pisf�  r  �� m  ���
� boovfals o      �� 0 ok    Y  �7�	
� k  �2  l �� I ����
� .sysodelanull��� ��� nmbr m  �� ?�      �   � � Note: Only when the active window is currently in fullscreen mode are several iterations needed - presumably, because switching to that window's space takes time.    �F   N o t e :   O n l y   w h e n   t h e   a c t i v e   w i n d o w   i s   c u r r e n t l y   i n   f u l l s c r e e n   m o d e   a r e   s e v e r a l   i t e r a t i o n s   n e e d e d   -   p r e s u m a b l y ,   b e c a u s e   s w i t c h i n g   t o   t h a t   w i n d o w ' s   s p a c e   t a k e s   t i m e . � Q  �2� k  �)  l ����   e _ Obtain the same window as a *process* window, as only a process window allows us to examine or    � �   O b t a i n   t h e   s a m e   w i n d o w   a s   a   * p r o c e s s *   w i n d o w ,   a s   o n l y   a   p r o c e s s   w i n d o w   a l l o w s   u s   t o   e x a m i n e   o r  l ��� �      change fullscreen status.     �!! 4   c h a n g e   f u l l s c r e e n   s t a t u s . "#" O  �#$%$ l �"&'(& k  �")) *+* r  ��,-, e  ��.. n  ��/0/ 1  ���
� 
valL0 4  ���1
� 
attr1 m  ��22 �33  A X F u l l S c r e e n- o      �� 0 isfullscreen isFullScreen+ 454 Z �67��6 o  ���� 
0 toggle  7 r  �898 H  �:: o  � �� 0 isfullscreen isFullScreen9 o      �� 0 turnon turnOn�  �  5 ;�; Z  "<=��
< > >?> o  �	�	 0 isfullscreen isFullScreen? o  �� 0 turnon turnOn= r  @A@ o  �� 0 turnon turnOnA n      BCB 1  �
� 
valLC 4  �D
� 
attrD m  EE �FF  A X F u l l S c r e e n�  �
  �  ' N H Note: This can fail before switching to a fullscreen space is complete.   ( �GG �   N o t e :   T h i s   c a n   f a i l   b e f o r e   s w i t c h i n g   t o   a   f u l l s c r e e n   s p a c e   i s   c o m p l e t e .% 4 ���H
� 
cwinH m  ���� # IJI r  $'KLK m  $%�
� boovtrueL o      �� 0 ok  J M� M  S  ()�    R      ������
�� .ascrerr ****      � ****��  ��  �  �  � 0 attempt  	 m  ������ 
 o  ������ 0 	max_tries 	MAX_TRIES�   N��N Z 8MOP����O H  8:QQ o  89���� 0 ok  P R  =I��R��
�� .ascrerr ****      � ****R b  ?HSTS b  ?DUVU m  ?BWW �XX \ O b t a i n i n g   a c t i v e   p r o c e s s   w i n d o w   o f   a p p l i c a t i o nV o  BC���� 0 appname appNameT m  DGYY �ZZ    t i m e d   o u t .��  ��  ��  ��  � 4  ����[
�� 
prcs[ o  ������ 0 appname appName� m  ��\\�                                                                                  sevs  alis    �  Macintosh HD               Ηs�H+     -System Events.app                                               �j�Wլ        ����  	                CoreServices    Η��      �X�       -   *   )  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � 6 0 Target *current* window only (if there is one).   � �]] `   T a r g e t   * c u r r e n t *   w i n d o w   o n l y   ( i f   t h e r e   i s   o n e ) .�#  ��   f ^��^ l TT��������  ��  ��  ��  ��       ��_`a��  _ ������ 0 setfullscreen setFullScreen
�� .aevtoappnull  �   � ****` �� ����bc���� 0 setfullscreen setFullScreen�� ��d�� d  �������� 0 appname appName�� @0 zeroforoffoneforontwofortoggle zeroForOffOneForOnTwoForToggle�� 0 
allwindows 
allWindows��  b ������������������������������������������ 0 appname appName�� @0 zeroforoffoneforontwofortoggle zeroForOffOneForOnTwoForToggle�� 0 
allwindows 
allWindows�� 0 	wapp_list  �� 
0 wcount  �� 0 	max_tries 	MAX_TRIES�� 
0 toggle  �� 0 turnon turnOn�� *0 indexoftruefrontwin indexOfTrueFrontWin�� 0 wproc_target  �� $0 wproc_targetname wproc_targetName�� 0 i  �� 0 ok  �� 0 
wapp_index  �� 0 wapp_target  �� "0 wapp_targetname wapp_targetName�� 0 attempt  �� 0 wproc_current  �� 0 ndx  �� 0 isfullscreen isFullScreenc ����e�������������������������������������2EWY
�� 
capp
�� 
cwine  
�� 
pvis
�� .corecnte****       ****�� 
�� 
bool
�� 
prcs
�� 
msng
�� 
cobj
�� 
pnam
�� 
pidx
�� 
pisf
�� .sysodelanull��� ��� nmbr
�� 
attr
�� 
valL��  ��  ��V*�/ *�-�[�,\Ze81E�O�j E�OPUO�E�O�l E�OfE�O� 
�k E�Y hO�	 �k�&j�b*�/ZiE�O�E�O�E�OKj�kkh �j	 �� �& hY+fE�O�j '�E�O��k  �E�Y hO��/EE�O��,EE�Y hO �k�kh �j 
k��,FY hOe*�,FO�j O �*�k/E^ O�j  :kE�O *k�kh ��] /�,] �,  ] E�OY h[OY��OeE�OY `] �,�  U]  E*a a /a ,EE^ O� ] E�Y hO] � �*a a /a ,FOa j Y hUOeE�OY hW X  h[OY�-O� )ja �%a %�%a %Y h[OY��UUY ��j �� �*�/ �e*�,FOfE�O ik�kh �j O N*�k/ =*a a /a ,EE^ O� ] E�Y hO] � �*a a /a ,FY hUOeE�OW X  h[OY��O� )ja �%a %Y hUUY hOPa ��f����gh��
�� .aevtoappnull  �   � ****f k     ii  ����  ��  ��  g  h  ���� 0 setfullscreen setFullScreen�� 	*�kem+ ascr  ��ޭ