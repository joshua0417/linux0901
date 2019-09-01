/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.hbstc.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.hbstc.entity.HbstcEquipmentClassification;
import com.thinkgem.jeesite.modules.hbstc.service.HbstcEquipmentClassificationService;

/**
 * 设备分类Controller
 * @author MOMO
 * @version 2018-02-07
 */
@Controller
@RequestMapping(value = "${adminPath}/hbstc/hbstcEquipmentClassification")
public class HbstcEquipmentClassificationController extends BaseController {

	@Autowired
	private HbstcEquipmentClassificationService hbstcEquipmentClassificationService;
	
	@ModelAttribute
	public HbstcEquipmentClassification get(@RequestParam(required=false) String id) {
		HbstcEquipmentClassification entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = hbstcEquipmentClassificationService.get(id);
		}
		if (entity == null){
			entity = new HbstcEquipmentClassification();
		}
		return entity;
	}
	
	@RequiresPermissions("hbstc:hbstcEquipmentClassification:view")
	@RequestMapping(value = {"list", ""})
	public String list(HbstcEquipmentClassification hbstcEquipmentClassification, HttpServletRequest request, HttpServletResponse response, Model model) {
		List<HbstcEquipmentClassification> list = hbstcEquipmentClassificationService.findList(hbstcEquipmentClassification); 
		model.addAttribute("list", list);
		return "modules/hbstc/hbstcEquipmentClassificationList";
	}

	@RequiresPermissions("hbstc:hbstcEquipmentClassification:view")
	@RequestMapping(value = "form")
	public String form(HbstcEquipmentClassification hbstcEquipmentClassification, Model model) {
		if (hbstcEquipmentClassification.getParent()!=null && StringUtils.isNotBlank(hbstcEquipmentClassification.getParent().getId())){
			hbstcEquipmentClassification.setParent(hbstcEquipmentClassificationService.get(hbstcEquipmentClassification.getParent().getId()));
			// 获取排序号，最末节点排序号+30
			if (StringUtils.isBlank(hbstcEquipmentClassification.getId())){
				HbstcEquipmentClassification hbstcEquipmentClassificationChild = new HbstcEquipmentClassification();
				hbstcEquipmentClassificationChild.setParent(new HbstcEquipmentClassification(hbstcEquipmentClassification.getParent().getId()));
				List<HbstcEquipmentClassification> list = hbstcEquipmentClassificationService.findList(hbstcEquipmentClassification); 
				if (list.size() > 0){
					hbstcEquipmentClassification.setSort(list.get(list.size()-1).getSort());
					if (hbstcEquipmentClassification.getSort() != null){
						hbstcEquipmentClassification.setSort(hbstcEquipmentClassification.getSort() + 30);
					}
				}
			}
		}
		if (hbstcEquipmentClassification.getSort() == null){
			hbstcEquipmentClassification.setSort(30);
		}
		model.addAttribute("hbstcEquipmentClassification", hbstcEquipmentClassification);
		return "modules/hbstc/hbstcEquipmentClassificationForm";
	}

	@RequiresPermissions("hbstc:hbstcEquipmentClassification:edit")
	@RequestMapping(value = "save")
	public String save(HbstcEquipmentClassification hbstcEquipmentClassification, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, hbstcEquipmentClassification)){
			return form(hbstcEquipmentClassification, model);
		}
		hbstcEquipmentClassificationService.save(hbstcEquipmentClassification);
		addMessage(redirectAttributes, "保存设备分类信息成功");
		return "redirect:"+Global.getAdminPath()+"/hbstc/hbstcEquipmentClassification/?repage";
	}
	
	@RequiresPermissions("hbstc:hbstcEquipmentClassification:edit")
	@RequestMapping(value = "delete")
	public String delete(HbstcEquipmentClassification hbstcEquipmentClassification, RedirectAttributes redirectAttributes) {
		hbstcEquipmentClassificationService.delete(hbstcEquipmentClassification);
		addMessage(redirectAttributes, "删除设备分类信息成功");
		return "redirect:"+Global.getAdminPath()+"/hbstc/hbstcEquipmentClassification/?repage";
	}

	@RequiresPermissions("user")
	@ResponseBody
	@RequestMapping(value = "treeData")
	public List<Map<String, Object>> treeData(@RequestParam(required=false) String extId, HttpServletResponse response) {
		List<Map<String, Object>> mapList = Lists.newArrayList();
		List<HbstcEquipmentClassification> list = hbstcEquipmentClassificationService.findList(new HbstcEquipmentClassification());
		for (int i=0; i<list.size(); i++){
			HbstcEquipmentClassification e = list.get(i);
			if (StringUtils.isBlank(extId) || (extId!=null && !extId.equals(e.getId()) && e.getParentIds().indexOf(","+extId+",")==-1)){
				Map<String, Object> map = Maps.newHashMap();
				map.put("id", e.getId());
				map.put("pId", e.getParentId());
				map.put("name", e.getName());
				mapList.add(map);
			}
		}
		return mapList;
	}
	
}