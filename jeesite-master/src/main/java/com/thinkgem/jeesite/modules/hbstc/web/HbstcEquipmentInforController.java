/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.hbstc.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.javaws.CacheUtil;
import com.thinkgem.jeesite.common.mapper.JsonMapper;
import com.thinkgem.jeesite.common.utils.CacheUtils;
import com.thinkgem.jeesite.modules.hbstc.entity.EntryOutRecord;
import com.thinkgem.jeesite.modules.hbstc.entity.HbstcEquipmentClassification;
import com.thinkgem.jeesite.modules.hbstc.service.EntryOutRecordService;
import com.thinkgem.jeesite.modules.hbstc.service.HbstcEquipmentClassificationService;
import java.util.UUID;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.hbstc.entity.HbstcEquipmentInfor;
import com.thinkgem.jeesite.modules.hbstc.service.HbstcEquipmentInforService;

/**
 * 管理设备信息Controller
 * @author MOMO
 * @version 2018-02-07
 */
@Controller
@RequestMapping(value = "${adminPath}/hbstc/hbstcEquipmentInfor")
public class HbstcEquipmentInforController extends BaseController {
	@Autowired
	private EntryOutRecordService entryOutRecordService;
	@Autowired
	private HbstcEquipmentClassificationService hbstcEquipmentClassificationService;

	@Autowired
	private HbstcEquipmentInforService hbstcEquipmentInforService;
	
