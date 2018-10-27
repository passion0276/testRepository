package model.schedule;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import model.sight_type.SightTypeBean;
import model.schedule_detail.ScheduleDetailBean;
@Entity
@Table(name="Schedule")
public class ScheduleBean {
	@Id
	@Column(name="schedule_id")
	private String scheduleId;
	@Column(name="customer_id")
	private String customerId;
	@Column(name="schedule_type")
	private String scheduleType;
	@Column(name="schedule_days")
	private Integer scheduleDays;
	@Column(name="schedule_totalPrice")
	private Integer scheduleTotalPrice;
	@Column(name="schedule_description")
	private String scheduleDescription;
	@Column(name="schedule_date")
	private Date scheduleDate;
	@Column(name="schedule_share")
	private Boolean scheduleShare;
	@OneToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="schedule_type")
	private SightTypeBean sightTypeBean;
	@OneToMany(cascade=CascadeType.MERGE)
	@JoinColumn(name="schedule_type")
	private ScheduleDetailBean scheduleDetailBean;

	public ScheduleBean() { }

	public ScheduleBean(String scheduleId, String customerId, String scheduleType, Integer scheduleDays,
			Integer scheduleTotalPrice, String scheduleDescription, Date scheduleDate, Boolean scheduleShare,
			SightTypeBean sightTypeBean, ScheduleDetailBean scheduleDetailBean) {
		super();
		this.scheduleId = scheduleId;
		this.customerId = customerId;
		this.scheduleType = scheduleType;
		this.scheduleDays = scheduleDays;
		this.scheduleTotalPrice = scheduleTotalPrice;
		this.scheduleDescription = scheduleDescription;
		this.scheduleDate = scheduleDate;
		this.scheduleShare = scheduleShare;
		this.sightTypeBean = sightTypeBean;
		this.scheduleDetailBean = scheduleDetailBean;
	}

	@Override
	public String toString() {
		return "ScheduleBean [scheduleId=" + scheduleId + ", customerId=" + customerId + ", scheduleType="
				+ scheduleType + ", scheduleDays=" + scheduleDays + ", scheduleTotalPrice=" + scheduleTotalPrice
				+ ", scheduleDescription=" + scheduleDescription + ", scheduleDate=" + scheduleDate + ", scheduleShare="
				+ scheduleShare + "]";
	}

	public String getScheduleId() {
		return scheduleId;
	}

	public void setScheduleId(String scheduleId) {
		this.scheduleId = scheduleId;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getScheduleType() {
		return scheduleType;
	}

	public void setScheduleType(String scheduleType) {
		this.scheduleType = scheduleType;
	}

	public Integer getScheduleDays() {
		return scheduleDays;
	}

	public void setScheduleDays(Integer scheduleDays) {
		this.scheduleDays = scheduleDays;
	}

	public Integer getScheduleTotalPrice() {
		return scheduleTotalPrice;
	}

	public void setScheduleTotalPrice(Integer scheduleTotalPrice) {
		this.scheduleTotalPrice = scheduleTotalPrice;
	}

	public String getScheduleDescription() {
		return scheduleDescription;
	}

	public void setScheduleDescription(String scheduleDescription) {
		this.scheduleDescription = scheduleDescription;
	}

	public Date getScheduleDate() {
		return scheduleDate;
	}

	public void setScheduleDate(Date scheduleDate) {
		this.scheduleDate = scheduleDate;
	}

	public Boolean getScheduleShare() {
		return scheduleShare;
	}

	public void setScheduleShare(Boolean scheduleShare) {
		this.scheduleShare = scheduleShare;
	}

	public SightTypeBean getSightTypeBean() {
		return sightTypeBean;
	}

	public void setSightTypeBean(SightTypeBean sightTypeBean) {
		this.sightTypeBean = sightTypeBean;
	}

	public ScheduleDetailBean getScheduleDetailBean() {
		return scheduleDetailBean;
	}

	public void setScheduleDetailBean(ScheduleDetailBean scheduleDetailBean) {
		this.scheduleDetailBean = scheduleDetailBean;
	}
	

}
