package test.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;
import test.entity.UserInfo;

import java.util.List;

@Transactional
public class UserDAO {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public UserInfo getActiveUser(String userName) {
		UserInfo activeUserInfo = new UserInfo();
		short enabled = 1;
		List<?> list = hibernateTemplate.find("FROM "+UserInfo.class.getName() +" WHERE userName=? and enabled=?",
				userName, enabled);
		if(!list.isEmpty()) {
			activeUserInfo = (UserInfo)list.get(0);
		}
		return activeUserInfo;
	}

	public void saveUserInfos(UserInfo userInfo){
		hibernateTemplate.persist(userInfo);
	}
}