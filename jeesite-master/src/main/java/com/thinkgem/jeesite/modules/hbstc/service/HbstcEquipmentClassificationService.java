/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.hbstc.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.service.TreeService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.hbstc.entity.HbstcEquipmentClassification;
import com.thinkgem.jeesite.modules.hbstc.dao.HbstcEquipmentClassificationDao;

/**
 * 设备分类Service
 * @author MOMO
 * @version 2018-02-07
 */
@Service
@Transactional(readOnly = true)
public class HbstcEquipmentClassificationService extends TreeService<HbstcEquipmentClassificationDao, HbstcEquipmentClassification> {

	public HbstcEquipmentClassification get(String id) {
		return super.get(id);
	}
	
	public List<HbstcEquipmentClassification> findList(HbstcEquipmentClassification hbstcEquipmentClassification) {
		if (StringUtils.isNotBlank(hbstcEquipmentClassification.getParentIds())){
			hbstcEquipmentClassification.setParentIds(","+hbstcEquipmentClassification.getParentIds()+",");
		}
		return super.findList(hbstcEquipmentClassification);
	}
	
	@Transactional(readOnly = false)
	public void save(HbstcEquipmentClassification hbstcEquipmentClassification) {
		super.save(hbstcEquipmentClassification);
	}
	
	@Transactional(readOnly = false)
	public void delete(HbstcEquipmentClassification hbstcEquipmentClassification) {
		super.delete(hbstcEquipmentClassification);
	}
	
}