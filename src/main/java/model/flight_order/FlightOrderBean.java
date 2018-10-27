package model.flight_order;



import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Date;

import javax.persistence.OneToOne;
import javax.persistence.Table;

import model.customer.CustomerBean;
import model.national.NationalBean;

@Entity
@Table(name = "Flight_Order")
public class FlightOrderBean {
	@Id
	@Column(name="F_order_id")
	private String fOrderId;
	@Column(name="customer_id")
	private String customerId;
	@Column(name="F_order_firstName")
	private String fOrderFirstName;
	@Column(name="F_order_lastName")
	private String fOrderListName;
	@Column(name="F_order_phone")
	private String fOrderPhone;
	@Column(name="F_order_email")
	private String fOrderEmail;
	@Column(name="F_order_salutation")
	private Boolean fOrderSalutation;
	@Column(name="F_order_total")
	private Integer fOrderTotal;
	@Column(name="F_order_segment")
	private Boolean fOrderSegment;
	@Column(name="F_order_adult")
	private Integer fOrderAdult;
	@Column(name="F_order_child")
	private Integer fOrderChild;
	@Column(name="F_order_national")
	private String fOrderNational;
	@Column(name="F_order_date")
	private Date fOrderDate;

	@ManyToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="customer_id")
	private CustomerBean customerBean;
	
	@OneToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="F_order_national")
	private NationalBean nationalBean;
	
	public FlightOrderBean() {}

	public FlightOrderBean(String fOrderId, String customerId, String fOrderFirstName, String fOrderListName,
			String fOrderPhone, String fOrderEmail, Boolean fOrderSalutation, Integer fOrderTotal,
			Boolean fOrderSegment, Integer fOrderAdult, Integer fOrderChild, String fOrderNational, Date fOrderDate,
			CustomerBean customerBean, NationalBean nationalBean) {
		super();
		this.fOrderId = fOrderId;
		this.customerId = customerId;
		this.fOrderFirstName = fOrderFirstName;
		this.fOrderListName = fOrderListName;
		this.fOrderPhone = fOrderPhone;
		this.fOrderEmail = fOrderEmail;
		this.fOrderSalutation = fOrderSalutation;
		this.fOrderTotal = fOrderTotal;
		this.fOrderSegment = fOrderSegment;
		this.fOrderAdult = fOrderAdult;
		this.fOrderChild = fOrderChild;
		this.fOrderNational = fOrderNational;
		this.fOrderDate = fOrderDate;
		this.customerBean = customerBean;
		this.nationalBean = nationalBean;
	}

	@Override
	public String toString() {
		return "FlightOrderBean [fOrderId=" + fOrderId + ", customerId=" + customerId + ", fOrderFirstName="
				+ fOrderFirstName + ", fOrderListName=" + fOrderListName + ", fOrderPhone=" + fOrderPhone
				+ ", fOrderEmail=" + fOrderEmail + ", fOrderSalutation=" + fOrderSalutation + ", fOrderTotal="
				+ fOrderTotal + ", fOrderSegment=" + fOrderSegment + ", fOrderAdult=" + fOrderAdult + ", fOrderChild="
				+ fOrderChild + ", fOrderNational=" + fOrderNational + ", fOrderDate=" + fOrderDate + "]";
	}

	public String getfOrderId() {
		return fOrderId;
	}

	public void setfOrderId(String fOrderId) {
		this.fOrderId = fOrderId;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getfOrderFirstName() {
		return fOrderFirstName;
	}

	public void setfOrderFirstName(String fOrderFirstName) {
		this.fOrderFirstName = fOrderFirstName;
	}

	public String getfOrderListName() {
		return fOrderListName;
	}

	public void setfOrderListName(String fOrderListName) {
		this.fOrderListName = fOrderListName;
	}

	public String getfOrderPhone() {
		return fOrderPhone;
	}

	public void setfOrderPhone(String fOrderPhone) {
		this.fOrderPhone = fOrderPhone;
	}

	public String getfOrderEmail() {
		return fOrderEmail;
	}

	public void setfOrderEmail(String fOrderEmail) {
		this.fOrderEmail = fOrderEmail;
	}

	public Boolean getfOrderSalutation() {
		return fOrderSalutation;
	}

	public void setfOrderSalutation(Boolean fOrderSalutation) {
		this.fOrderSalutation = fOrderSalutation;
	}

	public Integer getfOrderTotal() {
		return fOrderTotal;
	}

	public void setfOrderTotal(Integer fOrderTotal) {
		this.fOrderTotal = fOrderTotal;
	}

	public Boolean getfOrderSegment() {
		return fOrderSegment;
	}

	public void setfOrderSegment(Boolean fOrderSegment) {
		this.fOrderSegment = fOrderSegment;
	}

	public Integer getfOrderAdult() {
		return fOrderAdult;
	}

	public void setfOrderAdult(Integer fOrderAdult) {
		this.fOrderAdult = fOrderAdult;
	}

	public Integer getfOrderChild() {
		return fOrderChild;
	}

	public void setfOrderChild(Integer fOrderChild) {
		this.fOrderChild = fOrderChild;
	}

	public String getfOrderNational() {
		return fOrderNational;
	}

	public void setfOrderNational(String fOrderNational) {
		this.fOrderNational = fOrderNational;
	}

	public Date getfOrderDate() {
		return fOrderDate;
	}

	public void setfOrderDate(Date fOrderDate) {
		this.fOrderDate = fOrderDate;
	}

	public CustomerBean getCustomerBean() {
		return customerBean;
	}

	public void setCustomerBean(CustomerBean customerBean) {
		this.customerBean = customerBean;
	}

	public NationalBean getNationalBean() {
		return nationalBean;
	}

	public void setNationalBean(NationalBean nationalBean) {
		this.nationalBean = nationalBean;
	}
	
}
