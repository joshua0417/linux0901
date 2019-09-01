/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.hbstc.dao;

import com.thinkgem.jeesite.common.persistence.TreeDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.hbstc.entity.HbstcEquipmentClassification;

/**
 * 设备分类DAO接口
 * @author MOMO
 * @version 2018-02-07
 */
@MyBatisDao
public interface HbstcEquipmentClassificationDao extends TreeDao<HbstcEquipmentClassification> {
	
}