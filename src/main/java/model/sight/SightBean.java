package model.sight;

import java.sql.Time;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import model.sight_type.SightTypeBean;

@Entity
@Table(name="Sight")
public class SightBean {
	@Id
	@Column(name="sight_id")
	private String sightId;
	@Column(name="sight_type")
	private String sightType;
	@Column(name="sight_type_id")
	private String sightTypeId;
	@Column(name="sight_name")
	private String sightName;
	@Column(name="sight_phone")
	private String sightPhone;
	@Column(name="sight_address")
	private String sightAddress;
	@Column(name="sight_area")
	private String sightArea;
	@Column(name="sight_url")
	private String sightUrl;
	@Column(name="sight_description")
	private String sightDescription;
	@Column(name="sight_img")
	private String sightImg;
	@Column(name="sight_bussinessHours")
	private String sightBussinessHours;
	@Column(name="sight_estimatedTime")
	private Time sightEstimatedTime;
	@Column(name="sight_score_avg")
	private Double sightScoreAvg;
	@Column(name="sight_ticket")
	private Boolean sightTicket;
	@Column(name="sight_price")
	private Integer sightPrice;
	@Column(name="sight_score_times")
	private Integer sightScoreTimes;
	@OneToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="sight_type_id")
	private SightTypeBean sightTypeBean;
	
	public SightBean() { }

	public SightBean(String sightId, String sightType, String sightTypeId, String sightName, String sightPhone,
			String sightAddress, String sightArea, String sightUrl, String sightDescription, String sightImg,
			String sightBussinessHours, Time sightEstimatedTime, Double sightScoreAvg, Boolean sightTicket,
			Integer sightPrice, Integer sightScoreTimes, SightTypeBean sightTypeBean) {
		super();
		this.sightId = sightId;
		this.sightType = sightType;
		this.sightTypeId = sightTypeId;
		this.sightName = sightName;
		this.sightPhone = sightPhone;
		this.sightAddress = sightAddress;
		this.sightArea = sightArea;
		this.sightUrl = sightUrl;
		this.sightDescription = sightDescription;
		this.sightImg = sightImg;
		this.sightBussinessHours = sightBussinessHours;
		this.sightEstimatedTime = sightEstimatedTime;
		this.sightScoreAvg = sightScoreAvg;
		this.sightTicket = sightTicket;
		this.sightPrice = sightPrice;
		this.sightScoreTimes = sightScoreTimes;
		this.sightTypeBean = sightTypeBean;
	}

	@Override
	public String toString() {
		return "SightBean [sightId=" + sightId + ", sightType=" + sightType + ", sightTypeId=" + sightTypeId
				+ ", sightName=" + sightName + ", sightPhone=" + sightPhone + ", sightAddress=" + sightAddress
				+ ", sightArea=" + sightArea + ", sightUrl=" + sightUrl + ", sightDescription=" + sightDescription
				+ ", sightImg=" + sightImg + ", sightBussinessHours=" + sightBussinessHours + ", sightEstimatedTime="
				+ sightEstimatedTime + ", sightScoreAvg=" + sightScoreAvg + ", sightTicket=" + sightTicket
				+ ", sightPrice=" + sightPrice + ", sightScoreTimes=" + sightScoreTimes + "]";
	}

	public String getSightId() {
		return sightId;
	}

	public void setSightId(String sightId) {
		this.sightId = sightId;
	}

	public String getSightType() {
		return sightType;
	}

	public void setSightType(String sightType) {
		this.sightType = sightType;
	}

	public String getSightTypeId() {
		return sightTypeId;
	}

	public void setSightTypeId(String sightTypeId) {
		this.sightTypeId = sightTypeId;
	}

	public String getSightName() {
		return sightName;
	}

	public void setSightName(String sightName) {
		this.sightName = sightName;
	}

	public String getSightPhone() {
		return sightPhone;
	}

	public void setSightPhone(String sightPhone) {
		this.sightPhone = sightPhone;
	}

	public String getSightAddress() {
		return sightAddress;
	}

	public void setSightAddress(String sightAddress) {
		this.sightAddress = sightAddress;
	}

	public String getSightArea() {
		return sightArea;
	}

	public void setSightArea(String sightArea) {
		this.sightArea = sightArea;
	}

	public String getSightUrl() {
		return sightUrl;
	}

	public void setSightUrl(String sightUrl) {
		this.sightUrl = sightUrl;
	}

	public String getSightDescription() {
		return sightDescription;
	}

	public void setSightDescription(String sightDescription) {
		this.sightDescription = sightDescription;
	}

	public String getSightImg() {
		return sightImg;
	}

	public void setSightImg(String sightImg) {
		this.sightImg = sightImg;
	}

	public String getSightBussinessHours() {
		return sightBussinessHours;
	}

	public void setSightBussinessHours(String sightBussinessHours) {
		this.sightBussinessHours = sightBussinessHours;
	}

	public Time getSightEstimatedTime() {
		return sightEstimatedTime;
	}

	public void setSightEstimatedTime(Time sightEstimatedTime) {
		this.sightEstimatedTime = sightEstimatedTime;
	}

	public Double getSightScoreAvg() {
		return sightScoreAvg;
	}

	public void setSightScoreAvg(Double sightScoreAvg) {
		this.sightScoreAvg = sightScoreAvg;
	}

	public Boolean getSightTicket() {
		return sightTicket;
	}

	public void setSightTicket(Boolean sightTicket) {
		this.sightTicket = sightTicket;
	}

	public Integer getSightPrice() {
		return sightPrice;
	}

	public void setSightPrice(Integer sightPrice) {
		this.sightPrice = sightPrice;
	}

	public Integer getSightScoreTimes() {
		return sightScoreTimes;
	}

	public void setSightScoreTimes(Integer sightScoreTimes) {
		this.sightScoreTimes = sightScoreTimes;
	}

	public SightTypeBean getSightTypeBean() {
		return sightTypeBean;
	}

	public void setSightTypeBean(SightTypeBean sightTypeBean) {
		this.sightTypeBean = sightTypeBean;
	}
	
}
