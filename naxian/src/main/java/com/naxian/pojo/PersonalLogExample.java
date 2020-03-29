package com.naxian.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PersonalLogExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public PersonalLogExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
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
     * This method corresponds to the database table personal_log
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
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
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
     * This class corresponds to the database table personal_log
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

        public Criteria andLoginPerIdIsNull() {
            addCriterion("login_per_id is null");
            return (Criteria) this;
        }

        public Criteria andLoginPerIdIsNotNull() {
            addCriterion("login_per_id is not null");
            return (Criteria) this;
        }

        public Criteria andLoginPerIdEqualTo(Integer value) {
            addCriterion("login_per_id =", value, "loginPerId");
            return (Criteria) this;
        }

        public Criteria andLoginPerIdNotEqualTo(Integer value) {
            addCriterion("login_per_id <>", value, "loginPerId");
            return (Criteria) this;
        }

        public Criteria andLoginPerIdGreaterThan(Integer value) {
            addCriterion("login_per_id >", value, "loginPerId");
            return (Criteria) this;
        }

        public Criteria andLoginPerIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("login_per_id >=", value, "loginPerId");
            return (Criteria) this;
        }

        public Criteria andLoginPerIdLessThan(Integer value) {
            addCriterion("login_per_id <", value, "loginPerId");
            return (Criteria) this;
        }

        public Criteria andLoginPerIdLessThanOrEqualTo(Integer value) {
            addCriterion("login_per_id <=", value, "loginPerId");
            return (Criteria) this;
        }

        public Criteria andLoginPerIdIn(List<Integer> values) {
            addCriterion("login_per_id in", values, "loginPerId");
            return (Criteria) this;
        }

        public Criteria andLoginPerIdNotIn(List<Integer> values) {
            addCriterion("login_per_id not in", values, "loginPerId");
            return (Criteria) this;
        }

        public Criteria andLoginPerIdBetween(Integer value1, Integer value2) {
            addCriterion("login_per_id between", value1, value2, "loginPerId");
            return (Criteria) this;
        }

        public Criteria andLoginPerIdNotBetween(Integer value1, Integer value2) {
            addCriterion("login_per_id not between", value1, value2, "loginPerId");
            return (Criteria) this;
        }

        public Criteria andPerIdIsNull() {
            addCriterion("per_id is null");
            return (Criteria) this;
        }

        public Criteria andPerIdIsNotNull() {
            addCriterion("per_id is not null");
            return (Criteria) this;
        }

        public Criteria andPerIdEqualTo(Integer value) {
            addCriterion("per_id =", value, "perId");
            return (Criteria) this;
        }

        public Criteria andPerIdNotEqualTo(Integer value) {
            addCriterion("per_id <>", value, "perId");
            return (Criteria) this;
        }

        public Criteria andPerIdGreaterThan(Integer value) {
            addCriterion("per_id >", value, "perId");
            return (Criteria) this;
        }

        public Criteria andPerIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("per_id >=", value, "perId");
            return (Criteria) this;
        }

        public Criteria andPerIdLessThan(Integer value) {
            addCriterion("per_id <", value, "perId");
            return (Criteria) this;
        }

        public Criteria andPerIdLessThanOrEqualTo(Integer value) {
            addCriterion("per_id <=", value, "perId");
            return (Criteria) this;
        }

        public Criteria andPerIdIn(List<Integer> values) {
            addCriterion("per_id in", values, "perId");
            return (Criteria) this;
        }

        public Criteria andPerIdNotIn(List<Integer> values) {
            addCriterion("per_id not in", values, "perId");
            return (Criteria) this;
        }

        public Criteria andPerIdBetween(Integer value1, Integer value2) {
            addCriterion("per_id between", value1, value2, "perId");
            return (Criteria) this;
        }

        public Criteria andPerIdNotBetween(Integer value1, Integer value2) {
            addCriterion("per_id not between", value1, value2, "perId");
            return (Criteria) this;
        }

        public Criteria andLoginTypeIsNull() {
            addCriterion("login_type is null");
            return (Criteria) this;
        }

        public Criteria andLoginTypeIsNotNull() {
            addCriterion("login_type is not null");
            return (Criteria) this;
        }

        public Criteria andLoginTypeEqualTo(String value) {
            addCriterion("login_type =", value, "loginType");
            return (Criteria) this;
        }

        public Criteria andLoginTypeNotEqualTo(String value) {
            addCriterion("login_type <>", value, "loginType");
            return (Criteria) this;
        }

        public Criteria andLoginTypeGreaterThan(String value) {
            addCriterion("login_type >", value, "loginType");
            return (Criteria) this;
        }

        public Criteria andLoginTypeGreaterThanOrEqualTo(String value) {
            addCriterion("login_type >=", value, "loginType");
            return (Criteria) this;
        }

        public Criteria andLoginTypeLessThan(String value) {
            addCriterion("login_type <", value, "loginType");
            return (Criteria) this;
        }

        public Criteria andLoginTypeLessThanOrEqualTo(String value) {
            addCriterion("login_type <=", value, "loginType");
            return (Criteria) this;
        }

        public Criteria andLoginTypeLike(String value) {
            addCriterion("login_type like", value, "loginType");
            return (Criteria) this;
        }

        public Criteria andLoginTypeNotLike(String value) {
            addCriterion("login_type not like", value, "loginType");
            return (Criteria) this;
        }

        public Criteria andLoginTypeIn(List<String> values) {
            addCriterion("login_type in", values, "loginType");
            return (Criteria) this;
        }

        public Criteria andLoginTypeNotIn(List<String> values) {
            addCriterion("login_type not in", values, "loginType");
            return (Criteria) this;
        }

        public Criteria andLoginTypeBetween(String value1, String value2) {
            addCriterion("login_type between", value1, value2, "loginType");
            return (Criteria) this;
        }

        public Criteria andLoginTypeNotBetween(String value1, String value2) {
            addCriterion("login_type not between", value1, value2, "loginType");
            return (Criteria) this;
        }

        public Criteria andLoginIpIsNull() {
            addCriterion("login_ip is null");
            return (Criteria) this;
        }

        public Criteria andLoginIpIsNotNull() {
            addCriterion("login_ip is not null");
            return (Criteria) this;
        }

        public Criteria andLoginIpEqualTo(String value) {
            addCriterion("login_ip =", value, "loginIp");
            return (Criteria) this;
        }

        public Criteria andLoginIpNotEqualTo(String value) {
            addCriterion("login_ip <>", value, "loginIp");
            return (Criteria) this;
        }

        public Criteria andLoginIpGreaterThan(String value) {
            addCriterion("login_ip >", value, "loginIp");
            return (Criteria) this;
        }

        public Criteria andLoginIpGreaterThanOrEqualTo(String value) {
            addCriterion("login_ip >=", value, "loginIp");
            return (Criteria) this;
        }

        public Criteria andLoginIpLessThan(String value) {
            addCriterion("login_ip <", value, "loginIp");
            return (Criteria) this;
        }

        public Criteria andLoginIpLessThanOrEqualTo(String value) {
            addCriterion("login_ip <=", value, "loginIp");
            return (Criteria) this;
        }

        public Criteria andLoginIpLike(String value) {
            addCriterion("login_ip like", value, "loginIp");
            return (Criteria) this;
        }

        public Criteria andLoginIpNotLike(String value) {
            addCriterion("login_ip not like", value, "loginIp");
            return (Criteria) this;
        }

        public Criteria andLoginIpIn(List<String> values) {
            addCriterion("login_ip in", values, "loginIp");
            return (Criteria) this;
        }

        public Criteria andLoginIpNotIn(List<String> values) {
            addCriterion("login_ip not in", values, "loginIp");
            return (Criteria) this;
        }

        public Criteria andLoginIpBetween(String value1, String value2) {
            addCriterion("login_ip between", value1, value2, "loginIp");
            return (Criteria) this;
        }

        public Criteria andLoginIpNotBetween(String value1, String value2) {
            addCriterion("login_ip not between", value1, value2, "loginIp");
            return (Criteria) this;
        }

        public Criteria andLoginTimeIsNull() {
            addCriterion("login_time is null");
            return (Criteria) this;
        }

        public Criteria andLoginTimeIsNotNull() {
            addCriterion("login_time is not null");
            return (Criteria) this;
        }

        public Criteria andLoginTimeEqualTo(Date value) {
            addCriterion("login_time =", value, "loginTime");
            return (Criteria) this;
        }

        public Criteria andLoginTimeNotEqualTo(Date value) {
            addCriterion("login_time <>", value, "loginTime");
            return (Criteria) this;
        }

        public Criteria andLoginTimeGreaterThan(Date value) {
            addCriterion("login_time >", value, "loginTime");
            return (Criteria) this;
        }

        public Criteria andLoginTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("login_time >=", value, "loginTime");
            return (Criteria) this;
        }

        public Criteria andLoginTimeLessThan(Date value) {
            addCriterion("login_time <", value, "loginTime");
            return (Criteria) this;
        }

        public Criteria andLoginTimeLessThanOrEqualTo(Date value) {
            addCriterion("login_time <=", value, "loginTime");
            return (Criteria) this;
        }

        public Criteria andLoginTimeIn(List<Date> values) {
            addCriterion("login_time in", values, "loginTime");
            return (Criteria) this;
        }

        public Criteria andLoginTimeNotIn(List<Date> values) {
            addCriterion("login_time not in", values, "loginTime");
            return (Criteria) this;
        }

        public Criteria andLoginTimeBetween(Date value1, Date value2) {
            addCriterion("login_time between", value1, value2, "loginTime");
            return (Criteria) this;
        }

        public Criteria andLoginTimeNotBetween(Date value1, Date value2) {
            addCriterion("login_time not between", value1, value2, "loginTime");
            return (Criteria) this;
        }

        public Criteria andPersonalLogIsNull() {
            addCriterion("personal_log is null");
            return (Criteria) this;
        }

        public Criteria andPersonalLogIsNotNull() {
            addCriterion("personal_log is not null");
            return (Criteria) this;
        }

        public Criteria andPersonalLogEqualTo(Integer value) {
            addCriterion("personal_log =", value, "personalLog");
            return (Criteria) this;
        }

        public Criteria andPersonalLogNotEqualTo(Integer value) {
            addCriterion("personal_log <>", value, "personalLog");
            return (Criteria) this;
        }

        public Criteria andPersonalLogGreaterThan(Integer value) {
            addCriterion("personal_log >", value, "personalLog");
            return (Criteria) this;
        }

        public Criteria andPersonalLogGreaterThanOrEqualTo(Integer value) {
            addCriterion("personal_log >=", value, "personalLog");
            return (Criteria) this;
        }

        public Criteria andPersonalLogLessThan(Integer value) {
            addCriterion("personal_log <", value, "personalLog");
            return (Criteria) this;
        }

        public Criteria andPersonalLogLessThanOrEqualTo(Integer value) {
            addCriterion("personal_log <=", value, "personalLog");
            return (Criteria) this;
        }

        public Criteria andPersonalLogIn(List<Integer> values) {
            addCriterion("personal_log in", values, "personalLog");
            return (Criteria) this;
        }

        public Criteria andPersonalLogNotIn(List<Integer> values) {
            addCriterion("personal_log not in", values, "personalLog");
            return (Criteria) this;
        }

        public Criteria andPersonalLogBetween(Integer value1, Integer value2) {
            addCriterion("personal_log between", value1, value2, "personalLog");
            return (Criteria) this;
        }

        public Criteria andPersonalLogNotBetween(Integer value1, Integer value2) {
            addCriterion("personal_log not between", value1, value2, "personalLog");
            return (Criteria) this;
        }

        public Criteria andPersonLogStatusIsNull() {
            addCriterion("person_log_status is null");
            return (Criteria) this;
        }

        public Criteria andPersonLogStatusIsNotNull() {
            addCriterion("person_log_status is not null");
            return (Criteria) this;
        }

        public Criteria andPersonLogStatusEqualTo(Integer value) {
            addCriterion("person_log_status =", value, "personLogStatus");
            return (Criteria) this;
        }

        public Criteria andPersonLogStatusNotEqualTo(Integer value) {
            addCriterion("person_log_status <>", value, "personLogStatus");
            return (Criteria) this;
        }

        public Criteria andPersonLogStatusGreaterThan(Integer value) {
            addCriterion("person_log_status >", value, "personLogStatus");
            return (Criteria) this;
        }

        public Criteria andPersonLogStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("person_log_status >=", value, "personLogStatus");
            return (Criteria) this;
        }

        public Criteria andPersonLogStatusLessThan(Integer value) {
            addCriterion("person_log_status <", value, "personLogStatus");
            return (Criteria) this;
        }

        public Criteria andPersonLogStatusLessThanOrEqualTo(Integer value) {
            addCriterion("person_log_status <=", value, "personLogStatus");
            return (Criteria) this;
        }

        public Criteria andPersonLogStatusIn(List<Integer> values) {
            addCriterion("person_log_status in", values, "personLogStatus");
            return (Criteria) this;
        }

        public Criteria andPersonLogStatusNotIn(List<Integer> values) {
            addCriterion("person_log_status not in", values, "personLogStatus");
            return (Criteria) this;
        }

        public Criteria andPersonLogStatusBetween(Integer value1, Integer value2) {
            addCriterion("person_log_status between", value1, value2, "personLogStatus");
            return (Criteria) this;
        }

        public Criteria andPersonLogStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("person_log_status not between", value1, value2, "personLogStatus");
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
     * This class corresponds to the database table personal_log
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
     * This class corresponds to the database table personal_log
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