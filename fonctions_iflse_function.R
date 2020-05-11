library(xlsx)
df=read.xlsx('Age.xlsx',sheetIndex = 1)    # importation des donnees du fichier Age.xlsx

# j'indique le nom de la feuille de preference
df=read.xlsx('Age.xlsx',sheetName = 'Age')    # importation des donnees du fichier Age.xlsx

# Creer un objet qui scinde les gens en deux categories: 
# les enfants: 0 - 18 ans
# les adultes: 18 ans et plus
categ<-ifelse(df$Age<18,'Enfant','Adulte')
categ

# on peut ajouter le nouvel objet dans le data frame
df['categorie']<-ifelse(df$Age<18,'Enfant','Adulte')
df['Kategori']<-categ

########################################
df['catLarge']<-ifelse(df$Age<=3,'Bébé',
                       ifelse(df$Age<=8,'Enfant',
                              ifelse(df$Age<=11,'Pré-ado',
                                     ifelse(df$Age<=15,'Adolescent',
                                            ifelse(df$Age<=25,'Jeune','Adulte')))))
# calcul des frequences
table(df$catLarge)

################################################
# On va repondre a la meme question, mais en partant non pas de 3 ans, 
# mais de la valeur la plus elevee, comme Isabelle essayait de le faire.
# on doit trouver les memes resultats. Bien avant, considerons la frequence
# par categorie. Puis, on calculera la frequence des categories pour la nouvelle
# variable, et on doit avoir les memes resultats.

df['Isabelle']<-ifelse(df$Age>=26,'Adulte',
                       ifelse(df$Age>=16,'Jeune',
                            ifelse(df$Age>=12,'Adolescent',
                                   ifelse(df$Age>=9,'Pré-ado',
                                          ifelse(df$Age>=4,'Enfant','Bébé')))))

table(df$Isabelle)


#################################################################
#########               Creation de Fonctions           #########
# On utilise la fonction function() pour creer une fonction


####################################################################
# creation d'une fonction qui compte de 1 a 10. Cette fonction n'aura pas d'argument
agusto<-function(){
  y=1:10
  return(y)
}

agusto() # j'execute la fonction


#######################################################################333
# creation d'une fonction qui ajoute 2 a chacun des elements d'un vecteur de donnees numeriques
s=c(3,6,4,1,2)

pierry<-function(x){
  y=x+2
  return(y)
}

pierry(s) # j'execute la fonction avec s comme argument


################################################################
# creation d'une fonction qui compte par deux, de 2 a 10. Le resultat sera: 2,4,6,8,10.
compter2<-function(){
  y=seq(from=2,to=10,by=2)
  return(y)
}

compter2()

###################################################
# creation d'une fonction qui indique pour chacun des elements d'un vecteur s'il
# s'agit d'un nombre pair ou non.
nombrePair<-function(x){
  y=ifelse(x%%2==0,'Pair','Impair')
  return(y)
}

nombrePair(s)
s



