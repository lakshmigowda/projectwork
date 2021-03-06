package lakshmigowda.session.entities;

// Generated Nov 11, 2014 5:17:49 AM by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Lakshmi
 * Survey entity
 */
@Entity
@Table(name = "survey", catalog = "surveys")
public class Survey implements java.io.Serializable {

	private String id;
	private String email;
	private String city;
	private String comments;
	private String firstName;
	private String interest;
	private String lastName;
	private String likedAboutSchool;
	private String phone;
	private String raffle;
	private String recommend;
	private String state;
	private String streetAddress;
	private String surveyDate;
	private Set<Emergencycontact> emergencycontacts = new HashSet<Emergencycontact>(
			0);

	public Survey() {
	}

	public Survey(String id) {
		this.id = id;
	}

	public Survey(String id, String email, String city, String comments,
			String firstName, String interest, String lastName,
			String likedAboutSchool, String phone, String raffle,
			String recommend, String state, String streetAddress,
			String surveyDate, Set<Emergencycontact> emergencycontacts) {
		this.id = id;
		this.email = email;
		this.city = city;
		this.comments = comments;
		this.firstName = firstName;
		this.interest = interest;
		this.lastName = lastName;
		this.likedAboutSchool = likedAboutSchool;
		this.phone = phone;
		this.raffle = raffle;
		this.recommend = recommend;
		this.state = state;
		this.streetAddress = streetAddress;
		this.surveyDate = surveyDate;
		this.emergencycontacts = emergencycontacts;
	}

	@Id
	@Column(name = "id", unique = true, nullable = false, length = 45)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "email", length = 45)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "city", length = 45)
	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "comments", length = 45)
	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	@Column(name = "firstName", length = 45)
	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "interest", length = 45)
	public String getInterest() {
		return this.interest;
	}

	public void setInterest(String interest) {
		this.interest = interest;
	}

	@Column(name = "lastName", length = 45)
	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name = "likedAboutSchool", length = 45)
	public String getLikedAboutSchool() {
		return this.likedAboutSchool;
	}

	public void setLikedAboutSchool(String likedAboutSchool) {
		this.likedAboutSchool = likedAboutSchool;
	}

	@Column(name = "phone", length = 45)
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "raffle", length = 45)
	public String getRaffle() {
		return this.raffle;
	}

	public void setRaffle(String raffle) {
		this.raffle = raffle;
	}

	@Column(name = "recommend", length = 45)
	public String getRecommend() {
		return this.recommend;
	}

	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}

	@Column(name = "state", length = 45)
	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "streetAddress", length = 45)
	public String getStreetAddress() {
		return this.streetAddress;
	}

	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}

	@Column(name = "surveyDate", length = 45)
	public String getSurveyDate() {
		return this.surveyDate;
	}

	public void setSurveyDate(String surveyDate) {
		this.surveyDate = surveyDate;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "survey", cascade = CascadeType.REMOVE)
	public Set<Emergencycontact> getEmergencycontacts() {
		return this.emergencycontacts;
	}

	public void setEmergencycontacts(Set<Emergencycontact> emergencycontacts) {
		this.emergencycontacts = emergencycontacts;
	}

}
