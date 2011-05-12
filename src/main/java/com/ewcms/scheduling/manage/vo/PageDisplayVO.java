/**
 * 创建日期 2009-12-3
 * Copyright (c)2008 Jiangxi Institute of Computing Technology(JICT), All rights reserved.
 * JICT PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.jict.org
 */
package com.ewcms.scheduling.manage.vo;

import java.io.Serializable;

/**
 * @author 吴智俊
 */
public class PageDisplayVO implements Serializable {

	private static final long serialVersionUID = 5593933725156531605L;
	
	public static final String JOB_TYPE_CHANNEL = "channel";

	// Job(任务)信息 //
	private Integer jobId;
	
	private Integer jobVersion;
	
	private String label;
	
	private String userName = "";
	
	private String description;
	
	private Integer jobClassId;
	
	// 调度计划 //
	private Integer triggerId;
	
	private Integer triggerVersion;
	
	private Integer start = 1;

	private Integer mode = 0;
	
	private Integer occur;
	
	private Integer days;
	
	private String startDate;

	private String endDateSimple;
	
	private String endDateCalendar;
	
	private Integer occurrenceCount;
	
	private Integer recurrenceInterval;
	
	private Integer recurrenceIntervalUnit;
	
	private String minutes;
	
	private String hours;
	
	private Integer[] weekDays;
	
	private Integer[] monthDays;
	
	private Integer[] months;
	
	private Boolean isJobChannel = false;
	
	public Integer getJobId() {
		return jobId;
	}

	public void setJobId(Integer jobId) {
		this.jobId = jobId;
	}

	public Integer getJobVersion() {
		return jobVersion;
	}

	public void setJobVersion(Integer jobVersion) {
		this.jobVersion = jobVersion;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getTriggerId() {
		return triggerId;
	}

	public void setTriggerId(Integer triggerId) {
		this.triggerId = triggerId;
	}

	public Integer getTriggerVersion() {
		return triggerVersion;
	}

	public void setTriggerVersion(Integer triggerVersion) {
		this.triggerVersion = triggerVersion;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public Integer getMode() {
		return mode;
	}

	public void setMode(Integer mode) {
		this.mode = mode;
	}

	public Integer getOccur() {
		return occur;
	}

	public void setOccur(Integer occur) {
		this.occur = occur;
	}

	public Integer getDays() {
		return days;
	}

	public void setDays(Integer days) {
		this.days = days;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDateSimple() {
		return endDateSimple;
	}

	public void setEndDateSimple(String endDateSimple) {
		this.endDateSimple = endDateSimple;
	}

	public String getEndDateCalendar() {
		return endDateCalendar;
	}

	public void setEndDateCalendar(String endDateCalendar) {
		this.endDateCalendar = endDateCalendar;
	}

	public Integer getOccurrenceCount() {
		return occurrenceCount;
	}

	public void setOccurrenceCount(Integer occurrenceCount) {
		this.occurrenceCount = occurrenceCount;
	}

	public Integer getRecurrenceInterval() {
		return recurrenceInterval;
	}

	public void setRecurrenceInterval(Integer recurrenceInterval) {
		this.recurrenceInterval = recurrenceInterval;
	}

	public Integer getRecurrenceIntervalUnit() {
		return recurrenceIntervalUnit;
	}

	public void setRecurrenceIntervalUnit(Integer recurrenceIntervalUnit) {
		this.recurrenceIntervalUnit = recurrenceIntervalUnit;
	}

	public String getMinutes() {
		return minutes;
	}

	public void setMinutes(String minutes) {
		this.minutes = minutes;
	}

	public String getHours() {
		return hours;
	}

	public void setHours(String hours) {
		this.hours = hours;
	}

	public Integer[] getWeekDays() {
		return weekDays;
	}

	public void setWeekDays(Integer[] weekDays) {
		this.weekDays = weekDays;
	}

	public Integer[] getMonthDays() {
		return monthDays;
	}

	public void setMonthDays(Integer[] monthDays) {
		this.monthDays = monthDays;
	}

	public Integer[] getMonths() {
		return months;
	}

	public void setMonths(Integer[] months) {
		this.months = months;
	}

	public Boolean getIsJobChannel() {
		return isJobChannel;
	}

	public void setIsJobChannel(Boolean isJobChannel) {
		this.isJobChannel = isJobChannel;
	}

	public Integer getJobClassId() {
		return jobClassId;
	}

	public void setJobClassId(Integer jobClassId) {
		this.jobClassId = jobClassId;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((jobId == null) ? 0 : jobId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PageDisplayVO other = (PageDisplayVO) obj;
		if (jobId == null) {
			if (other.jobId != null)
				return false;
		} else if (!jobId.equals(other.jobId))
			return false;
		return true;
	}
}
