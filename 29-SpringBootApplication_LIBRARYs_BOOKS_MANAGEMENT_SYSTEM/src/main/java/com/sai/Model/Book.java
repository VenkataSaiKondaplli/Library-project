package com.sai.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Book {
	
	@Id
	private long bookID;
	private String bookISBN_NUMBER;
	private String bookTitle;
	private String authorName;
	private String status;
	private String price;
	private String publicationName;
	
	public Book() {
		// TODO Auto-generated constructor stub
	}

	public Book(long bookID, String bookISBN_NUMBER, String bookTitle, String authorName, String status, String price,
			String publicationName) {
		super();
		this.bookID = bookID;
		this.bookISBN_NUMBER = bookISBN_NUMBER;
		this.bookTitle = bookTitle;
		this.authorName = authorName;
		this.status = status;
		this.price = price;
		this.publicationName = publicationName;
	}

	public long getBookID() {
		return bookID;
	}

	public void setBookID(long bookID) {
		this.bookID = bookID;
	}

	public String getBookISBN_NUMBER() {
		return bookISBN_NUMBER;
	}

	public void setBookISBN_NUMBER(String bookISBN_NUMBER) {
		this.bookISBN_NUMBER = bookISBN_NUMBER;
	}

	public String getBookTitle() {
		return bookTitle;
	}

	public void setBookTitle(String bookTitle) {
		this.bookTitle = bookTitle;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPublicationName() {
		return publicationName;
	}

	public void setPublicationName(String publicationName) {
		this.publicationName = publicationName;
	}
	
	

}
