/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.hbstc.entity;

import com.thinkgem.jeesite.modules.sys.entity.User;
import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonBackReference;
import javax.validation.constraints.NotNull;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 管理设备信息Entity
 * @author MOMO
 * @version 2018-02-07
 */
public class HbstcEquipmentInfor extends DataEntity<HbstcEquipmentInfor> {
	
	private static final long serialVersionUID = 1L;
	private String equipmentNo;		// 设备编号
	private String equipmentName;		// 设备名称
	private String classifyNo;		// 分类编号
	private Date datePurchase;		// 购买时间
	private String parameter;		// 具体参数
	private Date returnDate;		// 归还时间
	private Date lendDate;		// 借出时间
	private String lendName;		// 借设备的人员
	//private HbstcEquipmentInfor hbstcEquipmentClassification;		// 设备分类11
	private String hbstcEquipmentClassificationId;//设备分类ID
	private HbstcEquipmentClassification hbstcEquipmentClassification;  //设备分类
	private String accessory;		// 附件
	private String deviceStatus;		// 0:在库；1：借出；2：外借
	private String useStatus;		// 0:良好；1:报废
	private String classificationNo;  //分类号码
	private String schoolNo;     //外部编号    学校编号
	private String placeUse;     //使用地点
	private Float price;          //购置价格
	private User user;          //系统人员
	private User user1;          //用于设备状态的使用人员

	public User getUser1() {
		return user1;
	}

	public void setUser1(User user1) {
		this.user1 = user1;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getClassificationNo() {
		return classificationNo;
	}

	public void setClassificationNo(String classificationNo) {
		this.classificationNo = classificationNo;
	}

	public String getSchoolNo() {
		return schoolNo;
	}

	public void setSchoolNo(String schoolNo) {
		this.schoolNo = schoolNo;
	}

	public String getPlaceUse() {
		return placeUse;
	}

	public void setPlaceUse(String placeUse) {
		this.placeUse = placeUse;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public HbstcEquipmentInfor() {
		super();
	}

	public HbstcEquipmentInfor(String id){
		super(id);
	}

	@Length(min=1, max=64, message="设备编号长度必须介于 1 和 64 之间")
	public String getEquipmentNo() {
		return equipmentNo;
	}

	public void setEquipmentNo(String equipmentNo) {
		this.equipmentNo = equipmentNo;
	}
	
	@Length(min=1, max=64, message="设备名称长度必须介于 1 和 64 之间")
	public String getEquipmentName() {
		return equipmentName;
	}

	public void setEquipmentName(String equipmentName) {
		this.equipmentName = equipmentName;
	}
	
	@Length(min=1, max=64, message="设备编号长度必须介于 1 和 64 之间")
	public String getClassifyNo() {
		return classifyNo;
	}

	public void setClassifyNo(String classifyNo) {
		this.classifyNo = classifyNo;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getDatePurchase() {
		return datePurchase;
	}

	public void setDatePurchase(Date datePurchase) {
		this.datePurchase = datePurchase;
	}
	
	@Length(min=1, max=255, message="具体参数长度必须介于 1 和 255 之间")
	public String getParameter() {
		return parameter;
	}

	public void setParameter(String parameter) {
		this.parameter = parameter;
	}

	public String getHbstcEquipmentClassificationId() {
		return hbstcEquipmentClassificationId;
	}

	public void setHbstcEquipmentClassificationId(String hbstcEquipmentClassificationId) {
		this.hbstcEquipmentClassificationId = hbstcEquipmentClassificationId;
	}

	public HbstcEquipmentClassification getHbstcEquipmentClassification() {
		return hbstcEquipmentClassification;
	}

	public void setHbstcEquipmentClassification(HbstcEquipmentClassification hbstcEquipmentClassification) {
		this.hbstcEquipmentClassification = hbstcEquipmentClassification;
	}

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getLendDate() {
		return lendDate;
	}

	public void setLendDate(Date lendDate) {
		this.lendDate = lendDate;
	}
	
	@Length(min=0, max=64, message="借设备的人员长度必须介于 0 和 64 之间")
	public String getLendName() {
		return lendName;
	}

	public void setLendName(String lendName) {
		this.lendName = lendName;
	}
	
	/*@JsonBackReference
	@NotNull(message="设备分类不能为空")
	public HbstcEquipmentInfor getHbstcEquipmentClassification() {
		return hbstcEquipmentClassification;
	}

	public void setHbstcEquipmentClassification(HbstcEquipmentInfor hbstcEquipmentClassification) {
		this.hbstcEquipmentClassification = hbstcEquipmentClassification;
	}*/
	
	@Length(min=0, max=1000, message="附件长度必须介于 0 和 1000 之间")
	public String getAccessory() {
		return accessory;
	}

	public void setAccessory(String accessory) {
		this.accessory = accessory;
	}
	
	@Length(min=0, max=1, message="0:在库；1：借出；2：外借长度必须介于 0 和 1 之间")
	public String getDeviceStatus() {
		return deviceStatus;
	}

	public void setDeviceStatus(String deviceStatus) {
		this.deviceStatus = deviceStatus;
	}
	
	@Length(min=0, max=1, message="0:良好；1:报废长度必须介于 0 和 1 之间")
	public String getUseStatus() {
		return useStatus;
	}

	public void setUseStatus(String useStatus) {
		this.useStatus = useStatus;
	}
	
}