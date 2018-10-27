package model.flight_order_detail;

import java.io.Serializable;
import java.sql.Time;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import model.flight_order.FlightOrderBean;
@Entity
@Table(name="Flight_Order_Detail")
public class FlightOrderDetailBean implements Serializable {
	@Id
	@Column(name="F_order_id")
	private String fOrderId;
	@Id
	@Column(name="F_bound")
	private String fBound;
	@Column(name="F_company")
	private String fCompany;
	@Column(name="F_number")
	private String fNumber;
	@Column(name="F_departure_time")
	private Time fDepartureTime;
	@Column(name="F_arrival_time")
	private Time fArrivalTime;
	@Column(name="F_travel_time")
	private Time fTravelTime;
	@Column(name="F_transfer")
	private Boolean fTransfer;
	@Column(name="F_origin")
	private String fOrigin;
	@Column(name="F_destination")
	private String fDestination;
	@Column(name="F_class")
	private String fClass;
	@ManyToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="F_order_id")
	private FlightOrderBean flightOrderBean; 
	
	public FlightOrderDetailBean() {}

	public FlightOrderDetailBean(String fOrderId, String fBound, String fCompany, String fNumber, Time fDepartureTime,
			Time fArrivalTime, Time fTravelTime, Boolean fTransfer, String fOrigin, String fDestination, String fClass,
			FlightOrderBean flightOrderBean) {
		super();
		this.fOrderId = fOrderId;
		this.fBound = fBound;
		this.fCompany = fCompany;
		this.fNumber = fNumber;
		this.fDepartureTime = fDepartureTime;
		this.fArrivalTime = fArrivalTime;
		this.fTravelTime = fTravelTime;
		this.fTransfer = fTransfer;
		this.fOrigin = fOrigin;
		this.fDestination = fDestination;
		this.fClass = fClass;
		this.flightOrderBean = flightOrderBean;
	}

	@Override
	public String toString() {
		return "FlightOrderDetailBean [fOrderId=" + fOrderId + ", fBound=" + fBound + ", fCompany=" + fCompany
				+ ", fNumber=" + fNumber + ", fDepartureTime=" + fDepartureTime + ", fArrivalTime=" + fArrivalTime
				+ ", fTravelTime=" + fTravelTime + ", fTransfer=" + fTransfer + ", fOrigin=" + fOrigin
				+ ", fDestination=" + fDestination + ", fClass=" + fClass + "]";
	}

	public String getfOrderId() {
		return fOrderId;
	}

	public void setfOrderId(String fOrderId) {
		this.fOrderId = fOrderId;
	}

	public String getfBound() {
		return fBound;
	}

	public void setfBound(String fBound) {
		this.fBound = fBound;
	}

	public String getfCompany() {
		return fCompany;
	}

	public void setfCompany(String fCompany) {
		this.fCompany = fCompany;
	}

	public String getfNumber() {
		return fNumber;
	}

	public void setfNumber(String fNumber) {
		this.fNumber = fNumber;
	}

	public Time getfDepartureTime() {
		return fDepartureTime;
	}

	public void setfDepartureTime(Time fDepartureTime) {
		this.fDepartureTime = fDepartureTime;
	}

	public Time getfArrivalTime() {
		return fArrivalTime;
	}

	public void setfArrivalTime(Time fArrivalTime) {
		this.fArrivalTime = fArrivalTime;
	}

	public Time getfTravelTime() {
		return fTravelTime;
	}

	public void setfTravelTime(Time fTravelTime) {
		this.fTravelTime = fTravelTime;
	}

	public Boolean getfTransfer() {
		return fTransfer;
	}

	public void setfTransfer(Boolean fTransfer) {
		this.fTransfer = fTransfer;
	}

	public String getfOrigin() {
		return fOrigin;
	}

	public void setfOrigin(String fOrigin) {
		this.fOrigin = fOrigin;
	}

	public String getfDestination() {
		return fDestination;
	}

	public void setfDestination(String fDestination) {
		this.fDestination = fDestination;
	}

	public String getfClass() {
		return fClass;
	}

	public void setfClass(String fClass) {
		this.fClass = fClass;
	}

	public FlightOrderBean getFlightOrderBean() {
		return flightOrderBean;
	}

	public void setFlightOrderBean(FlightOrderBean flightOrderBean) {
		this.flightOrderBean = flightOrderBean;
	}

	

}
