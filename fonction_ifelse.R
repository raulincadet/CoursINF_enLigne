########################################################################
#######                   Fonction ifelse()                      #######
########################################################################


x<-2:12         # creation d'un vecteur x contenant les valeurs 2 a 12
x
# Illustration: si x est inferieur a 6, y=x+1; dans le cas contraire, y=x
# ifelse(condition,vrai,fausse)
y=ifelse(x<6,x+1,x)
y

#####################################################################
z<-sample(10)   # creation d'une variable aleatoire contenant 10 elements
z

######################################################################
# creation d'une variable binaire ou u est egale a 0 si z est inferieur
# ou egale a 5. Dans le contraire, u est egale a 1.
u<-ifelse(z<=5,1,0)
u

####################################################################
# creation d'un vecteur p, ou p est egale a 1 si z est un nombre pair, 
# et 0 dans le cas contraire
p<-ifelse(z%%2,1,0)
p

####################################################################
# creation de m, ou m indique les multiples de 2 et de 3
m<-ifelse(z%%2==0,'Multiple de 2',
          ifelse(z%%3==0,'Multiple de 3',"Ni l'un, ni l'autre"))
m
z

######################################################################
# creation de n ou n indique les multiples de 2, multiples de 3, 
# multiples de 2 et 3 a la fois.
n<-ifelse(z%%2==0 & z%%3==0,"Multiple de 2 et 3",
          ifelse(z%%2==0,"Multiple de 2",
                 ifelse(z%%3==0,"Multiple de 3","Ni l'un, ni l'autre")))
n
z
