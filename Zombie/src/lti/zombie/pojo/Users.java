package lti.zombie.pojo;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import com.sun.istack.internal.NotNull;

@Entity
@Table(name = "user")

public class Users {

	@Id
	@Column(name = "user_id", length = 50)
	private String userId;

	@Column(name = "password", length = 100)
	@NotNull
	private String password;

	@Column(name = "email", length = 100)
	@NotNull
	private String email;

	@OneToMany(mappedBy = "user_id", cascade = { CascadeType.ALL }, fetch = FetchType.EAGER)
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Set<Feeds> Feeds = new HashSet<Feeds>();

	@OneToMany(mappedBy = "user_id", cascade = { CascadeType.ALL }, fetch = FetchType.EAGER)
	private Set<Comments> commented = new HashSet<Comments>();

	@OneToMany
	@JoinColumn(name = "user_id")

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
