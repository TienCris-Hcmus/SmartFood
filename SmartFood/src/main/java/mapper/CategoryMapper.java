package mapper;

import java.sql.ResultSet;

import model.CategoryModel;

public class CategoryMapper implements RowMapper<CategoryModel>{

	@Override
	public CategoryModel mapRow(ResultSet rs) {
		try {
			CategoryModel category = new CategoryModel();
			category.setIdCategory(rs.getString("IdCategory"));
			category.setName_(rs.getString("Name_"));
			return category;
		} catch (Exception e) {
			return null;
		}
	}

}
