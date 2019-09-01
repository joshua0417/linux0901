/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.hbstc.service;

import java.util.List;

import com.thinkgem.jeesite.modules.hbstc.dao.HbstcEquipmentInforDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.hbstc.entity.HbstcEquipmentInfor;


/**
 * 管理设备信息Service
 * @author MOMO
 * @version 2018-02-07
 */
@Service
@Transactional(readOnly = true)
public class HbstcEquipmentInforService extends CrudService<HbstcEquipmentInforDao, HbstcEquipmentInfor> {
  @Autowired
  private HbstcEquipmentInforDao  hbstcEquipmentInforDao;
	public HbstcEquipmentInfor get(String id) {
		return super.get(id);
	}
	
	public List<HbstcEquipmentInfor> findList(HbstcEquipmentInfor hbstcEquipmentInfor) {
		return super.findList(hbstcEquipmentInfor);
	}
	public Page<HbstcEquipmentInfor>findListDevice(Page<HbstcEquipmentInfor> page,HbstcEquipmentInfor hbstcEquipmentInfor){
		hbstcEquipmentInfor.setPage(page);
		List<HbstcEquipmentInfor>result=hbstcEquipmentInforDao.findListDevice(hbstcEquipmentInfor);
		page.setList(result);
		return page;
	}
	
	public Page<HbstcEquipmentInfor> findPage(Page<HbstcEquipmentInfor> page, HbstcEquipmentInfor hbstcEquipmentInfor) {

		return super.findPage(page, hbstcEquipmentInfor);
	}
	
	@Transactional(readOnly = false)
	public void save(HbstcEquipmentInfor hbstcEquipmentInfor) {
		super.save(hbstcEquipmentInfor);
	}
	
	@Transactional(readOnly = false)
	public void delete(HbstcEquipmentInfor hbstcEquipmentInfor) {
		super.delete(hbstcEquipmentInfor);
	}
	
}