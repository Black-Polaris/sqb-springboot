package com.example.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@NoArgsConstructor
@Data
@Accessors(chain = true)
public class Book {
    Integer id;
    String cover;
    String title;
    String author;
    String date;
    String press;
    String abs;
    Integer cId;

}
