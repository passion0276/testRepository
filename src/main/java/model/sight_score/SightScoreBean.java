package model.sight_score;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import model.customer.CustomerBean;
import model.sight.SightBean;
@Entity
@Table(name="Sight_score")
public class SightScoreBean implements Serializable {

	@Id
	@Column(name="sight_id")
	private String sightId;
	@Id
	@Column(name="customer_id")
	private String customerId;
	@Column(name="sight_score")
	private Integer sightScore;
	@Column(name="sight_message")
	private String sightMessage;
	@OneToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="sight_id")
	private SightBean sightBean;
	public SightScoreBean() { }
	public SightScoreBean(String sightId, String customerId, Integer sightScore, String sightMessage,
			SightBean sightBean) {
		super();
		this.sightId = sightId;
		this.customerId = customerId;
		this.sightScore = sightScore;
		this.sightMessage = sightMessage;
		this.sightBean = sightBean;
	}
	@Override
	public String toString() {
		return "SightScoreBean [sightId=" + sightId + ", customerId=" + customerId + ", sightScore=" + sightScore
				+ ", sightMessage=" + sightMessage + "]";
	}
	public String getSightId() {
		return sightId;
	}
	public void setSightId(String sightId) {
		this.sightId = sightId;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public Integer getSightScore() {
		return sightScore;
	}
	public void setSightScore(Integer sightScore) {
		this.sightScore = sightScore;
	}
	public String getSightMessage() {
		return sightMessage;
	}
	public void setSightMessage(String sightMessage) {
		this.sightMessage = sightMessage;
	}
	public SightBean getSightBean() {
		return sightBean;
	}
	public void setSightBean(SightBean sightBean) {
		this.sightBean = sightBean;
	}
	
	
}
