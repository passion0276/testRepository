package model.traffic_order;

import java.util.Date;
import java.sql.Time;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import model.customer.CustomerBean;
@Entity
@Table(name="Traffic_order")
public class TrafficOrderBean {
	@Id
	@Column(name="R_order_id")
	private String rOrderId;
	@Column(name="customer_id")
	private String customerId;
	@Column(name="R_order_firstName")
	private String rOrderFirstName;
	@Column(name="R_order_lastName")
	private String rOrderLastName;
	@Column(name="R_order_national")
	private String rOrderNational;
	@Column(name="R_order_total")
	private Integer rOrderTotal;
	@Column(name="R_order_amount")
	private Integer rOrderAmount;
	@Column(name="R_order_email")
	private String rOrderEmail;
	@Column(name="R_order_trainNo")
	private String rOrderTrainNo;
	@Column(name="R_order_type")
	private String rOrderType;
	@Column(name="R_order_useDate")
	private Date rOrderUseDate;
	@Column(name="R_order_startT")
	private Time rOrderStartT;
	@Column(name="R_order_endT")
	private Time rOrderEndT;
	@Column(name="R_order_startP")
	private String rOrderStratP;
	@Column(name="R_order_endP")
	private String rOrderEndP;
	@Column(name="R_order_travelT")
	private Time rOrderTravelT;
	@Column(name="R_order_date")
	private Date rOrderDate;
	public TrafficOrderBean() { }
	public TrafficOrderBean(String rOrderId, String customerId, String rOrderFirstName, String rOrderLastName,
			String rOrderNational, Integer rOrderTotal, Integer rOrderAmount, String rOrderEmail, String rOrderTrainNo,
			String rOrderType, Date rOrderUseDate, Time rOrderStartT, Time rOrderEndT, String rOrderStratP,
			String rOrderEndP, Time rOrderTravelT, Date rOrderDate) {
		super();
		this.rOrderId = rOrderId;
		this.customerId = customerId;
		this.rOrderFirstName = rOrderFirstName;
		this.rOrderLastName = rOrderLastName;
		this.rOrderNational = rOrderNational;
		this.rOrderTotal = rOrderTotal;
		this.rOrderAmount = rOrderAmount;
		this.rOrderEmail = rOrderEmail;
		this.rOrderTrainNo = rOrderTrainNo;
		this.rOrderType = rOrderType;
		this.rOrderUseDate = rOrderUseDate;
		this.rOrderStartT = rOrderStartT;
		this.rOrderEndT = rOrderEndT;
		this.rOrderStratP = rOrderStratP;
		this.rOrderEndP = rOrderEndP;
		this.rOrderTravelT = rOrderTravelT;
		this.rOrderDate = rOrderDate;
	}
	@Override
	public String toString() {
		return "TrafficOrderBean [rOrderId=" + rOrderId + ", customerId=" + customerId + ", rOrderFirstName="
				+ rOrderFirstName + ", rOrderLastName=" + rOrderLastName + ", rOrderNational=" + rOrderNational
				+ ", rOrderTotal=" + rOrderTotal + ", rOrderAmount=" + rOrderAmount + ", rOrderEmail=" + rOrderEmail
				+ ", rOrderTrainNo=" + rOrderTrainNo + ", rOrderType=" + rOrderType + ", rOrderUseDate=" + rOrderUseDate
				+ ", rOrderStartT=" + rOrderStartT + ", rOrderEndT=" + rOrderEndT + ", rOrderStratP=" + rOrderStratP
				+ ", rOrderEndP=" + rOrderEndP + ", rOrderTravelT=" + rOrderTravelT + ", rOrderDate=" + rOrderDate
				+ "]";
	}
	public String getrOrderId() {
		return rOrderId;
	}
	public void setrOrderId(String rOrderId) {
		this.rOrderId = rOrderId;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getrOrderFirstName() {
		return rOrderFirstName;
	}
	public void setrOrderFirstName(String rOrderFirstName) {
		this.rOrderFirstName = rOrderFirstName;
	}
	public String getrOrderLastName() {
		return rOrderLastName;
	}
	public void setrOrderLastName(String rOrderLastName) {
		this.rOrderLastName = rOrderLastName;
	}
	public String getrOrderNational() {
		return rOrderNational;
	}
	public void setrOrderNational(String rOrderNational) {
		this.rOrderNational = rOrderNational;
	}
	public Integer getrOrderTotal() {
		return rOrderTotal;
	}
	public void setrOrderTotal(Integer rOrderTotal) {
		this.rOrderTotal = rOrderTotal;
	}
	public Integer getrOrderAmount() {
		return rOrderAmount;
	}
	public void setrOrderAmount(Integer rOrderAmount) {
		this.rOrderAmount = rOrderAmount;
	}
	public String getrOrderEmail() {
		return rOrderEmail;
	}
	public void setrOrderEmail(String rOrderEmail) {
		this.rOrderEmail = rOrderEmail;
	}
	public String getrOrderTrainNo() {
		return rOrderTrainNo;
	}
	public void setrOrderTrainNo(String rOrderTrainNo) {
		this.rOrderTrainNo = rOrderTrainNo;
	}
	public String getrOrderType() {
		return rOrderType;
	}
	public void setrOrderType(String rOrderType) {
		this.rOrderType = rOrderType;
	}
	public Date getrOrderUseDate() {
		return rOrderUseDate;
	}
	public void setrOrderUseDate(Date rOrderUseDate) {
		this.rOrderUseDate = rOrderUseDate;
	}
	public Time getrOrderStartT() {
		return rOrderStartT;
	}
	public void setrOrderStartT(Time rOrderStartT) {
		this.rOrderStartT = rOrderStartT;
	}
	public Time getrOrderEndT() {
		return rOrderEndT;
	}
	public void setrOrderEndT(Time rOrderEndT) {
		this.rOrderEndT = rOrderEndT;
	}
	public String getrOrderStratP() {
		return rOrderStratP;
	}
	public void setrOrderStratP(String rOrderStratP) {
		this.rOrderStratP = rOrderStratP;
	}
	public String getrOrderEndP() {
		return rOrderEndP;
	}
	public void setrOrderEndP(String rOrderEndP) {
		this.rOrderEndP = rOrderEndP;
	}
	public Time getrOrderTravelT() {
		return rOrderTravelT;
	}
	public void setrOrderTravelT(Time rOrderTravelT) {
		this.rOrderTravelT = rOrderTravelT;
	}
	public Date getrOrderDate() {
		return rOrderDate;
	}
	public void setrOrderDate(Date rOrderDate) {
		this.rOrderDate = rOrderDate;
	}
	
	
}
