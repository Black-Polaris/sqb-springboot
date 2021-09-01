package com.example.mapper;

import com.example.entity.Category;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author sqb
 */
@Mapper
@Repository
public interface CategoryMapper {
    List<Category> findAll();
    Category findById(int id);

}
