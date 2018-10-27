package model.schedule_detail;

import java.io.Serializable;
import java.sql.Time;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import model.schedule.ScheduleBean;
import model.sight.SightBean;
@Entity
@Table(name="Schedule_Detail")
public class ScheduleDetailBean implements Serializable {
	@Id
	@Column(name="schedule_id")
	private String scheduleId;
	@Column(name="sight_id")
	private String sightId;
	@Id
	@Column(name="schedule_detail_dayX")
	private Integer scheduleDetailDayX;
	@Id
	@Column(name="schedule_detail_startTime")
	private Time scheduleDetailStartTime;
	@Column(name="schedule_detail_endTime")
	private Time scheduleDetailEndTime;
	@ManyToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="schedule_id")
	private ScheduleBean scheduleBean;
	@OneToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="sight_id")
	private SightBean sightBean;
	
	public ScheduleDetailBean() { }

	public ScheduleDetailBean(String scheduleId, String sightId, Integer scheduleDetailDayX,
			Time scheduleDetailStartTime, Time scheduleDetailEndTime, ScheduleBean scheduleBean, SightBean sightBean) {
		super();
		this.scheduleId = scheduleId;
		this.sightId = sightId;
		this.scheduleDetailDayX = scheduleDetailDayX;
		this.scheduleDetailStartTime = scheduleDetailStartTime;
		this.scheduleDetailEndTime = scheduleDetailEndTime;
		this.scheduleBean = scheduleBean;
		this.sightBean = sightBean;
	}

	@Override
	public String toString() {
		return "ScheduleDetailBean [scheduleId=" + scheduleId + ", sightId=" + sightId + ", scheduleDetailDayX="
				+ scheduleDetailDayX + ", scheduleDetailStartTime=" + scheduleDetailStartTime
				+ ", scheduleDetailEndTime=" + scheduleDetailEndTime + "]";
	}

	public String getScheduleId() {
		return scheduleId;
	}

	public void setScheduleId(String scheduleId) {
		this.scheduleId = scheduleId;
	}

	public String getSightId() {
		return sightId;
	}

	public void setSightId(String sightId) {
		this.sightId = sightId;
	}

	public Integer getScheduleDetailDayX() {
		return scheduleDetailDayX;
	}

	public void setScheduleDetailDayX(Integer scheduleDetailDayX) {
		this.scheduleDetailDayX = scheduleDetailDayX;
	}

	public Time getScheduleDetailStartTime() {
		return scheduleDetailStartTime;
	}

	public void setScheduleDetailStartTime(Time scheduleDetailStartTime) {
		this.scheduleDetailStartTime = scheduleDetailStartTime;
	}

	public Time getScheduleDetailEndTime() {
		return scheduleDetailEndTime;
	}

	public void setScheduleDetailEndTime(Time scheduleDetailEndTime) {
		this.scheduleDetailEndTime = scheduleDetailEndTime;
	}

	public ScheduleBean getScheduleBean() {
		return scheduleBean;
	}

	public void setScheduleBean(ScheduleBean scheduleBean) {
		this.scheduleBean = scheduleBean;
	}

	public SightBean getSightBean() {
		return sightBean;
	}

	public void setSightBean(SightBean sightBean) {
		this.sightBean = sightBean;
	}
	
	
}
