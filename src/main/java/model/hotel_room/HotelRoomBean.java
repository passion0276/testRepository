package model.hotel_room;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import model.hotel.HotelBean;

@Entity
@Table(name="Hotel_room")
public class HotelRoomBean {
	@Id
	@Column(name="room_id")
	private String roomId;
	@Column(name="hotel_id")
	private String hotelId;
	@Column(name="room_name")
	private String roomName;
	@Column(name="room_bed")
	private String roomBed;
	@Column(name="room_accommodate")
	private Integer roomAccommodate;
	@Column(name="room_img")
	private String roomImg;
	@Column(name="room_suite")
	private String roomSuite;
	@Column(name="room_amount_total")
	private Integer roomAmountTotal;
	@ManyToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="hotel_id")
	private HotelBean hotelBean;
	
	
	public HotelRoomBean() {}


	public HotelRoomBean(String roomId, String hotelId, String roomName, String roomBed, Integer roomAccommodate,
			String roomImg, String roomSuite, Integer roomAmountTotal, HotelBean hotelBean) {
		super();
		this.roomId = roomId;
		this.hotelId = hotelId;
		this.roomName = roomName;
		this.roomBed = roomBed;
		this.roomAccommodate = roomAccommodate;
		this.roomImg = roomImg;
		this.roomSuite = roomSuite;
		this.roomAmountTotal = roomAmountTotal;
		this.hotelBean = hotelBean;
	}


	@Override
	public String toString() {
		return "HotelRoomBean [roomId=" + roomId + ", hotelId=" + hotelId + ", roomName=" + roomName + ", roomBed="
				+ roomBed + ", roomAccommodate=" + roomAccommodate + ", roomImg=" + roomImg + ", roomSuite=" + roomSuite
				+ ", roomAmountTotal=" + roomAmountTotal + "]";
	}


	public String getRoomId() {
		return roomId;
	}


	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}


	public String getHotelId() {
		return hotelId;
	}


	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}


	public String getRoomName() {
		return roomName;
	}


	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}


	public String getRoomBed() {
		return roomBed;
	}


	public void setRoomBed(String roomBed) {
		this.roomBed = roomBed;
	}


	public Integer getRoomAccommodate() {
		return roomAccommodate;
	}


	public void setRoomAccommodate(Integer roomAccommodate) {
		this.roomAccommodate = roomAccommodate;
	}


	public String getRoomImg() {
		return roomImg;
	}


	public void setRoomImg(String roomImg) {
		this.roomImg = roomImg;
	}


	public String getRoomSuite() {
		return roomSuite;
	}


	public void setRoomSuite(String roomSuite) {
		this.roomSuite = roomSuite;
	}


	public Integer getRoomAmountTotal() {
		return roomAmountTotal;
	}


	public void setRoomAmountTotal(Integer roomAmountTotal) {
		this.roomAmountTotal = roomAmountTotal;
	}


	public HotelBean getHotelBean() {
		return hotelBean;
	}


	public void setHotelBean(HotelBean hotelBean) {
		this.hotelBean = hotelBean;
	}
	
}
