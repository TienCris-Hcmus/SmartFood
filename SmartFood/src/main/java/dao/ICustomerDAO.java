package dao;

import model.CustomerModel;

public interface ICustomerDAO extends GenericDAO<CustomerModel>{
	CustomerModel findLogin(String userName, String password);
	CustomerModel findLogin(Integer id);
	CustomerModel findLogin(String userName);
	void update(CustomerModel newModel);
	void register(CustomerModel newModel);
}
