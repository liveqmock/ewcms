/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.plugin.report.manager.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ewcms.plugin.report.manager.ReportFacable;
import com.ewcms.plugin.report.model.CategoryReport;
import com.opensymphony.xwork2.ActionSupport;

public class ShowReportAction extends ActionSupport {

	private static final long serialVersionUID = -364326161682927125L;

	@Autowired
	private ReportFacable reportFac;
	
	private List<CategoryReport> categoryReports;

	public List<CategoryReport> getCategoryReports() {
		return categoryReports;
	}

	public void setCategoryReports(List<CategoryReport> categoryReports) {
		this.categoryReports = categoryReports;
	}
	
	@Override
	public String execute() throws Exception {
		setCategoryReports(reportFac.findAllCategoryReport());
		return SUCCESS;
	}
}
