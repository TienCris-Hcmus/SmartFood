package utils;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;
 
public class FormUtil {
	
	//Map tất cả para trên url sẽ map vào model, dùng BeanUtils.populate, BeanUtils trong pomxml
	@SuppressWarnings("unchecked")
	//Đặt static khỏi new
	public static <T> T toModel(Class<T> clazz, HttpServletRequest request) {
		T object = null;
		try {
			object = clazz.getDeclaredConstructor().newInstance();
			//Mấy cái trên url chuyển thành Map rồi được ánh xạ vào object
			BeanUtils.populate(object, request.getParameterMap());
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		}
		return object;
}
}
