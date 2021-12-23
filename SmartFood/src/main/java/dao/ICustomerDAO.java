package dao;

import model.CustomerModel;

public interface ICustomerDAO extends GenericDAO<CustomerModel>{
	CustomerModel findLogin(String userName, String password);
	CustomerModel findLogin(Integer id);
	void update(CustomerModel newModel);
}
