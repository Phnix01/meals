import 'package:flutter/material.dart';

import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'Italien',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Rapide & Facile',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Allemand',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Léger & Délicieux',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotique',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Petit Déjeuner',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asiatique',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Cuisine Africaine',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Estival',
    color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti à la sauce tomate',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomates',
      '1 Cuillère à soupe d\'huile d\'olive',
      '1 Oignon',
      '250g de Spaghetti',
      'Épices',
      'Fromage (optionnel)'
    ],
    steps: [
      'Couper les tomates et l\'oignon en petits morceaux.',
      'Faire bouillir de l\'eau - ajouter du sel une fois qu\'elle bout.',
      'Mettre les spaghetti dans l\'eau bouillante - ils devraient être prêts en environ 10 à 12 minutes.',
      'Pendant ce temps, chauffer un peu d\'huile d\'olive et ajouter l\'oignon coupé.',
      'Après 2 minutes, ajouter les morceaux de tomate, du sel, du poivre et vos autres épices.',
      'La sauce sera prête en même temps que les spaghetti.',
      'N\'hésitez pas à ajouter du fromage sur le plat fini.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Tranche de Pain Blanc',
      '1 Tranche de Jambon',
      '1 Tranche d\'Ananas',
      '1-2 Tranches de Fromage',
      'Beurre'
    ],
    steps: [
      'Beurrer un côté du pain blanc.',
      'Superposer le jambon, l\'ananas et le fromage sur le pain.',
      'Faire cuire le toast environ 10 minutes au four à 200°C.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Hamburger Classique',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g de Bœuf Haché',
      '1 Tomate',
      '1 Concombre',
      '1 Oignon',
      'Ketchup',
      '2 Pains à Burger'
    ],
    steps: [
      'Former 2 steaks.',
      'Faire frire les steaks environ 4 minutes de chaque côté.',
      'Faire frire rapidement les pains environ 1 minute de chaque côté.',
      'Étaler du ketchup sur les pains.',
      'Servir le burger avec tomate, concombre et oignon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Escalopes de Veau',
      '4 Œufs',
      '200g de Chapelure',
      '100g de Farine',
      '300ml de Beurre',
      '100g d\'Huile Végétale',
      'Sel',
      'Tranches de Citron'
    ],
    steps: [
      'Attendrir les escalopes de veau à environ 2–4mm, et les saler des deux côtés.',
      'Sur une assiette plate, battre les œufs brièvement avec une fourchette.',
      'Enduire légèrement les escalopes de farine, puis les tremper dans l\'œuf, et enfin, les enrober de chapelure.',
      'Faire chauffer le beurre et l\'huile dans une grande poêle (laisser la graisse devenir très chaude) et faire frire les schnitzels jusqu\'à ce qu\'ils soient dorés des deux côtés.',
      'Assurez-vous de secouer la poêle régulièrement pour que les schnitzels soient entourés d\'huile et que la panure devienne «fluffy».',
      'Retirer et égoutter sur du papier absorbant. Faire frire le persil dans l\'huile restante et égoutter.',
      'Placer les schnitzels sur une assiette chaude et servir garnis de persil et de tranches de citron.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Salade avec du Saumon Fumé',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Roquette',
      'Mâche',
      'Persil',
      'Fenouil',
      '200g de Saumon Fumé',
      'Moutarde',
      'Vinaigre Balsamique',
      'Huile d\'Olive',
      'Sel et Poivre'
    ],
    steps: [
      'Laver et couper la salade et les herbes.',
      'Couper le saumon en dés.',
      'Préparer une vinaigrette avec la moutarde, le vinaigre et l\'huile d\'olive.',
      'Préparer la salade.',
      'Ajouter les cubes de saumon et la vinaigrette.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Mousse à l\'Orange Délicieuse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Feuilles de Gélatine',
      '150ml de Jus d\'Orange',
      '80g de Sucre',
      '300g de Yaourt',
      '200g de Crème',
      'Zeste d\'Orange',
    ],
    steps: [
      'Dissoudre la gélatine dans une casserole.',
      'Ajouter le jus d\'orange et le sucre.',
      'Retirer la casserole du feu.',
      'Ajouter 2 cuillères à soupe de yaourt.',
      'Incorporer le reste du yaourt dans le mélange de gélatine.',
      'Laisser refroidir au réfrigérateur.',
      'Fouetter la crème et l\'incorporer délicatement au mélange à l\'orange.',
      'Laisser refroidir à nouveau pendant au moins 4 heures.',
      'Servir avec du zeste d\'orange.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Tasses de Farine tout usage',
      '3 1/2 Cuillères à café de Levure Chimique',
      '1 Cuillère à café de Sel',
      '1 Cuillère à soupe de Sucre Blanc',
      '1 1/4 Tasses de Lait',
      '1 Œuf',
      '3 Cuillères à soupe de Beurre fondu',
    ],
    steps: [
      'Dans un grand bol, tamiser ensemble la farine, la levure chimique, le sel et le sucre.',
      'Faire un puits au centre et y verser le lait, l\'œuf et le beurre fondu; mélanger jusqu\'à consistance lisse.',
      'Chauffer une poêle légèrement huilée à feu moyen-élevé.',
      'Verser ou verser la pâte sur la poêle, en utilisant environ 1/4 tasse pour chaque pancake. Faire dorer des deux côtés et servir chaud.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Curry de Poulet Crémeux Indien',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Poitrines de Poulet',
      '1 Oignon',
      '2 Gousses d\'Ail',
      '1 Morceau de Gingembre',
      '4 Cuillères à soupe d\'Amandes',
      '1 Cuillère à café de Piment de Cayenne',
      '500ml de Lait de Coco',
    ],
    steps: [
      'Couper et faire revenir les poitrines de poulet.',
      'Réduire en pâte l\'oignon, l\'ail et le gingembre et les faire revenir.',
      'Ajouter les épices et faire revenir.',
      'Ajouter les poitrines de poulet + 250ml d\'eau et faire cuire pendant 10 minutes.',
      'Ajouter le lait de coco.',
      'Servir avec du riz.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Soufflé au Chocolat',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Cuillère à café de Beurre fondu',
      '2 Cuillères à soupe de Sucre blanc',
      '2 Onces de Chocolat noir à 70%, cassé en morceaux',
      '1 Cuillère à soupe de Beurre',
      '1 Cuillère à soupe de Farine tout usage',
      '4 1/3 cuillères à soupe de Lait froid',
      '1 Pincée de Sel',
      '1 Pincée de Piment de Cayenne',
      '1 Jaune d\'Œuf',
      '2 Blancs d\'Œufs',
      '1 Pincée de Crème de Tartre',
      '1 Cuillère à soupe de Sucre blanc',
    ],
    steps: [
      'Préchauffer le four à 190°C. Tapisser une plaque de cuisson à rebords de papier sulfurisé.',
      'Badigeonner légèrement le fond et les côtés de 2 ramequins avec 1 cuillère à café de beurre fondu; couvrir le fond et les côtés jusqu\'au bord.',
      'Ajouter 1 cuillère à soupe de sucre blanc dans les ramequins. Tourner les ramequins jusqu\'à ce que le sucre couvre toutes les surfaces.',
      'Mettre les morceaux de chocolat dans un bol en métal.',
      'Placer le bol au-dessus d\'une casserole contenant environ 3 tasses d\'eau chaude à feu doux.',
      'Faire fondre 1 cuillère à soupe de beurre dans une poêle à feu moyen. Saupoudrer de farine. Fouetter jusqu\'à ce que la farine soit incorporée au beurre et que le mélange épaississe.',
      'Incorporer le lait froid jusqu\'à ce que le mélange devienne lisse et épaississe. Transférer le mélange dans le bol avec le chocolat fondu.',
      'Ajouter le sel et le piment de Cayenne. Mélanger soigneusement. Ajouter le jaune d\'œuf et mélanger pour combiner.',
      'Laisser le bol au-dessus de l\'eau chaude (mais non bouillante) pour garder le chocolat au chaud pendant que vous battez les blancs d\'œufs.',
      'Mettre 2 blancs d\'œufs dans un bol à mélanger; ajouter la crème de tartre. Fouetter jusqu\'à ce que le mélange commence à épaissir et qu\'un filet du fouet reste à la surface environ 1 seconde avant de disparaître.',
      'Ajouter 1/3 du sucre et fouetter. Fouetter un peu plus de sucre après environ 15 secondes.',
      'Fouetter le reste du sucre. Continuer à fouetter jusqu\'à ce que le mélange soit aussi épais que de la crème à raser et forme des pics mous, 3 à 5 minutes.',
      'Transférer un peu moins de la moitié des blancs d\'œufs au chocolat.',
      'Mélanger jusqu\'à ce que les blancs d\'œufs soient complètement incorporés au chocolat.',
      'Ajouter le reste des blancs d\'œufs; incorporer délicatement au chocolat avec une spatule, en soulevant du fond et en repliant.',
      'Arrêter de mélanger dès que les blancs d\'œufs disparaissent. Répartir le mélange entre les 2 ramequins préparés. Placer les ramequins sur la plaque de cuisson préparée.',
      'Faire cuire au four préchauffé jusqu\'à ce que les soufflés soient gonflés et aient dépassé le haut des bords, environ 12 à 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Salade d\'Asperges avec Tomates Cerises',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'Asperges Blanches et Vertes',
      '30g de Pignons de Pin',
      '300g de Tomates Cerises',
      'Salade',
      'Sel, Poivre et Huile d\'Olive'
    ],
    steps: [
      'Laver, peler et couper les asperges.',
      'Cuire dans de l\'eau salée.',
      'Saler et poivrer les asperges.',
      'Faire griller les pignons de pin.',
      'Couper les tomates en deux.',
      'Mélanger avec les asperges, la salade et la vinaigrette.',
      'Servir avec du Baguette.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
