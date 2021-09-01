package com.example.controller;

import com.example.entity.Book;
import com.example.service.BookService;
import com.example.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

/**
 * @author sqb
 */
@RestController
public class BookController {
    @Autowired
    BookService bookService;

    //查找所有书籍
    @CrossOrigin
    @GetMapping("/api/books")
    public List<Book> list() throws Exception{
        return bookService.list();
    }

    //添加或者修改书籍
    @CrossOrigin
    @PostMapping("/api/books/addOrUpdate")
    public void addOrUpdate(@RequestBody Book book){
        bookService.addOrUpdate(book);
    }

    //删除书籍
    //@RequestBody接受对象，会自动把json数据封装到对象当中
    @CrossOrigin
    @PostMapping("/api/delete")
    public void delete(@RequestBody Book book)throws Exception{
        bookService.deleteById(book.getId());
    }

    //通过分类查找书籍
    @CrossOrigin
    @GetMapping("api/categories/{cid}/books")
    public List<Book> listByCategory(@PathVariable("cid") int cid)throws Exception{
        if(0 != cid){
            System.out.println("类别测试");
            return bookService.listByCategory(cid);
        }else{
            return list();
        }
    }

    //通过作者或者书名查找书籍
    @CrossOrigin
    @GetMapping("/api/search")
    public List<Book> searchResult(String keywords){
        if("".equals(keywords)){
            return bookService.list();
        }else {
            return bookService.Search(keywords);
        }
    }

    //上传书籍图片
    @CrossOrigin
    @PostMapping("api/covers")
    public String coversUpload(MultipartFile file) throws Exception{
        String folder = "D:/Idea/workspace/img";
        File imageFolder = new File(folder);
        File f = new File(imageFolder, StringUtils.getRandomString(6) + file.getOriginalFilename()
                .substring(file.getOriginalFilename().length() - 4));
        if(!f.getParentFile().exists()){
            f.getParentFile().mkdirs();
        }
        try{
            file.transferTo(f);
            String imgURL = "http://localhost:8082/api/file/" + f.getName();
            return imgURL;
        }catch (IOException e){
            e.printStackTrace();
            return "";
        }
    }


}
