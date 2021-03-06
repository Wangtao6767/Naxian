package com.naxian.pojo;

import java.io.Serializable;
import java.util.Date;

public class PersonalLog implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column personal_log.login_per_id
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    private Integer loginPerId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column personal_log.per_id
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    private Integer perId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column personal_log.login_type
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    private String loginType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column personal_log.login_ip
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    private String loginIp;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column personal_log.login_time
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    private Date loginTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column personal_log.personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    private Integer personalLog;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column personal_log.person_log_status
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    private Integer personLogStatus;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column personal_log.x
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    private String x;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column personal_log.xx
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    private String xx;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column personal_log.login_per_id
     *
     * @return the value of personal_log.login_per_id
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public Integer getLoginPerId() {
        return loginPerId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column personal_log.login_per_id
     *
     * @param loginPerId the value for personal_log.login_per_id
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void setLoginPerId(Integer loginPerId) {
        this.loginPerId = loginPerId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column personal_log.per_id
     *
     * @return the value of personal_log.per_id
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public Integer getPerId() {
        return perId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column personal_log.per_id
     *
     * @param perId the value for personal_log.per_id
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void setPerId(Integer perId) {
        this.perId = perId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column personal_log.login_type
     *
     * @return the value of personal_log.login_type
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public String getLoginType() {
        return loginType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column personal_log.login_type
     *
     * @param loginType the value for personal_log.login_type
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void setLoginType(String loginType) {
        this.loginType = loginType == null ? null : loginType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column personal_log.login_ip
     *
     * @return the value of personal_log.login_ip
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public String getLoginIp() {
        return loginIp;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column personal_log.login_ip
     *
     * @param loginIp the value for personal_log.login_ip
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp == null ? null : loginIp.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column personal_log.login_time
     *
     * @return the value of personal_log.login_time
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public Date getLoginTime() {
        return loginTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column personal_log.login_time
     *
     * @param loginTime the value for personal_log.login_time
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column personal_log.personal_log
     *
     * @return the value of personal_log.personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public Integer getPersonalLog() {
        return personalLog;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column personal_log.personal_log
     *
     * @param personalLog the value for personal_log.personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void setPersonalLog(Integer personalLog) {
        this.personalLog = personalLog;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column personal_log.person_log_status
     *
     * @return the value of personal_log.person_log_status
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public Integer getPersonLogStatus() {
        return personLogStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column personal_log.person_log_status
     *
     * @param personLogStatus the value for personal_log.person_log_status
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void setPersonLogStatus(Integer personLogStatus) {
        this.personLogStatus = personLogStatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column personal_log.x
     *
     * @return the value of personal_log.x
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public String getX() {
        return x;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column personal_log.x
     *
     * @param x the value for personal_log.x
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void setX(String x) {
        this.x = x == null ? null : x.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column personal_log.xx
     *
     * @return the value of personal_log.xx
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public String getXx() {
        return xx;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column personal_log.xx
     *
     * @param xx the value for personal_log.xx
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    public void setXx(String xx) {
        this.xx = xx == null ? null : xx.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", loginPerId=").append(loginPerId);
        sb.append(", perId=").append(perId);
        sb.append(", loginType=").append(loginType);
        sb.append(", loginIp=").append(loginIp);
        sb.append(", loginTime=").append(loginTime);
        sb.append(", personalLog=").append(personalLog);
        sb.append(", personLogStatus=").append(personLogStatus);
        sb.append(", x=").append(x);
        sb.append(", xx=").append(xx);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}