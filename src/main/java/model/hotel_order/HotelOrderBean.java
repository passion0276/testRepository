package model.hotel_order;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import model.customer.CustomerBean;
import model.hotel.HotelBean;
import model.hotel_room.HotelRoomBean;
import model.national.NationalBean;

@Entity
@Table(name="Hotel_order")
public class HotelOrderBean{
	@Id
	@Column(name="H_order_id")
	private String hOrderId;
	@Column(name="customer_id")
	private String customerId;
	@Column(name="hotel_id")
	private String hotelId;
	@Column(name="room_id")
	private String roomId;
	@Column(name="H_order_national")
	private String hOrderNational;
	@Column(name="H_order_firstName")
	private String hOrderFirstName;
	@Column(name="H_order_lastName")
	private String hOrderLastName;
	@Column(name="H_order_phone")
	private String hOrderPhone;
	@Column(name="H_order_email")
	private String hOrderEmail;
	@Column(name="H_order_checkIn")
	private Date hOrderCheckIn;
	@Column(name="H_order_checkOut")
	private Date hOrderCheckOut;
	@Column(name="H_order_total")
	private Integer hOrderTotal;
	@Column(name="H_stay_firstName")
	private String hStayFirstName;
	@Column(name="H_stay_lastName")
	private String hStayLastName;
	@Column(name="H_stay_phone")
	private String hStayPhone;
	@Column(name="H_stay_email")
	private String hStayEmail;
	@Column(name="H_stay_national")
	private String hStayNational;
	@Column(name="H_score")
	private Integer hScore;
	@Column(name="H_message")
	private String hMessage;
	@Column(name="H_order_date")
	private Date hOrderDate;
	
