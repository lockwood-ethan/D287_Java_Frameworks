package com.example.tacocloud;
import java.util.List;
import java.util.Date;
import lombok.Data;

@Data
public class Taco {

    private String name;

    private List<Ingredient> ingredients;

    private Long id;

    private Date createdAt = new Date();
    
}
