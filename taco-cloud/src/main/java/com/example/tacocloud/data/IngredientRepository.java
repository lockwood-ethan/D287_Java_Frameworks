package com.example.tacocloud.data;

import java.util.List;
import java.util.Optional;

import com.example.tacocloud.Ingredient;

public interface IngredientRepository {
    
    List<Ingredient> findAll();

    Optional<Ingredient> findById(String id);

    Ingredient save(Ingredient ingredient);
    
}
