package cs.dit;

/**============================================================
 * 패키지명 : cs.dit
 * 파일명 : LoginDto.java
 * 변경이력 :
 * 2022-5-2 / 최초작성 / 이주명
 * 프로그램 설명 :
 * 데이터전달을 위한 객체
 *
 *=============================================================*/
public class LoginDto {
	private String id;
	private String pwd;
	private String nickname;
	private String email;
	private String hobby;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public LoginDto(String id, String nickname, String pwd, String email, String hobby) {
		this.id = id;
		this.pwd = pwd;
		this.nickname = nickname;
		this.email = email;
		this.hobby = hobby;
	}
	public LoginDto() {
	}
}
