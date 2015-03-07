package com.beijing.pojo;

/**
 * Datas entity. @author MyEclipse Persistence Tools
 */

public class Datas implements java.io.Serializable {

	// Fields

	private Integer daId;
	private String daName;
	private String daAge;

	// Constructors

	/** default constructor */
	public Datas() {
	}
	public Datas(Integer daId)
	{this.daId=daId;}

	/** full constructor */
	public Datas(Integer daId,String daName, String daAge) {
		this.daId=daId;
		this.daName = daName;
		this.daAge = daAge;
	}

	// Property accessors

	public Integer getDaId() {
		return this.daId;
	}

	public void setDaId(Integer daId) {
		this.daId = daId;
	}

	public String getDaName() {
		return this.daName;
	}

	public void setDaName(String daName) {
		this.daName = daName;
	}

	public String getDaAge() {
		return this.daAge;
	}

	public void setDaAge(String daAge) {
		this.daAge = daAge;
	}

}