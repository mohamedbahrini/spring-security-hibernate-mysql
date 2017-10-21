package test.service;

import org.springframework.security.access.annotation.Secured;
import test.entity.UserInfo;


public interface IUserService {
	@Secured ({"ROLE_ADMIN"})
	UserInfo getDataByUserName(String userName);

	void saveUser(UserInfo userInfo);
}
 