# Lire les données du fichier CreditBancaire.csv
cb<- read.csv("CreditBancaire.csv")

# Calculons la moyenne du credit
Moy_credit<- mean(cb$Credit)
Moy_credit
#Calculons la moyenne du nombre de jours de retard de paiement des clients, par type de crédit
Moy_retard <- aggregate(cb$Jours, by=list(Type=cb$Type), FUN=mean)
Moy_retard

# Réalisons un graphique en bâton de la moyenne du nombre de jours de retard de paiement par type de crédit

barplot(Moy_retard$x, names.arg = Moy_retard$Type)