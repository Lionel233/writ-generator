package main.java.generator.utils;

public class Result {

	private int code;
	private String message;
	private Object result;
	
	public static final String CODE_0 = "success";
	
	public static final String CODE_101 = "duplicated name";
	public static final String CODE_102 = "internal error, please contact admin";
	public static final String CODE_103 = "information provided is not enough";
	public static final String CODE_104 = "username does not exist";
	public static final String CODE_105 = "wrong username or password";

	public Result() {
		super();
	}

	public Result(int code, String message, Object result) {
		super();
		this.code = code;
		this.message = message;
		this.result = result;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getResult() {
		return result;
	}

	public void setResult(Object result) {
		this.result = result;
	}

}
