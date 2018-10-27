package model.customer;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Customer")
public class CustomerBean {
	
	@Id
	@Column(name="customer_id")
	private String customerId;
	@Column(name="customer_lastName")
	private String customerLastName;
	@Column(name="customer_firstName")
	private String customerFirstName;
	@Column(name="customer_password")
	private String customerPassword;	
	@Column(name="customer_phone")
	private String customerPhone;
	@Column(name="customer_gender")
	private Boolean customerGender;
	@Column(name="customer_birthday")
	private Date customerBirthday;
	@Column(name="customer_email")
	private String customerEmail;
	@Column(name="customer_national")
	private String customerNational;
	@Column(name="customer_date")
	private Date customerDate;

	public CustomerBean() {}

	public CustomerBean(String customerId, String customerLastName, String customerFirstName, String customerPassword,
			String customerPhone, Boolean customerGender, Date customerBirthday, String customerEmail,
			String customerNational, Date customerDate) {
		super();
		this.customerId = customerId;
		this.customerLastName = customerLastName;
		this.customerFirstName = customerFirstName;
		this.customerPassword = customerPassword;
		this.customerPhone = customerPhone;
		this.customerGender = customerGender;
		this.customerBirthday = customerBirthday;
		this.customerEmail = customerEmail;
		this.customerNational = customerNational;
		this.customerDate = customerDate;
	}

	@Override
	public String toString() {
		return "CustomerBean [customerId=" + customerId + ", customerLastName=" + customerLastName
				+ ", customerFirstName=" + customerFirstName + ", customerPassword=" + customerPassword
				+ ", customerPhone=" + customerPhone + ", customerGender=" + customerGender + ", customerBirthday="
				+ customerBirthday + ", customerEmail=" + customerEmail + ", customerNational=" + customerNational
				+ ", customerDate=" + customerDate + "]";
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getCustomerLastName() {
		return customerLastName;
	}

	public void setCustomerLastName(String customerLastName) {
		this.customerLastName = customerLastName;
	}

	public String getCustomerFirstName() {
		return customerFirstName;
	}

	public void setCustomerFirstName(String customerFirstName) {
		this.customerFirstName = customerFirstName;
	}

	public String getCustomerPassword() {
		return customerPassword;
	}

	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public Boolean getCustomerGender() {
		return customerGender;
	}

	public void setCustomerGender(Boolean customerGender) {
		this.customerGender = customerGender;
	}

	public Date getCustomerBirthday() {
		return customerBirthday;
	}

	public void setCustomerBirthday(Date customerBirthday) {
		this.customerBirthday = customerBirthday;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerNational() {
		return customerNational;
	}

	public void setCustomerNational(String customerNational) {
		this.customerNational = customerNational;
	}

	public Date getCustomerDate() {
		return customerDate;
	}

	public void setCustomerDate(Date customerDate) {
		this.customerDate = customerDate;
	}
	
	

}
