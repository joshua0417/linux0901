/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.hbstc.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 记录设备的进出记录Entity
 * @author MOMO
 * @version 2018-02-28
 */
public class EntryOutRecord extends DataEntity<EntryOutRecord> {
	
	private static final long serialVersionUID = 1L;
	private String transactor;		// 经手人
	private String lendName;		// 借设备人员
	private String lendReason;		// 借设备的原因
	private Date lendTime;		// 设备借出时间
	private Date returnTime;		// 归还时间
	
	public EntryOutRecord() {
		super();
	}

	public EntryOutRecord(String id){
		super(id);
	}

	@Length(min=1, max=64, message="经手人长度必须介于 1 和 64 之间")
	public String getTransactor() {
		return transactor;
	}

	public void setTransactor(String transactor) {
		this.transactor = transactor;
	}
	
	@Length(min=0, max=64, message="借设备人员长度必须介于 0 和 64 之间")
	public String getLendName() {
		return lendName;
	}

	public void setLendName(String lendName) {
		this.lendName = lendName;
	}
	
	@Length(min=0, max=64, message="借设备的原因长度必须介于 0 和 64 之间")
	public String getLendReason() {
		return lendReason;
	}

	public void setLendReason(String lendReason) {
		this.lendReason = lendReason;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getLendTime() {
		return lendTime;
	}

	public void setLendTime(Date lendTime) {
		this.lendTime = lendTime;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getReturnTime() {
		return returnTime;
	}

	public void setReturnTime(Date returnTime) {
		this.returnTime = returnTime;
	}
	
}