	@OneToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="H_order_national")
	private NationalBean nationalBean; 
	@ManyToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="room_id")
	private HotelRoomBean hotelRoomBean;
	
	public HotelOrderBean() { }

	public HotelOrderBean(String hOrderId, String customerId, String hotelId, String roomId, String hOrderNational,
			String hOrderFirstName, String hOrderLastName, String hOrderPhone, String hOrderEmail, Date hOrderCheckIn,
			Date hOrderCheckOut, Integer hOrderTotal, String hStayFirstName, String hStayLastName, String hStayPhone,
			String hStayEmail, String hStayNational, Integer hScore, String hMessage, Date hOrderDate,
			NationalBean nationalBean, HotelRoomBean hotelRoomBean) {
		super();
		this.hOrderId = hOrderId;
		this.customerId = customerId;
		this.hotelId = hotelId;
		this.roomId = roomId;
		this.hOrderNational = hOrderNational;
		this.hOrderFirstName = hOrderFirstName;
		this.hOrderLastName = hOrderLastName;
		this.hOrderPhone = hOrderPhone;
		this.hOrderEmail = hOrderEmail;
		this.hOrderCheckIn = hOrderCheckIn;
		this.hOrderCheckOut = hOrderCheckOut;
		this.hOrderTotal = hOrderTotal;
		this.hStayFirstName = hStayFirstName;
		this.hStayLastName = hStayLastName;
		this.hStayPhone = hStayPhone;
		this.hStayEmail = hStayEmail;
		this.hStayNational = hStayNational;
		this.hScore = hScore;
		this.hMessage = hMessage;
		this.hOrderDate = hOrderDate;
		this.nationalBean = nationalBean;
		this.hotelRoomBean = hotelRoomBean;
	}

	@Override
	public String toString() {
		return "HotelOrderBean [hOrderId=" + hOrderId + ", customerId=" + customerId + ", hotelId=" + hotelId
				+ ", roomId=" + roomId + ", hOrderNational=" + hOrderNational + ", hOrderFirstName=" + hOrderFirstName
				+ ", hOrderLastName=" + hOrderLastName + ", hOrderPhone=" + hOrderPhone + ", hOrderEmail=" + hOrderEmail
				+ ", hOrderCheckIn=" + hOrderCheckIn + ", hOrderCheckOut=" + hOrderCheckOut + ", hOrderTotal="
				+ hOrderTotal + ", hStayFirstName=" + hStayFirstName + ", hStayLastName=" + hStayLastName
				+ ", hStayPhone=" + hStayPhone + ", hStayEmail=" + hStayEmail + ", hStayNational=" + hStayNational
				+ ", hScore=" + hScore + ", hMessage=" + hMessage + ", hOrderDate=" + hOrderDate + "]";
	}

	public String gethOrderId() {
		return hOrderId;
	}

	public void sethOrderId(String hOrderId) {
		this.hOrderId = hOrderId;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getHotelId() {
		return hotelId;
	}

	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}

	public String getRoomId() {
		return roomId;
	}

	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}

	public String gethOrderNational() {
		return hOrderNational;
	}

	public void sethOrderNational(String hOrderNational) {
		this.hOrderNational = hOrderNational;
	}

	public String gethOrderFirstName() {
		return hOrderFirstName;
	}

	public void sethOrderFirstName(String hOrderFirstName) {
		this.hOrderFirstName = hOrderFirstName;
	}

	public String gethOrderLastName() {
		return hOrderLastName;
	}

	public void sethOrderLastName(String hOrderLastName) {
		this.hOrderLastName = hOrderLastName;
	}

	public String gethOrderPhone() {
		return hOrderPhone;
	}

	public void sethOrderPhone(String hOrderPhone) {
		this.hOrderPhone = hOrderPhone;
	}

	public String gethOrderEmail() {
		return hOrderEmail;
	}

	public void sethOrderEmail(String hOrderEmail) {
		this.hOrderEmail = hOrderEmail;
	}

	public Date gethOrderCheckIn() {
		return hOrderCheckIn;
	}

	public void sethOrderCheckIn(Date hOrderCheckIn) {
		this.hOrderCheckIn = hOrderCheckIn;
	}

	public Date gethOrderCheckOut() {
		return hOrderCheckOut;
	}

	public void sethOrderCheckOut(Date hOrderCheckOut) {
		this.hOrderCheckOut = hOrderCheckOut;
	}

	public Integer gethOrderTotal() {
		return hOrderTotal;
	}

	public void sethOrderTotal(Integer hOrderTotal) {
		this.hOrderTotal = hOrderTotal;
	}

	public String gethStayFirstName() {
		return hStayFirstName;
	}

	public void sethStayFirstName(String hStayFirstName) {
		this.hStayFirstName = hStayFirstName;
	}

	public String gethStayLastName() {
		return hStayLastName;
	}

	public void sethStayLastName(String hStayLastName) {
		this.hStayLastName = hStayLastName;
	}

	public String gethStayPhone() {
		return hStayPhone;
	}

	public void sethStayPhone(String hStayPhone) {
		this.hStayPhone = hStayPhone;
	}

	public String gethStayEmail() {
		return hStayEmail;
	}

	public void sethStayEmail(String hStayEmail) {
		this.hStayEmail = hStayEmail;
	}

	public String gethStayNational() {
		return hStayNational;
	}

	public void sethStayNational(String hStayNational) {
		this.hStayNational = hStayNational;
	}

	public Integer gethScore() {
		return hScore;
	}

	public void sethScore(Integer hScore) {
		this.hScore = hScore;
	}

	public String gethMessage() {
		return hMessage;
	}

	public void sethMessage(String hMessage) {
		this.hMessage = hMessage;
	}

	public Date gethOrderDate() {
		return hOrderDate;
	}

	public void sethOrderDate(Date hOrderDate) {
		this.hOrderDate = hOrderDate;
	}

	public NationalBean getNationalBean() {
		return nationalBean;
	}

	public void setNationalBean(NationalBean nationalBean) {
		this.nationalBean = nationalBean;
	}

	public HotelRoomBean getHotelRoomBean() {
		return hotelRoomBean;
	}

	public void setHotelRoomBean(HotelRoomBean hotelRoomBean) {
		this.hotelRoomBean = hotelRoomBean;
	}

}
