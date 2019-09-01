/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.hbstc.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.hbstc.entity.EntryOutRecord;
import com.thinkgem.jeesite.modules.hbstc.service.EntryOutRecordService;

/**
 * 记录设备的进出记录Controller
 * @author MOMO
 * @version 2018-02-28
 */
@Controller
@RequestMapping(value = "${adminPath}/hbstc/entryOutRecord")
public class EntryOutRecordController extends BaseController {

	@Autowired
	private EntryOutRecordService entryOutRecordService;
	
	@ModelAttribute
	public EntryOutRecord get(@RequestParam(required=false) String id) {
		EntryOutRecord entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = entryOutRecordService.get(id);
		}
		if (entity == null){
			entity = new EntryOutRecord();
		}
		return entity;
	}
	
	@RequiresPermissions("hbstc:entryOutRecord:view")
	@RequestMapping(value = {"list", ""})
	public String list(EntryOutRecord entryOutRecord, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<EntryOutRecord> page = entryOutRecordService.findPage(new Page<EntryOutRecord>(request, response), entryOutRecord); 
		model.addAttribute("page", page);
		return "modules/hbstc/entryOutRecordList";
	}

	@RequiresPermissions("hbstc:entryOutRecord:view")
	@RequestMapping(value = "form")
	public String form(EntryOutRecord entryOutRecord, Model model) {
		model.addAttribute("entryOutRecord", entryOutRecord);
		return "modules/hbstc/entryOutRecordForm";
	}

	@RequiresPermissions("hbstc:entryOutRecord:edit")
	@RequestMapping(value = "save")
	public String save(EntryOutRecord entryOutRecord, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, entryOutRecord)){
			return form(entryOutRecord, model);
		}
		entryOutRecordService.save(entryOutRecord);
		addMessage(redirectAttributes, "保存设备进出记录成功");
		return "redirect:"+Global.getAdminPath()+"/hbstc/entryOutRecord/?repage";
	}
	
	@RequiresPermissions("hbstc:entryOutRecord:edit")
	@RequestMapping(value = "delete")
	public String delete(EntryOutRecord entryOutRecord, RedirectAttributes redirectAttributes) {
		entryOutRecordService.delete(entryOutRecord);
		addMessage(redirectAttributes, "删除设备进出记录成功");
		return "redirect:"+Global.getAdminPath()+"/hbstc/entryOutRecord/?repage";
	}

}