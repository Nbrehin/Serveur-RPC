struct pays{
	int id;
	char nom[10];
};

struct liste_pays{
	pays liste_pays[10];
	int nb_liste_pays;
};

struct saison{
	int id;
	char nom[10];
};

struct liste_saisons{
	saison liste_saisons[12];
	int nb_saisons;
};

struct saison_pays{
	saison saison;
	pays pays;
};

struct log{
	int id;
	char pseudo[10];
	char mdp[10];
	int id_recettes_fav[10];
	int nb_id_recettes_fav;
};

struct liste_log{
	log liste_log[10];
	int nb_liste_log;
};

struct ingredient{
	int id;
	char nom[10];
	double quantite;
	char mesure[10];
};

struct liste_ingredients{
	ingredient liste[10];
	int nb_ingredients;
};

struct recette{
	int id;
	char nom[10];
	char auteur[10];
	int temps;
	char budget[10];
	int kcal;
	int id_ingredients[10];
	int nb_id_ingredients;
};

struct liste_recettes{
	recette recettes[10];
	int nb_recettes;
};

struct fruit {
	int id;
	char nom[10];
	double calories;
	double sucres;
	int id_pays[10];
	int nb_id_pays;
	int id_saisons[12];
	int id_recettes[10];
	int nb_id_recettes;
};

struct liste_fruits{
	fruit fruits[10];
	int nb_fruits;
};

program ETIQUETTABLEPROG{
	version ETIQUETTABLEVERS{
	 void ALLUMER() = 1;
	 int CONNECTER(log) = 2;
	 liste_fruits AFFICHER_FRUITS_SAISON_LOCAL(saison_pays) = 3;
	 fruit FICHE_FRUIT(fruit) = 4;
	 liste_recettes AFFICHER_RECETTES() = 5;
	 recette AFFICHER_RECETTE(int) = 6;
	 int AJOUTER_RECETTE_FAVORIS(recette r) = 7;
	 int RETIRER_RECETTE_FAVORIS(recette r) = 8;
	 liste_recettes AFFICHER_FAVORIS() = 9;
	 pays PAYS(int) = 10;
	 saison SAISON(int) = 11;
	 ingredient INGREDIENT(int) = 12;
	} = 1;
}=567890123;
