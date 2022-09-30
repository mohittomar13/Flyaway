package com.flyaway.entities;

public class Message {
	private String messageText;
	private String cssClass;

	public Message(String messageText, String cssClass, String type) {
		super();
		this.messageText = messageText;
		this.cssClass = cssClass;
		this.type = type;
	}

	public String getMessageText() {
		return messageText;
	}

	public void setMessageText(String messageText) {
		this.messageText = messageText;
	}
	public String getCssClass() {
		return cssClass;
	}
	public void setCssClass(String cssClass) {
		this.cssClass = cssClass;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	private String type;
}
