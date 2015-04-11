# Cinematique Inversée

Fonction pour calculer la cinematique inversee d'un bras robotique de 3 degrees de liberté, cette code est developpé en Matlab.

la fonction est:

[q0,q1,q2]=robot3_inv(x,y,z)
où :
  q0, q1, q2 sont le degrees de chaque motor pour pouvoir arrive a la position X,Y,Z
  
Pour calibré c'est necessaire prend bien la taille de bras, donc, après on peut positioner le bras 
en Y, et dire que X et Z sont 0.
