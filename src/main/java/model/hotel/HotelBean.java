package model.hotel;

import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Hotel")
public class HotelBean {
	@Id
	@Column(name="hotel_id")
	private String hotelId;
	@Column(name="hotel_name")
	private String hotelName;
	@Column(name="hotel_phone")
	private String hotelPhone;
	@Column(name="hotel_address")
	private String hotelAddress;
	@Column(name="hotel_area")
	private String hotelArea;
	@Column(name="hotel_url")
	private String hotelUrl;
	@Column(name="hotel_img")
	private String hotelImg;
	@Column(name="hotel_star")
	private Integer hotelStar;
	@Column(name="hotel_score_avg")
	private Double hotelScoreAvg;
	@Column(name="hotel_language")
	private String hotelLanguage;
	@Column(name="hotel_wifi")
	private Boolean hotelWifi;
	@Column(name="hotel_food")
	private String hotelFood;
	@Column(name="hotel_convinience")
	private String hotelConvinience;
	@Column(name="hotel_checkInTime")
	private Time hotelCheckInTime;
	@Column(name="hotel_checkOutTime")
	private Time hotelCheckOutTime;
	@Column(name="hotel_floor")
	private Integer hotelFloor;
	@Column(name="hotel_roomAmount")
	private Integer hotelRoomAmount;
	@Column(name="hotel_score_times")
	private Integer hotelScoreTimes;
	
	
	public HotelBean() { }


	public HotelBean(String hotelId, String hotelName, String hotelPhone, String hotelAddress, String hotelArea,
			String hotelUrl, String hotelImg, Integer hotelStar, Double hotelScoreAvg, String hotelLanguage,
			Boolean hotelWifi, String hotelFood, String hotelConvinience, Time hotelCheckInTime, Time hotelCheckOutTime,
			Integer hotelFloor, Integer hotelRoomAmount, Integer hotelScoreTimes) {
		super();
		this.hotelId = hotelId;
		this.hotelName = hotelName;
		this.hotelPhone = hotelPhone;
		this.hotelAddress = hotelAddress;
		this.hotelArea = hotelArea;
		this.hotelUrl = hotelUrl;
		this.hotelImg = hotelImg;
		this.hotelStar = hotelStar;
		this.hotelScoreAvg = hotelScoreAvg;
		this.hotelLanguage = hotelLanguage;
		this.hotelWifi = hotelWifi;
		this.hotelFood = hotelFood;
		this.hotelConvinience = hotelConvinience;
		this.hotelCheckInTime = hotelCheckInTime;
		this.hotelCheckOutTime = hotelCheckOutTime;
		this.hotelFloor = hotelFloor;
		this.hotelRoomAmount = hotelRoomAmount;
		this.hotelScoreTimes = hotelScoreTimes;
	}


	@Override
	public String toString() {
		return "HotelBean [hotelId=" + hotelId + ", hotelName=" + hotelName + ", hotelPhone=" + hotelPhone
				+ ", hotelAddress=" + hotelAddress + ", hotelArea=" + hotelArea + ", hotelUrl=" + hotelUrl
				+ ", hotelImg=" + hotelImg + ", hotelStar=" + hotelStar + ", hotelScoreAvg=" + hotelScoreAvg
				+ ", hotelLanguage=" + hotelLanguage + ", hotelWifi=" + hotelWifi + ", hotelFood=" + hotelFood
				+ ", hotelConvinience=" + hotelConvinience + ", hotelCheckInTime=" + hotelCheckInTime
				+ ", hotelCheckOutTime=" + hotelCheckOutTime + ", hotelFloor=" + hotelFloor + ", hotelRoomAmount="
				+ hotelRoomAmount + ", hotelScoreTimes=" + hotelScoreTimes + "]";
	}


	public String getHotelId() {
		return hotelId;
	}


	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}


	public String getHotelName() {
		return hotelName;
	}


	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}


	public String getHotelPhone() {
		return hotelPhone;
	}


	public void setHotelPhone(String hotelPhone) {
		this.hotelPhone = hotelPhone;
	}


	public String getHotelAddress() {
		return hotelAddress;
	}


	public void setHotelAddress(String hotelAddress) {
		this.hotelAddress = hotelAddress;
	}


	public String getHotelArea() {
		return hotelArea;
	}


	public void setHotelArea(String hotelArea) {
		this.hotelArea = hotelArea;
	}


	public String getHotelUrl() {
		return hotelUrl;
	}


	public void setHotelUrl(String hotelUrl) {
		this.hotelUrl = hotelUrl;
	}


	public String getHotelImg() {
		return hotelImg;
	}


	public void setHotelImg(String hotelImg) {
		this.hotelImg = hotelImg;
	}


	public Integer getHotelStar() {
		return hotelStar;
	}


	public void setHotelStar(Integer hotelStar) {
		this.hotelStar = hotelStar;
	}


	public Double getHotelScoreAvg() {
		return hotelScoreAvg;
	}


	public void setHotelScoreAvg(Double hotelScoreAvg) {
		this.hotelScoreAvg = hotelScoreAvg;
	}


	public String getHotelLanguage() {
		return hotelLanguage;
	}


	public void setHotelLanguage(String hotelLanguage) {
		this.hotelLanguage = hotelLanguage;
	}


	public Boolean getHotelWifi() {
		return hotelWifi;
	}


	public void setHotelWifi(Boolean hotelWifi) {
		this.hotelWifi = hotelWifi;
	}


	public String getHotelFood() {
		return hotelFood;
	}


	public void setHotelFood(String hotelFood) {
		this.hotelFood = hotelFood;
	}


	public String getHotelConvinience() {
		return hotelConvinience;
	}


	public void setHotelConvinience(String hotelConvinience) {
		this.hotelConvinience = hotelConvinience;
	}


	public Time getHotelCheckInTime() {
		return hotelCheckInTime;
	}


	public void setHotelCheckInTime(Time hotelCheckInTime) {
		this.hotelCheckInTime = hotelCheckInTime;
	}


	public Time getHotelCheckOutTime() {
		return hotelCheckOutTime;
	}


	public void setHotelCheckOutTime(Time hotelCheckOutTime) {
		this.hotelCheckOutTime = hotelCheckOutTime;
	}


	public Integer getHotelFloor() {
		return hotelFloor;
	}


	public void setHotelFloor(Integer hotelFloor) {
		this.hotelFloor = hotelFloor;
	}


	public Integer getHotelRoomAmount() {
		return hotelRoomAmount;
	}


	public void setHotelRoomAmount(Integer hotelRoomAmount) {
		this.hotelRoomAmount = hotelRoomAmount;
	}


	public Integer getHotelScoreTimes() {
		return hotelScoreTimes;
	}


	public void setHotelScoreTimes(Integer hotelScoreTimes) {
		this.hotelScoreTimes = hotelScoreTimes;
	}
	
}
