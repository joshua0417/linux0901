/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.hbstc.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.hbstc.entity.EntryOutRecord;

/**
 * 记录设备的进出记录DAO接口
 * @author MOMO
 * @version 2018-02-28
 */
@MyBatisDao
public interface EntryOutRecordDao extends CrudDao<EntryOutRecord> {
	
}