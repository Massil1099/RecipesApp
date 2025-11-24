# Approche comparative des technologies mobiles - Projet n°2 : Recettes: Mon premier projet IOS/Swift

## 1. Présentation

Ce projet consiste à créer une **application mobile de recettes de cuisine**.  
L’application affiche pour chaque recette :

- Une photo
- Le temps de préparation (prep time) et de cuisson (cook time)
- Le nombre de personnes (serving)
- La liste des ingrédients
- La recette elle-même (directions)

### Recettes deja incluses

1. **Simple Cake**  
   
2. **Chocolate Cake**  
  
3. **Clafoutis**  
   

> Les images sont récupérées sur UniversiTICE. Les recettes utilisent un texte long (Lorem Ipsum) pour la description.

Le premier écran présente la **liste des recettes** avec l’image, le nom et les temps de préparation et cuisson.  
> On peut dupliquer les recettes pour tester l’affichage sur plusieurs éléments.

---

## 2. Détails d’une recette

- En cliquant sur une recette, l’utilisateur accède à l’écran **détail**.
- Le nombre de personnes peut être modifié, ce qui **met à jour les quantités des ingrédients**.
- L’image est cliquable pour :
  - Choisir une nouvelle image depuis la galerie
- Un bouton **Edit recipe** permet de modifier la recette.

---

## 3. Modification de la recette

L’écran de modification permet de :

- Modifier les temps de préparation et cuisson
- Modifier le nombre de personnes
- Gérer la liste des ingrédients :
  - Modifier la quantité
  - Supprimer un ingrédient
  - Ajouter un ingrédient
- Trier les ingrédients par ordre alphabétique via une case à cocher **Sort by name**

---

## 4. Développement

- L’application est développée sous **iOS (SwiftUI)**.  
- Le projet est géré sur un dépôt **Git** : les commits décrivent les fonctionnalités réalisées.  
- Une attention particulière est portée à :
  - L’architecture du projet (répartition claire des fonctionnalités et des classes)
  - La validation sur Git avec des messages explicites pour chaque étape
- L’application doit être fonctionnelle est fonctionnelle sur des smartphones iOS 16+ 

---

## 5. Auteur

- **Étudiant** : [Massil Ait challal]  
- Projet réalisé dans le cadre du cours “Approche comparative des technologies mobiles”  