	@ModelAttribute
	public HbstcEquipmentInfor get(@RequestParam(required=false) String id) {
		HbstcEquipmentInfor entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = hbstcEquipmentInforService.get(id);
		}
		if (entity == null){
			entity = new HbstcEquipmentInfor();
		}
		return entity;
	}
	@RequiresPermissions("hbstc:hbstcEquipmentInfor:view")
	@RequestMapping(value = {"index"})
	public String index(HbstcEquipmentInfor hbstcEquipmentInfor, Model model) {
		return "modules/hbstc/hbstcEquipmentInforIndex";
	}
	@RequiresPermissions("hbstc:hbstcEquipmentInfor:view")
	@RequestMapping(value = {"list", ""})
	public String list(HbstcEquipmentInfor hbstcEquipmentInfor, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<HbstcEquipmentInfor> page = hbstcEquipmentInforService.findPage(new Page<HbstcEquipmentInfor>(request, response), hbstcEquipmentInfor); 
		model.addAttribute("page", page);
		return "modules/hbstc/hbstcEquipmentInforList";
	}
	@RequiresPermissions("hbstc:hbstcEquipmentInfor:view")
	@RequestMapping(value = {"deviceStatus"})
	public String deviceStatus(HbstcEquipmentInfor hbstcEquipmentInfor, HttpServletRequest request, HttpServletResponse response, Model model ) {


		hbstcEquipmentInfor.setDeviceStatus("0");
		Page<HbstcEquipmentInfor> page = hbstcEquipmentInforService.findListDevice(new Page<HbstcEquipmentInfor>(request, response), hbstcEquipmentInfor);
		model.addAttribute("page", page);
		return "modules/hbstc/hbstcEquipmentInforDeviceStatus";
	}
	@RequiresPermissions("hbstc:hbstcEquipmentInfor:view")
	@RequestMapping(value = {"deviceStatus1"})
	public String deviceStatus1(HbstcEquipmentInfor hbstcEquipmentInfor, HttpServletRequest request, HttpServletResponse response, Model model ) {

		//HbstcEquipmentInfor  hb= new HbstcEquipmentInfor();
		//HbstcEquipmentInfor  hb=(HbstcEquipmentInfor) CacheUtils.get("test",hbstcEquipmentInfor);
		//System.out.print(hb.getHbstcEquipmentClassification().getId());
		hbstcEquipmentInfor.setDeviceStatus("1");
		Page<HbstcEquipmentInfor> page = hbstcEquipmentInforService.findListDevice(new Page<HbstcEquipmentInfor>(request, response), hbstcEquipmentInfor);
		model.addAttribute("page", page);
		return "modules/hbstc/hbstcEquipmentInforDeviceStatus1";
	}
	@RequiresPermissions("hbstc:hbstcEquipmentInfor:view")
	@RequestMapping(value = {"deviceStatus2"})
	public String deviceStatus2(HbstcEquipmentInfor hbstcEquipmentInfor, HttpServletRequest request, HttpServletResponse response, Model model ) {

		hbstcEquipmentInfor.setDeviceStatus("2");
		Page<HbstcEquipmentInfor> page = hbstcEquipmentInforService.findListDevice(new Page<HbstcEquipmentInfor>(request, response), hbstcEquipmentInfor);
		model.addAttribute("page", page);
		return "modules/hbstc/hbstcEquipmentInforDeviceStatus2";
	}

	@RequiresPermissions("hbstc:hbstcEquipmentInfor:view")
	@RequestMapping(value = "form")
	public String form(HbstcEquipmentInfor hbstcEquipmentInfor, Model model) {
		if(null!=hbstcEquipmentInfor.getHbstcEquipmentClassification()){
			HbstcEquipmentClassification hec = hbstcEquipmentClassificationService.get(hbstcEquipmentInfor.getHbstcEquipmentClassification().getId());
			hbstcEquipmentInfor.setHbstcEquipmentClassification(hec);
		}
		model.addAttribute("hbstcEquipmentInfor", hbstcEquipmentInfor);
		return "modules/hbstc/hbstcEquipmentInforForm";
	}

	/*@RequiresPermissions("hbstc:hbstcEquipmentInfor:edit")*/
	@RequestMapping(value = "save")
	public String save(HbstcEquipmentInfor hbstcEquipmentInfor, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, hbstcEquipmentInfor)){
			return form(hbstcEquipmentInfor, model);
		}
		hbstcEquipmentInforService.save(hbstcEquipmentInfor);
		addMessage(redirectAttributes, "保存设备信息成功");
		return "redirect:"+Global.getAdminPath()+"/hbstc/hbstcEquipmentInfor/?repage";
	}
	
	@RequiresPermissions("hbstc:hbstcEquipmentInfor:edit")
	@RequestMapping(value = "delete")
	public String delete(HbstcEquipmentInfor hbstcEquipmentInfor, RedirectAttributes redirectAttributes) {
		hbstcEquipmentInforService.delete(hbstcEquipmentInfor);
		addMessage(redirectAttributes, "删除设备信息成功");
		return "redirect:"+Global.getAdminPath()+"/hbstc/hbstcEquipmentInfor/?repage";
	}
	/*去设备借出页面*/
	@RequiresPermissions("hbstc:hbstcEquipmentInfor:edit")
	@RequestMapping(value = "toChangeDevicestatus")
	public String toChangeDevicestatus(HbstcEquipmentInfor hbstcEquipmentInfor, Model model, RedirectAttributes redirectAttributes) {

		model.addAttribute("hbstcEquipmentInfor",hbstcEquipmentInfor);

		return "modules/hbstc/toChangeDevicestatus1";
	}
	/*将设备借出*/
	@RequiresPermissions("hbstc:hbstcEquipmentInfor:edit")
	@RequestMapping(value = "changeDevicestatus")
	@ResponseBody
	public String changeDevicestatus(HbstcEquipmentInfor hbstcEquipmentInfor, EntryOutRecord entryOutRecord) {
		hbstcEquipmentInfor.setDeviceStatus("1");
		hbstcEquipmentInforService.save(hbstcEquipmentInfor);
		entryOutRecord.setLendName(hbstcEquipmentInfor.getUser().getName());
		entryOutRecord.setLendReason(hbstcEquipmentInfor.getRemarks());
		entryOutRecord.setLendTime(hbstcEquipmentInfor.getUpdateDate());
		entryOutRecord.setTransactor(hbstcEquipmentInfor.getUpdateBy().getName());
		entryOutRecord.setId(UUID.randomUUID().toString().replaceAll("-", ""));
		entryOutRecord.setIsNewRecord(true);
		//entryOutRecord.setIsNewRecord("0");
		entryOutRecordService.save(entryOutRecord);
		//addMessage(redirectAttributes, "设备借出成功");
		String jsonResult = JsonMapper.nonDefaultMapper().toJson("success");
		//return "redirect:"+Global.getAdminPath()+"/hbstc/hbstcEquipmentInfor/deviceStatus?repage";
		return jsonResult;
	}
	/*将设备外借,<不为中心业务服务>*/
	@RequiresPermissions("hbstc:hbstcEquipmentInfor:edit")
	@RequestMapping(value = "changeDevicestatusOut")
	@ResponseBody
	public String changeDevicestatusOut(HbstcEquipmentInfor hbstcEquipmentInfor, EntryOutRecord entryOutRecord) {
		hbstcEquipmentInfor.setDeviceStatus("2");
		hbstcEquipmentInforService.save(hbstcEquipmentInfor);
		entryOutRecord.setLendName(hbstcEquipmentInfor.getUser().getName());
		entryOutRecord.setLendReason(hbstcEquipmentInfor.getRemarks());
		entryOutRecord.setLendTime(hbstcEquipmentInfor.getUpdateDate());
		entryOutRecord.setTransactor(hbstcEquipmentInfor.getUpdateBy().getName());
		entryOutRecord.setIsNewRecord(true);
		entryOutRecord.setId(UUID.randomUUID().toString().replaceAll("-", ""));
		entryOutRecordService.save(entryOutRecord);
		//return "redirect:"+Global.getAdminPath()+"/hbstc/hbstcEquipmentInfor/deviceStatus?repage";
		String jsonResult = JsonMapper.nonDefaultMapper().toJson("success");
		return jsonResult;
	}
	/*设备归还，页面定位在借出设备列表*/
	@RequiresPermissions("hbstc:hbstcEquipmentInfor:edit")
	@RequestMapping(value = "returnDevice1")
	public String returnDevice1(HbstcEquipmentInfor hbstcEquipmentInfor,RedirectAttributes redirectAttributes,EntryOutRecord entryOutRecord) {
		hbstcEquipmentInfor.setDeviceStatus("0");
		hbstcEquipmentInfor.setLendName("");
		hbstcEquipmentInfor.setRemarks("");
		hbstcEquipmentInforService.save(hbstcEquipmentInfor);
		entryOutRecord.setTransactor(hbstcEquipmentInfor.getUpdateBy().getName());
		entryOutRecord.setReturnTime(hbstcEquipmentInfor.getUpdateDate());
		entryOutRecord.setIsNewRecord(true);
		entryOutRecord.setId(UUID.randomUUID().toString().replaceAll("-", ""));
		entryOutRecordService.save(entryOutRecord);
		addMessage(redirectAttributes, "设备归还成功");
		return "redirect:"+Global.getAdminPath()+"/hbstc/hbstcEquipmentInfor/deviceStatus1?repage";
	}
	/*设备归还，页面定位在外借设备列表*/
	@RequiresPermissions("hbstc:hbstcEquipmentInfor:edit")
	@RequestMapping(value = "returnDevice2")
	public String returnDevice2(HbstcEquipmentInfor hbstcEquipmentInfor, RedirectAttributes redirectAttributes,EntryOutRecord entryOutRecord) {
		hbstcEquipmentInfor.setDeviceStatus("0");
		hbstcEquipmentInfor.setLendName("");
		hbstcEquipmentInfor.setRemarks("");
		hbstcEquipmentInforService.save(hbstcEquipmentInfor);
		entryOutRecord.setTransactor(hbstcEquipmentInfor.getUpdateBy().getName());
		entryOutRecord.setReturnTime(hbstcEquipmentInfor.getUpdateDate());
		entryOutRecord.setIsNewRecord(true);
		entryOutRecord.setId(UUID.randomUUID().toString().replaceAll("-", ""));
		entryOutRecordService.save(entryOutRecord);
		addMessage(redirectAttributes, "设备归还成功");
		return "redirect:"+Global.getAdminPath()+"/hbstc/hbstcEquipmentInfor/deviceStatus2?repage";
	}

}