package com.sai.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sai.Model.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Long>{

}
