package model.sight_favorite;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import model.customer.CustomerBean;
import model.sight.SightBean;
@Entity
@Table(name="Sight_Favorite")
public class SightFavoriteBean implements Serializable {
	@Id
	@Column(name="sight_id")
	private String sightId;
	@Id
	@Column(name="customer_id")
	private String customerId;
	@OneToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name="Customer_id")
	private SightBean sightBean;
	
	public SightFavoriteBean() { }

	public SightFavoriteBean(String sightId, String customerId, SightBean sightBean) {
		super();
		this.sightId = sightId;
		this.customerId = customerId;
		this.sightBean = sightBean;
	}

	@Override
	public String toString() {
		return "SightFavoriteBean [sightId=" + sightId + ", customerId=" + customerId + "]";
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

	public SightBean getSightBean() {
		return sightBean;
	}

	public void setSightBean(SightBean sightBean) {
		this.sightBean = sightBean;
	}
	
}
