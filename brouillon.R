# Creation d'une fonction qui indique les elements qui apparaissent au moins 
# une fois dans un vecteur

uniq<-function(x){
  
}
###############################################
# la somme des elements de x et 2
for (i in 1:length(x)) {
  print(x[i]+2)
}
#####
for (i in x) {
  print(i+2)
}


############################
# creation d'un bouble qui divise les nombres pairs d'un vecteur par 2 et les autres par 5
for (i in x) {
  y=ifelse(i%%2==0,i/2,i/5)
  print(y)
}
ifelse(x%%2==0,x/2,x/5)
