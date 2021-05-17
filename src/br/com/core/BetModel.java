package br.com.core;




public class BetModel {
	private String name;
	private String content;
	private int id;
	
	public BetModel(String name, String content, int id) {
		setName(name);
		setContent(content);
		setId(id);
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
}


