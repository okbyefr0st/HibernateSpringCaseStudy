package lti.zombie.pojo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name = "feeds")
public class Feeds {
	@Id
	private long feedId;
	private String userId;
	private String questions;
	private Date feedStamp;

	@ManyToOne
	@JoinColumn(name = "userId")
	private Users user;

	@OneToMany(mappedBy = "feeds", cascade = { CascadeType.ALL }, fetch = FetchType.EAGER)
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Set<Comments> Commented = new HashSet<Comments>();

	public long getFeedId() {
		return feedId;
	}

	public void setFeedId(long feedId) {
		this.feedId = feedId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getQuestions() {
		return questions;
	}

	public void setQuestions(String questions) {
		this.questions = questions;
	}

	public Date getFeedStamp() {
		return feedStamp;
	}

	public void setFeedStamp(Date feedStamp) {
		this.feedStamp = feedStamp;
	}

}
