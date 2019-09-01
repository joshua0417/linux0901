/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.hbstc.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.TreeEntity;

/**
 * 设备分类Entity
 * @author MOMO
 * @version 2018-02-07
 */
public class HbstcEquipmentClassification extends TreeEntity<HbstcEquipmentClassification> {
	
	private static final long serialVersionUID = 1L;
	private HbstcEquipmentClassification parent;		// 父级编号
	private String parentIds;		// 所有父级编号
	private String type;		// 机构类型
	private String name;		// 名称
	private String spare1;		// 备用1
	private String spare2;		// 备用2
	private String spare3;		// 备用3
	
	public HbstcEquipmentClassification() {
		super();
	}

	public HbstcEquipmentClassification(String id){
		super(id);
	}

	@JsonBackReference
	@NotNull(message="父级编号不能为空")
	public HbstcEquipmentClassification getParent() {
		return parent;
	}

	public void setParent(HbstcEquipmentClassification parent) {
		this.parent = parent;
	}
	
	@Length(min=1, max=2000, message="所有父级编号长度必须介于 1 和 2000 之间")
	public String getParentIds() {
		return parentIds;
	}

	public void setParentIds(String parentIds) {
		this.parentIds = parentIds;
	}
	
	@Length(min=1, max=1, message="机构类型长度必须介于 1 和 1 之间")
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	@Length(min=1, max=100, message="名称长度必须介于 1 和 100 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=100, message="备用1长度必须介于 0 和 100 之间")
	public String getSpare1() {
		return spare1;
	}

	public void setSpare1(String spare1) {
		this.spare1 = spare1;
	}
	
	@Length(min=0, max=100, message="备用2长度必须介于 0 和 100 之间")
	public String getSpare2() {
		return spare2;
	}

	public void setSpare2(String spare2) {
		this.spare2 = spare2;
	}
	
	@Length(min=0, max=100, message="备用3长度必须介于 0 和 100 之间")
	public String getSpare3() {
		return spare3;
	}

	public void setSpare3(String spare3) {
		this.spare3 = spare3;
	}
	
	public String getParentId() {
		return parent != null && parent.getId() != null ? parent.getId() : "0";
	}
}