package com.example.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.sql.Date;

/**
 * @author sqb
 */
@NoArgsConstructor
@Data
@Accessors(chain = true)
public class Blog {
    Integer id;
    String article_title;
    String article_content_md;
    String article_content_html;
    String article_abstract;
    Date article_date;

}
