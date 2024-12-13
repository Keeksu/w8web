CREATE TABLE recipe (
    id SERIAL PRIMARY KEY,
    recipeName VARCHAR(55)
);

CREATE TABLE ingredient (
    id SERIAL PRIMARY KEY,
    ingredientName VARCHAR(55)
);

CREATE TABLE IngredientInRecipe (
    id SERIAL PRIMARY KEY,
    recipeId INTEGER,
    ingredientId INTEGER,
    FOREIGN KEY (recipeId) REFERENCES recipe(id),
    FOREIGN KEY (ingredientId) REFERENCES ingredient(id)
);

INSERT INTO recipe (recipeName) VALUES ('Pumpkin Pasties');


SELECT * from recipe;


INSERT INTO recipe (recipeName) VALUES ('Pumpkin Tartlets');


INSERT INTO ingredient (ingredientName) VALUES ('pumpkin puree');
INSERT INTO ingredient (ingredientName) VALUES ('sugar');
INSERT INTO ingredient (ingredientName) VALUES ('cinnamon');
INSERT INTO ingredient (ingredientName) VALUES ('nutmeg');
INSERT INTO ingredient (ingredientName) VALUES ('cloves');
INSERT INTO ingredient (ingredientName) VALUES ('Pastry dough');
INSERT INTO ingredient (ingredientName) VALUES ('Egg wash (1 egg beaten with a splash of milk)');
INSERT INTO ingredient (ingredientName) VALUES ('brown sugar');


INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (1, 1); 
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (1, 2);
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (1, 3);
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (1, 4); 
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (1, 5); 
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (1, 6); 
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (1, 7); 
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (1, 8); 


INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (2, 1); 
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (2, 2); 
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (2, 3); 
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (2, 4); 
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (2, 5); 
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (2, 6); 
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (2, 7); 
INSERT INTO IngredientInRecipe (recipeId, ingredientId) VALUES (2, 8); 

DROP TABLE recipe;