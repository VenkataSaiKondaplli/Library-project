package com.sai.BookController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.sai.Model.Book;

import com.sai.Repository.BookRepository; 

@Controller
public class BookController {
	@Autowired
	private BookRepository bookRepository;
	@GetMapping("/")
	public String home()
	{
		return "home";
	}
	
	@GetMapping("/addbook")
	public String bookForm()
	{
		return "bookform";
	}
	
	@PostMapping("/save")
	public String saveBook(@ModelAttribute Book book,Model model)
		{
		Book books=bookRepository.save(book);
		model.addAttribute("books", "Book added to Library successfully");
			return "bookform";
		
		}
	
	@GetMapping("/viewallbooks")
	public String viewAllStudentMarks(Model model) {
		Iterable<Book> books = bookRepository.findAll();
		model.addAttribute("books", books);
		return "viewdataa";
	}
	
	@GetMapping("/delete/{bookID}")
	public String deleteData(@PathVariable long bookID, Model model) {
		bookRepository.deleteById(bookID);
		return "redirect:/viewallbooks";
	}

	@GetMapping("/edit/{bookID}")
	public String editData(@PathVariable long bookID, Model model) {

		model.addAttribute("command", bookRepository.findById(bookID).get());
		return "editform";
	}

	@PostMapping(path = "/update")
	public String editDataSave(Book book, Model model) {
		bookRepository.save(book);
	  return "redirect:/viewallbooks";
	}
	

}
