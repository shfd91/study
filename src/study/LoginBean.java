package study;

public class LoginBean {
	private String userid;
	private String userpw;
	
	final String _userid = "shfd91";
	final String _userpw = "sh9191";
	
	public boolean checkUser(){
		if(userid.equals(_userid) && userpw.equals(_userpw)){
			return true;
		}else{
			return false;
		}
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	
	
}
