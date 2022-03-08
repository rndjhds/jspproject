// DAO(Data Access Object) : DB에 연동하는 모든 작업은 DAO가 처리한다.

package JavaBeanMember.register;

public class LogonDBBean {

	// 싱글톤 : 객체 생성을 힌번만 수행 하는 것.
	private static LogonDBBean instance = new LogonDBBean();
	
	public static LogonDBBean getInstance() {
		return instance;
	}
	
	// 회원가입
	
}
