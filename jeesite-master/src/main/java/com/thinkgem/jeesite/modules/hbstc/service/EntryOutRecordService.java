/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.hbstc.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.hbstc.entity.EntryOutRecord;
import com.thinkgem.jeesite.modules.hbstc.dao.EntryOutRecordDao;

/**
 * 记录设备的进出记录Service
 * @author MOMO
 * @version 2018-02-28
 */
@Service
@Transactional(readOnly = true)
public class EntryOutRecordService extends CrudService<EntryOutRecordDao, EntryOutRecord> {

	public EntryOutRecord get(String id) {
		return super.get(id);
	}
	
	public List<EntryOutRecord> findList(EntryOutRecord entryOutRecord) {
		return super.findList(entryOutRecord);
	}
	
	public Page<EntryOutRecord> findPage(Page<EntryOutRecord> page, EntryOutRecord entryOutRecord) {
		return super.findPage(page, entryOutRecord);
	}
	
	@Transactional(readOnly = false)
	public void save(EntryOutRecord entryOutRecord) {
		super.save(entryOutRecord);
		System.out.print("保存成功！！！！！！！！！");
	}
	
	@Transactional(readOnly = false)
	public void delete(EntryOutRecord entryOutRecord) {
		super.delete(entryOutRecord);
	}
	
}