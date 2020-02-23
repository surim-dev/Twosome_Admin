package bean;

public class BoardBean {
	
	private int num;		//게시물의 번호
	private String name;	//게시물의 이름
	private String email;	//게시물의 이메일
	private String subject;	//게시물의 제목
	private String content;	//게시물의 내용
	private int pos;		//게시물의 상대적인 위치
	private String pass;	//게시물의 비밀번호
	private String regdate;	//게시물의 저장한 날짜 
	private int count;		//게시물의 조회수
	private String ip; 		//게시물의 IP
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPos() {
		return pos;
	}
	public void setPos(int pos) {
		this.pos = pos;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	

}
