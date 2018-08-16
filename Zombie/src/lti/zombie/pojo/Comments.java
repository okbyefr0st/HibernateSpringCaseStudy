package lti.zombie.pojo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="comments")
public class Comments {

	@Id
	@Column(name = "comment_id")
	private long commentId;
	
	private String comment;
	private String userId;
	private Date CommentStamp;
	
	@ManyToOne
	@JoinColumn(name = "feedId")
	private Set<Comments> commented = new HashSet<Comments>();

	private Feeds feed;

	@ManyToOne
	@JoinColumn(name="user_id")
	private Set<Users> user = new HashSet<Users>();

	public long getCommentId() {
		return commentId;
	}

	public void setCommentId(long commentId) {
		this.commentId = commentId;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getCommentStamp() {
		return CommentStamp;
	}

	public void setCommentStamp(Date commentStamp) {
		CommentStamp = commentStamp;
	}

}
