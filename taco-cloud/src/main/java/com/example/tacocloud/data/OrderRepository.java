package com.example.tacocloud.data;

import java.util.Optional;

import com.example.tacocloud.TacoOrder;

public interface OrderRepository {
    
    TacoOrder save(TacoOrder order);

}
