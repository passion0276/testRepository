package model.sight_type;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Sight_Type")
public class SightTypeBean {
	@Id
	@Column(name="sight_type_id")
	private String sightTypeId;
	@Column(name="sight_type_name")
	private String sightTypeName;
	public String getSightTypeId() {
		return sightTypeId;
	}
	public void setSightTypeId(String sightTypeId) {
		this.sightTypeId = sightTypeId;
	}
	public String getSightTypeName() {
		return sightTypeName;
	}
	public void setSightTypeName(String sightTypeName) {
		this.sightTypeName = sightTypeName;
	}
	
	

	
}
