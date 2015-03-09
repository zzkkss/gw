package com.gw.model.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the member table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="member"
 */

public abstract class BaseMember  implements Serializable {

	public static String REF = "Member";
	public static String PROP_EMAIL = "Email";
	public static String PROP_ADDRESS = "Address";
	public static String PROP_PHONE = "Phone";
	public static String PROP_SEX = "Sex";
	public static String PROP_IDNUM = "Idnum";
	public static String PROP_PUSHMSG = "Pushmsg";
	public static String PROP_ID = "Id";
	public static String PROP_IDTYPE = "Idtype";
	public static String PROP_NAME = "Name";


	// constructors
	public BaseMember () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseMember (java.lang.Integer id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.Integer id;

	// fields
	private java.lang.String sex;
	private java.lang.String name;
	private java.lang.String phone;
	private java.lang.String address;
	private java.lang.String email;
	private java.lang.String idtype;
	private java.lang.String idnum;
	private java.lang.String pushmsg;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="native"
     *  column="Id"
     */
	public java.lang.Integer getId () {
		return id;
	}

	/**
	 * Set the unique identifier of this class
	 * @param id the new ID
	 */
	public void setId (java.lang.Integer id) {
		this.id = id;
		this.hashCode = Integer.MIN_VALUE;
	}




	/**
	 * Return the value associated with the column: sex
	 */
	public java.lang.String getSex () {
		return sex;
	}

	/**
	 * Set the value related to the column: sex
	 * @param sex the sex value
	 */
	public void setSex (java.lang.String sex) {
		this.sex = sex;
	}



	/**
	 * Return the value associated with the column: name
	 */
	public java.lang.String getName () {
		return name;
	}

	/**
	 * Set the value related to the column: name
	 * @param name the name value
	 */
	public void setName (java.lang.String name) {
		this.name = name;
	}



	/**
	 * Return the value associated with the column: phone
	 */
	public java.lang.String getPhone () {
		return phone;
	}

	/**
	 * Set the value related to the column: phone
	 * @param phone the phone value
	 */
	public void setPhone (java.lang.String phone) {
		this.phone = phone;
	}



	/**
	 * Return the value associated with the column: address
	 */
	public java.lang.String getAddress () {
		return address;
	}

	/**
	 * Set the value related to the column: address
	 * @param address the address value
	 */
	public void setAddress (java.lang.String address) {
		this.address = address;
	}



	/**
	 * Return the value associated with the column: email
	 */
	public java.lang.String getEmail () {
		return email;
	}

	/**
	 * Set the value related to the column: email
	 * @param email the email value
	 */
	public void setEmail (java.lang.String email) {
		this.email = email;
	}



	/**
	 * Return the value associated with the column: idtype
	 */
	public java.lang.String getIdtype () {
		return idtype;
	}

	/**
	 * Set the value related to the column: idtype
	 * @param idtype the idtype value
	 */
	public void setIdtype (java.lang.String idtype) {
		this.idtype = idtype;
	}



	/**
	 * Return the value associated with the column: idnum
	 */
	public java.lang.String getIdnum () {
		return idnum;
	}

	/**
	 * Set the value related to the column: idnum
	 * @param idnum the idnum value
	 */
	public void setIdnum (java.lang.String idnum) {
		this.idnum = idnum;
	}



	/**
	 * Return the value associated with the column: pushmsg
	 */
	public java.lang.String getPushmsg () {
		return pushmsg;
	}

	/**
	 * Set the value related to the column: pushmsg
	 * @param pushmsg the pushmsg value
	 */
	public void setPushmsg (java.lang.String pushmsg) {
		this.pushmsg = pushmsg;
	}




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof com.gw.model.Member)) return false;
		else {
			com.gw.model.Member member = (com.gw.model.Member) obj;
			if (null == this.getId() || null == member.getId()) return false;
			else return (this.getId().equals(member.getId()));
		}
	}

	public int hashCode () {
		if (Integer.MIN_VALUE == this.hashCode) {
			if (null == this.getId()) return super.hashCode();
			else {
				String hashStr = this.getClass().getName() + ":" + this.getId().hashCode();
				this.hashCode = hashStr.hashCode();
			}
		}
		return this.hashCode;
	}


	public String toString () {
		return super.toString();
	}


}