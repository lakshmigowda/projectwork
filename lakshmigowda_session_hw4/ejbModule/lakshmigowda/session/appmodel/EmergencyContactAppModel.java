package lakshmigowda.session.appmodel;

import java.io.Serializable;

/**
 * @author Lakshmi Venkataiah
 *
 *         Represents the emergency contact application model
 */
public class EmergencyContactAppModel implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6917825046387166209L;
	private String name;
	private String phone;
	private String email;
	private String address;
	private String id;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
