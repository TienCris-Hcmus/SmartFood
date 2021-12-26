package dao;

import model.AdminModel;
import model.CustomerModel;

public interface IAdminDAO extends GenericDAO<AdminModel>{
	AdminModel findLogin(String userName, String password);	
}
