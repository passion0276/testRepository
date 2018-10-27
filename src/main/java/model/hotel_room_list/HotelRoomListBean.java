package model.hotel_room_list;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import model.hotel_room.HotelRoomBean;
@Entity
@Table(name="Hotel_Room_List")
public class HotelRoomListBean implements Serializable {
	@Id
	@Column(name="room_id")
	private String roomId;
	@Id
	@Column(name="room_date")
	private Date roomDate;
	@Column(name="room_amount")
	private Integer roomAmount;
	@Column(name="room_price")
	private Integer roomPrice;
	@ManyToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="room_id")
	private HotelRoomBean hotelRoomBean;
	
	
	public HotelRoomListBean() { }


	public HotelRoomListBean(String roomId, Date roomDate, Integer roomAmount, Integer roomPrice,
			HotelRoomBean hotelRoomBean) {
		super();
		this.roomId = roomId;
		this.roomDate = roomDate;
		this.roomAmount = roomAmount;
		this.roomPrice = roomPrice;
		this.hotelRoomBean = hotelRoomBean;
	}


	@Override
	public String toString() {
		return "HotelRoomListBean [roomId=" + roomId + ", roomDate=" + roomDate + ", roomAmount=" + roomAmount
				+ ", roomPrice=" + roomPrice + "]";
	}


	public String getRoomId() {
		return roomId;
	}


	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}


	public Date getRoomDate() {
		return roomDate;
	}


	public void setRoomDate(Date roomDate) {
		this.roomDate = roomDate;
	}


	public Integer getRoomAmount() {
		return roomAmount;
	}


	public void setRoomAmount(Integer roomAmount) {
		this.roomAmount = roomAmount;
	}


	public Integer getRoomPrice() {
		return roomPrice;
	}


	public void setRoomPrice(Integer roomPrice) {
		this.roomPrice = roomPrice;
	}


	public HotelRoomBean getHotelRoomBean() {
		return hotelRoomBean;
	}


	public void setHotelRoomBean(HotelRoomBean hotelRoomBean) {
		this.hotelRoomBean = hotelRoomBean;
	}
	
}
