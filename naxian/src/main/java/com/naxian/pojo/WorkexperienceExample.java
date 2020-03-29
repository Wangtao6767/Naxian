package com.naxian.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class WorkexperienceExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public WorkexperienceExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andExperienceIdIsNull() {
            addCriterion("experience_id is null");
            return (Criteria) this;
        }

        public Criteria andExperienceIdIsNotNull() {
            addCriterion("experience_id is not null");
            return (Criteria) this;
        }

        public Criteria andExperienceIdEqualTo(Integer value) {
            addCriterion("experience_id =", value, "experienceId");
            return (Criteria) this;
        }

        public Criteria andExperienceIdNotEqualTo(Integer value) {
            addCriterion("experience_id <>", value, "experienceId");
            return (Criteria) this;
        }

        public Criteria andExperienceIdGreaterThan(Integer value) {
            addCriterion("experience_id >", value, "experienceId");
            return (Criteria) this;
        }

        public Criteria andExperienceIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("experience_id >=", value, "experienceId");
            return (Criteria) this;
        }

        public Criteria andExperienceIdLessThan(Integer value) {
            addCriterion("experience_id <", value, "experienceId");
            return (Criteria) this;
        }

        public Criteria andExperienceIdLessThanOrEqualTo(Integer value) {
            addCriterion("experience_id <=", value, "experienceId");
            return (Criteria) this;
        }

        public Criteria andExperienceIdIn(List<Integer> values) {
            addCriterion("experience_id in", values, "experienceId");
            return (Criteria) this;
        }

        public Criteria andExperienceIdNotIn(List<Integer> values) {
            addCriterion("experience_id not in", values, "experienceId");
            return (Criteria) this;
        }

        public Criteria andExperienceIdBetween(Integer value1, Integer value2) {
            addCriterion("experience_id between", value1, value2, "experienceId");
            return (Criteria) this;
        }

        public Criteria andExperienceIdNotBetween(Integer value1, Integer value2) {
            addCriterion("experience_id not between", value1, value2, "experienceId");
            return (Criteria) this;
        }

        public Criteria andWorkTimeStartIsNull() {
            addCriterion("work_time_start is null");
            return (Criteria) this;
        }

        public Criteria andWorkTimeStartIsNotNull() {
            addCriterion("work_time_start is not null");
            return (Criteria) this;
        }

        public Criteria andWorkTimeStartEqualTo(Date value) {
            addCriterionForJDBCDate("work_time_start =", value, "workTimeStart");
            return (Criteria) this;
        }

        public Criteria andWorkTimeStartNotEqualTo(Date value) {
            addCriterionForJDBCDate("work_time_start <>", value, "workTimeStart");
            return (Criteria) this;
        }

        public Criteria andWorkTimeStartGreaterThan(Date value) {
            addCriterionForJDBCDate("work_time_start >", value, "workTimeStart");
            return (Criteria) this;
        }

        public Criteria andWorkTimeStartGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("work_time_start >=", value, "workTimeStart");
            return (Criteria) this;
        }

        public Criteria andWorkTimeStartLessThan(Date value) {
            addCriterionForJDBCDate("work_time_start <", value, "workTimeStart");
            return (Criteria) this;
        }

        public Criteria andWorkTimeStartLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("work_time_start <=", value, "workTimeStart");
            return (Criteria) this;
        }

        public Criteria andWorkTimeStartIn(List<Date> values) {
            addCriterionForJDBCDate("work_time_start in", values, "workTimeStart");
            return (Criteria) this;
        }

        public Criteria andWorkTimeStartNotIn(List<Date> values) {
            addCriterionForJDBCDate("work_time_start not in", values, "workTimeStart");
            return (Criteria) this;
        }

        public Criteria andWorkTimeStartBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("work_time_start between", value1, value2, "workTimeStart");
            return (Criteria) this;
        }

        public Criteria andWorkTimeStartNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("work_time_start not between", value1, value2, "workTimeStart");
            return (Criteria) this;
        }

        public Criteria andWorkTimeEndIsNull() {
            addCriterion("work_time_end is null");
            return (Criteria) this;
        }

        public Criteria andWorkTimeEndIsNotNull() {
            addCriterion("work_time_end is not null");
            return (Criteria) this;
        }

        public Criteria andWorkTimeEndEqualTo(Date value) {
            addCriterionForJDBCDate("work_time_end =", value, "workTimeEnd");
            return (Criteria) this;
        }

        public Criteria andWorkTimeEndNotEqualTo(Date value) {
            addCriterionForJDBCDate("work_time_end <>", value, "workTimeEnd");
            return (Criteria) this;
        }

        public Criteria andWorkTimeEndGreaterThan(Date value) {
            addCriterionForJDBCDate("work_time_end >", value, "workTimeEnd");
            return (Criteria) this;
        }

        public Criteria andWorkTimeEndGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("work_time_end >=", value, "workTimeEnd");
            return (Criteria) this;
        }

        public Criteria andWorkTimeEndLessThan(Date value) {
            addCriterionForJDBCDate("work_time_end <", value, "workTimeEnd");
            return (Criteria) this;
        }

        public Criteria andWorkTimeEndLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("work_time_end <=", value, "workTimeEnd");
            return (Criteria) this;
        }

        public Criteria andWorkTimeEndIn(List<Date> values) {
            addCriterionForJDBCDate("work_time_end in", values, "workTimeEnd");
            return (Criteria) this;
        }

        public Criteria andWorkTimeEndNotIn(List<Date> values) {
            addCriterionForJDBCDate("work_time_end not in", values, "workTimeEnd");
            return (Criteria) this;
        }

        public Criteria andWorkTimeEndBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("work_time_end between", value1, value2, "workTimeEnd");
            return (Criteria) this;
        }

        public Criteria andWorkTimeEndNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("work_time_end not between", value1, value2, "workTimeEnd");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyIsNull() {
            addCriterion("work_company is null");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyIsNotNull() {
            addCriterion("work_company is not null");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyEqualTo(String value) {
            addCriterion("work_company =", value, "workCompany");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyNotEqualTo(String value) {
            addCriterion("work_company <>", value, "workCompany");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyGreaterThan(String value) {
            addCriterion("work_company >", value, "workCompany");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyGreaterThanOrEqualTo(String value) {
            addCriterion("work_company >=", value, "workCompany");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyLessThan(String value) {
            addCriterion("work_company <", value, "workCompany");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyLessThanOrEqualTo(String value) {
            addCriterion("work_company <=", value, "workCompany");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyLike(String value) {
            addCriterion("work_company like", value, "workCompany");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyNotLike(String value) {
            addCriterion("work_company not like", value, "workCompany");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyIn(List<String> values) {
            addCriterion("work_company in", values, "workCompany");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyNotIn(List<String> values) {
            addCriterion("work_company not in", values, "workCompany");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyBetween(String value1, String value2) {
            addCriterion("work_company between", value1, value2, "workCompany");
            return (Criteria) this;
        }

        public Criteria andWorkCompanyNotBetween(String value1, String value2) {
            addCriterion("work_company not between", value1, value2, "workCompany");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeIsNull() {
            addCriterion("work_industryType is null");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeIsNotNull() {
            addCriterion("work_industryType is not null");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeEqualTo(String value) {
            addCriterion("work_industryType =", value, "workIndustrytype");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeNotEqualTo(String value) {
            addCriterion("work_industryType <>", value, "workIndustrytype");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeGreaterThan(String value) {
            addCriterion("work_industryType >", value, "workIndustrytype");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeGreaterThanOrEqualTo(String value) {
            addCriterion("work_industryType >=", value, "workIndustrytype");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeLessThan(String value) {
            addCriterion("work_industryType <", value, "workIndustrytype");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeLessThanOrEqualTo(String value) {
            addCriterion("work_industryType <=", value, "workIndustrytype");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeLike(String value) {
            addCriterion("work_industryType like", value, "workIndustrytype");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeNotLike(String value) {
            addCriterion("work_industryType not like", value, "workIndustrytype");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeIn(List<String> values) {
            addCriterion("work_industryType in", values, "workIndustrytype");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeNotIn(List<String> values) {
            addCriterion("work_industryType not in", values, "workIndustrytype");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeBetween(String value1, String value2) {
            addCriterion("work_industryType between", value1, value2, "workIndustrytype");
            return (Criteria) this;
        }

        public Criteria andWorkIndustrytypeNotBetween(String value1, String value2) {
            addCriterion("work_industryType not between", value1, value2, "workIndustrytype");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeIsNull() {
            addCriterion("work_funtype is null");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeIsNotNull() {
            addCriterion("work_funtype is not null");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeEqualTo(String value) {
            addCriterion("work_funtype =", value, "workFuntype");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeNotEqualTo(String value) {
            addCriterion("work_funtype <>", value, "workFuntype");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeGreaterThan(String value) {
            addCriterion("work_funtype >", value, "workFuntype");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeGreaterThanOrEqualTo(String value) {
            addCriterion("work_funtype >=", value, "workFuntype");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeLessThan(String value) {
            addCriterion("work_funtype <", value, "workFuntype");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeLessThanOrEqualTo(String value) {
            addCriterion("work_funtype <=", value, "workFuntype");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeLike(String value) {
            addCriterion("work_funtype like", value, "workFuntype");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeNotLike(String value) {
            addCriterion("work_funtype not like", value, "workFuntype");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeIn(List<String> values) {
            addCriterion("work_funtype in", values, "workFuntype");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeNotIn(List<String> values) {
            addCriterion("work_funtype not in", values, "workFuntype");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeBetween(String value1, String value2) {
            addCriterion("work_funtype between", value1, value2, "workFuntype");
            return (Criteria) this;
        }

        public Criteria andWorkFuntypeNotBetween(String value1, String value2) {
            addCriterion("work_funtype not between", value1, value2, "workFuntype");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionIsNull() {
            addCriterion("work_subFunction is null");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionIsNotNull() {
            addCriterion("work_subFunction is not null");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionEqualTo(String value) {
            addCriterion("work_subFunction =", value, "workSubfunction");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionNotEqualTo(String value) {
            addCriterion("work_subFunction <>", value, "workSubfunction");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionGreaterThan(String value) {
            addCriterion("work_subFunction >", value, "workSubfunction");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionGreaterThanOrEqualTo(String value) {
            addCriterion("work_subFunction >=", value, "workSubfunction");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionLessThan(String value) {
            addCriterion("work_subFunction <", value, "workSubfunction");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionLessThanOrEqualTo(String value) {
            addCriterion("work_subFunction <=", value, "workSubfunction");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionLike(String value) {
            addCriterion("work_subFunction like", value, "workSubfunction");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionNotLike(String value) {
            addCriterion("work_subFunction not like", value, "workSubfunction");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionIn(List<String> values) {
            addCriterion("work_subFunction in", values, "workSubfunction");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionNotIn(List<String> values) {
            addCriterion("work_subFunction not in", values, "workSubfunction");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionBetween(String value1, String value2) {
            addCriterion("work_subFunction between", value1, value2, "workSubfunction");
            return (Criteria) this;
        }

        public Criteria andWorkSubfunctionNotBetween(String value1, String value2) {
            addCriterion("work_subFunction not between", value1, value2, "workSubfunction");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionIsNull() {
            addCriterion("work_introduction is null");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionIsNotNull() {
            addCriterion("work_introduction is not null");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionEqualTo(String value) {
            addCriterion("work_introduction =", value, "workIntroduction");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionNotEqualTo(String value) {
            addCriterion("work_introduction <>", value, "workIntroduction");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionGreaterThan(String value) {
            addCriterion("work_introduction >", value, "workIntroduction");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionGreaterThanOrEqualTo(String value) {
            addCriterion("work_introduction >=", value, "workIntroduction");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionLessThan(String value) {
            addCriterion("work_introduction <", value, "workIntroduction");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionLessThanOrEqualTo(String value) {
            addCriterion("work_introduction <=", value, "workIntroduction");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionLike(String value) {
            addCriterion("work_introduction like", value, "workIntroduction");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionNotLike(String value) {
            addCriterion("work_introduction not like", value, "workIntroduction");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionIn(List<String> values) {
            addCriterion("work_introduction in", values, "workIntroduction");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionNotIn(List<String> values) {
            addCriterion("work_introduction not in", values, "workIntroduction");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionBetween(String value1, String value2) {
            addCriterion("work_introduction between", value1, value2, "workIntroduction");
            return (Criteria) this;
        }

        public Criteria andWorkIntroductionNotBetween(String value1, String value2) {
            addCriterion("work_introduction not between", value1, value2, "workIntroduction");
            return (Criteria) this;
        }

        public Criteria andResumeIdIsNull() {
            addCriterion("resume_id is null");
            return (Criteria) this;
        }

        public Criteria andResumeIdIsNotNull() {
            addCriterion("resume_id is not null");
            return (Criteria) this;
        }

        public Criteria andResumeIdEqualTo(Integer value) {
            addCriterion("resume_id =", value, "resumeId");
            return (Criteria) this;
        }

        public Criteria andResumeIdNotEqualTo(Integer value) {
            addCriterion("resume_id <>", value, "resumeId");
            return (Criteria) this;
        }

        public Criteria andResumeIdGreaterThan(Integer value) {
            addCriterion("resume_id >", value, "resumeId");
            return (Criteria) this;
        }

        public Criteria andResumeIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("resume_id >=", value, "resumeId");
            return (Criteria) this;
        }

        public Criteria andResumeIdLessThan(Integer value) {
            addCriterion("resume_id <", value, "resumeId");
            return (Criteria) this;
        }

        public Criteria andResumeIdLessThanOrEqualTo(Integer value) {
            addCriterion("resume_id <=", value, "resumeId");
            return (Criteria) this;
        }

        public Criteria andResumeIdIn(List<Integer> values) {
            addCriterion("resume_id in", values, "resumeId");
            return (Criteria) this;
        }

        public Criteria andResumeIdNotIn(List<Integer> values) {
            addCriterion("resume_id not in", values, "resumeId");
            return (Criteria) this;
        }

        public Criteria andResumeIdBetween(Integer value1, Integer value2) {
            addCriterion("resume_id between", value1, value2, "resumeId");
            return (Criteria) this;
        }

        public Criteria andResumeIdNotBetween(Integer value1, Integer value2) {
            addCriterion("resume_id not between", value1, value2, "resumeId");
            return (Criteria) this;
        }

        public Criteria andWorkexperienceStatusIsNull() {
            addCriterion("workexperience_status is null");
            return (Criteria) this;
        }

        public Criteria andWorkexperienceStatusIsNotNull() {
            addCriterion("workexperience_status is not null");
            return (Criteria) this;
        }

        public Criteria andWorkexperienceStatusEqualTo(Integer value) {
            addCriterion("workexperience_status =", value, "workexperienceStatus");
            return (Criteria) this;
        }

        public Criteria andWorkexperienceStatusNotEqualTo(Integer value) {
            addCriterion("workexperience_status <>", value, "workexperienceStatus");
            return (Criteria) this;
        }

        public Criteria andWorkexperienceStatusGreaterThan(Integer value) {
            addCriterion("workexperience_status >", value, "workexperienceStatus");
            return (Criteria) this;
        }

        public Criteria andWorkexperienceStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("workexperience_status >=", value, "workexperienceStatus");
            return (Criteria) this;
        }

        public Criteria andWorkexperienceStatusLessThan(Integer value) {
            addCriterion("workexperience_status <", value, "workexperienceStatus");
            return (Criteria) this;
        }

        public Criteria andWorkexperienceStatusLessThanOrEqualTo(Integer value) {
            addCriterion("workexperience_status <=", value, "workexperienceStatus");
            return (Criteria) this;
        }

        public Criteria andWorkexperienceStatusIn(List<Integer> values) {
            addCriterion("workexperience_status in", values, "workexperienceStatus");
            return (Criteria) this;
        }

        public Criteria andWorkexperienceStatusNotIn(List<Integer> values) {
            addCriterion("workexperience_status not in", values, "workexperienceStatus");
            return (Criteria) this;
        }

        public Criteria andWorkexperienceStatusBetween(Integer value1, Integer value2) {
            addCriterion("workexperience_status between", value1, value2, "workexperienceStatus");
            return (Criteria) this;
        }

        public Criteria andWorkexperienceStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("workexperience_status not between", value1, value2, "workexperienceStatus");
            return (Criteria) this;
        }

        public Criteria andXIsNull() {
            addCriterion("x is null");
            return (Criteria) this;
        }

        public Criteria andXIsNotNull() {
            addCriterion("x is not null");
            return (Criteria) this;
        }

        public Criteria andXEqualTo(String value) {
            addCriterion("x =", value, "x");
            return (Criteria) this;
        }

        public Criteria andXNotEqualTo(String value) {
            addCriterion("x <>", value, "x");
            return (Criteria) this;
        }

        public Criteria andXGreaterThan(String value) {
            addCriterion("x >", value, "x");
            return (Criteria) this;
        }

        public Criteria andXGreaterThanOrEqualTo(String value) {
            addCriterion("x >=", value, "x");
            return (Criteria) this;
        }

        public Criteria andXLessThan(String value) {
            addCriterion("x <", value, "x");
            return (Criteria) this;
        }

        public Criteria andXLessThanOrEqualTo(String value) {
            addCriterion("x <=", value, "x");
            return (Criteria) this;
        }

        public Criteria andXLike(String value) {
            addCriterion("x like", value, "x");
            return (Criteria) this;
        }

        public Criteria andXNotLike(String value) {
            addCriterion("x not like", value, "x");
            return (Criteria) this;
        }

        public Criteria andXIn(List<String> values) {
            addCriterion("x in", values, "x");
            return (Criteria) this;
        }

        public Criteria andXNotIn(List<String> values) {
            addCriterion("x not in", values, "x");
            return (Criteria) this;
        }

        public Criteria andXBetween(String value1, String value2) {
            addCriterion("x between", value1, value2, "x");
            return (Criteria) this;
        }

        public Criteria andXNotBetween(String value1, String value2) {
            addCriterion("x not between", value1, value2, "x");
            return (Criteria) this;
        }

        public Criteria andXxIsNull() {
            addCriterion("xx is null");
            return (Criteria) this;
        }

        public Criteria andXxIsNotNull() {
            addCriterion("xx is not null");
            return (Criteria) this;
        }

        public Criteria andXxEqualTo(String value) {
            addCriterion("xx =", value, "xx");
            return (Criteria) this;
        }

        public Criteria andXxNotEqualTo(String value) {
            addCriterion("xx <>", value, "xx");
            return (Criteria) this;
        }

        public Criteria andXxGreaterThan(String value) {
            addCriterion("xx >", value, "xx");
            return (Criteria) this;
        }

        public Criteria andXxGreaterThanOrEqualTo(String value) {
            addCriterion("xx >=", value, "xx");
            return (Criteria) this;
        }

        public Criteria andXxLessThan(String value) {
            addCriterion("xx <", value, "xx");
            return (Criteria) this;
        }

        public Criteria andXxLessThanOrEqualTo(String value) {
            addCriterion("xx <=", value, "xx");
            return (Criteria) this;
        }

        public Criteria andXxLike(String value) {
            addCriterion("xx like", value, "xx");
            return (Criteria) this;
        }

        public Criteria andXxNotLike(String value) {
            addCriterion("xx not like", value, "xx");
            return (Criteria) this;
        }

        public Criteria andXxIn(List<String> values) {
            addCriterion("xx in", values, "xx");
            return (Criteria) this;
        }

        public Criteria andXxNotIn(List<String> values) {
            addCriterion("xx not in", values, "xx");
            return (Criteria) this;
        }

        public Criteria andXxBetween(String value1, String value2) {
            addCriterion("xx between", value1, value2, "xx");
            return (Criteria) this;
        }

        public Criteria andXxNotBetween(String value1, String value2) {
            addCriterion("xx not between", value1, value2, "xx");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table workexperience
     *
     * @mbggenerated do_not_delete_during_merge Wed Oct 09 00:57:41 CST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table workexperience
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}