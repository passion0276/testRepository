package model.schedule_favorite;

import java.io.Serializable;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import model.customer.CustomerBean;
import model.schedule.ScheduleBean;
@Entity
@Table(name="Schedule _Favorite")
public class ScheduleFavoriteBean implements Serializable {
	@Id
	@Column(name="schedule_id")
	private String scheduleId;
	@Id
	@Column(name="customer_id")
	private String customerId;
	
	public ScheduleFavoriteBean() { }

	public ScheduleFavoriteBean(String scheduleId, String customerId) {
		super();
		this.scheduleId = scheduleId;
		this.customerId = customerId;
	}

	@Override
	public String toString() {
		return "ScheduleFavoriteBean [scheduleId=" + scheduleId + ", customerId=" + customerId + "]";
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


	
}
