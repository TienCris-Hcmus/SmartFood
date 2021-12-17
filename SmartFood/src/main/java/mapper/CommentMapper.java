package mapper;

import java.sql.ResultSet;

import model.CommentModel;

public class CommentMapper implements RowMapper<CommentModel>{

	@Override
	public CommentModel mapRow(ResultSet rs) {
		try {
			CommentModel comment = new CommentModel();
			comment.setIDCmt(rs.getString("IDCmt"));
			comment.setIDFood(rs.getString("IDFood"));
			comment.setDateCraeted(rs.getTimestamp("DateCraeted"));
			comment.setContent(rs.getString("Content"));
			return comment;
		} catch (Exception e) {
			return null;
		}
	}

}
