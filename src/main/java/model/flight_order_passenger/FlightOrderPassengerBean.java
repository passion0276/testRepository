package model.flight_order_passenger;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import model.flight_order.FlightOrderBean;
import model.national.NationalBean;

@Entity
@Table(name="Flight_Order_Passenger")
public class FlightOrderPassengerBean {
	@Id
	@Column(name="F_order_id")
	private String fOrderId;
	@Column(name="F_passenger_firstName")
	private String fPassengerFirstName;
	@Column(name="F_passenger_lastName")
	private String fPassengerLastName;
	@Column(name="F_passenger_national")
	private String fPassengerNational;
	@Column(name="F_passenger_birthday")
	private Date fPassengerBirthday;
	@Column(name="F_passenger_phone")
	private String fPassengerPhone;
	@Column(name="F_passenger_salutation")
	private Boolean fPassengerSalutation;
	@Column(name="F_adult_price")
	private Integer fAdultPrice;
	@Column(name="F_child_price")
	private Integer fChildPrice;
	@ManyToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="F_order_id")
	private FlightOrderBean flightOrderBean;
	@OneToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="F_passenger_national")
	private NationalBean nationalBean;
	
	public FlightOrderPassengerBean() { }

	public FlightOrderPassengerBean(String fOrderId, String fPassengerFirstName, String fPassengerLastName,
			String fPassengerNational, Date fPassengerBirthday, String fPassengerPhone, Boolean fPassengerSalutation,
			Integer fAdultPrice, Integer fChildPrice, FlightOrderBean flightOrderBean, NationalBean nationalBean) {
		super();
		this.fOrderId = fOrderId;
		this.fPassengerFirstName = fPassengerFirstName;
		this.fPassengerLastName = fPassengerLastName;
		this.fPassengerNational = fPassengerNational;
		this.fPassengerBirthday = fPassengerBirthday;
		this.fPassengerPhone = fPassengerPhone;
		this.fPassengerSalutation = fPassengerSalutation;
		this.fAdultPrice = fAdultPrice;
		this.fChildPrice = fChildPrice;
		this.flightOrderBean = flightOrderBean;
		this.nationalBean = nationalBean;
	}

	@Override
	public String toString() {
		return "FlightOrderPassengerBean [fOrderId=" + fOrderId + ", fPassengerFirstName=" + fPassengerFirstName
				+ ", fPassengerLastName=" + fPassengerLastName + ", fPassengerNational=" + fPassengerNational
				+ ", fPassengerBirthday=" + fPassengerBirthday + ", fPassengerPhone=" + fPassengerPhone
				+ ", fPassengerSalutation=" + fPassengerSalutation + ", fAdultPrice=" + fAdultPrice + ", fChildPrice="
				+ fChildPrice + "]";
	}

	public String getfOrderId() {
		return fOrderId;
	}

	public void setfOrderId(String fOrderId) {
		this.fOrderId = fOrderId;
	}

	public String getfPassengerFirstName() {
		return fPassengerFirstName;
	}

	public void setfPassengerFirstName(String fPassengerFirstName) {
		this.fPassengerFirstName = fPassengerFirstName;
	}

	public String getfPassengerLastName() {
		return fPassengerLastName;
	}

	public void setfPassengerLastName(String fPassengerLastName) {
		this.fPassengerLastName = fPassengerLastName;
	}

	public String getfPassengerNational() {
		return fPassengerNational;
	}

	public void setfPassengerNational(String fPassengerNational) {
		this.fPassengerNational = fPassengerNational;
	}

	public Date getfPassengerBirthday() {
		return fPassengerBirthday;
	}

	public void setfPassengerBirthday(Date fPassengerBirthday) {
		this.fPassengerBirthday = fPassengerBirthday;
	}

	public String getfPassengerPhone() {
		return fPassengerPhone;
	}

	public void setfPassengerPhone(String fPassengerPhone) {
		this.fPassengerPhone = fPassengerPhone;
	}

	public Boolean getfPassengerSalutation() {
		return fPassengerSalutation;
	}

	public void setfPassengerSalutation(Boolean fPassengerSalutation) {
		this.fPassengerSalutation = fPassengerSalutation;
	}

	public Integer getfAdultPrice() {
		return fAdultPrice;
	}

	public void setfAdultPrice(Integer fAdultPrice) {
		this.fAdultPrice = fAdultPrice;
	}

	public Integer getfChildPrice() {
		return fChildPrice;
	}

	public void setfChildPrice(Integer fChildPrice) {
		this.fChildPrice = fChildPrice;
	}

	public FlightOrderBean getFlightOrderBean() {
		return flightOrderBean;
	}

	public void setFlightOrderBean(FlightOrderBean flightOrderBean) {
		this.flightOrderBean = flightOrderBean;
	}

	public NationalBean getNationalBean() {
		return nationalBean;
	}

	public void setNationalBean(NationalBean nationalBean) {
		this.nationalBean = nationalBean;
	}

	
	
}
