package model.national;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="National")
public class NationalBean {
	@Id
	@Column(name="national_id")
	private String nationalId;
	@Column(name="national_name_e")
	private String nationalNameE;
	@Column(name="national_name")
	private String nationalName;

	public NationalBean() { }

	public NationalBean(String nationalId, String nationalNameE, String nationalName) {
		super();
		this.nationalId = nationalId;
		this.nationalNameE = nationalNameE;
		this.nationalName = nationalName;
	}

	@Override
	public String toString() {
		return "NationalBean [nationalId=" + nationalId + ", nationalNameE=" + nationalNameE + ", nationalName="
				+ nationalName + "]";
	}

	public String getNationalId() {
		return nationalId;
	}

	public void setNationalId(String nationalId) {
		this.nationalId = nationalId;
	}

	public String getNationalNameE() {
		return nationalNameE;
	}

	public void setNationalNameE(String nationalNameE) {
		this.nationalNameE = nationalNameE;
	}

	public String getNationalName() {
		return nationalName;
	}

	public void setNationalName(String nationalName) {
		this.nationalName = nationalName;
	}
	
	
}
