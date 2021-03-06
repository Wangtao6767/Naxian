package com.naxian.mapper;

import com.naxian.pojo.PersonalLog;
import com.naxian.pojo.PersonalLogExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PersonalLogMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    int countByExample(PersonalLogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    int deleteByExample(PersonalLogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    int deleteByPrimaryKey(Integer loginPerId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    int insert(PersonalLog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    int insertSelective(PersonalLog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    List<PersonalLog> selectByExample(PersonalLogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    PersonalLog selectByPrimaryKey(Integer loginPerId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    int updateByExampleSelective(@Param("record") PersonalLog record, @Param("example") PersonalLogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    int updateByExample(@Param("record") PersonalLog record, @Param("example") PersonalLogExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    int updateByPrimaryKeySelective(PersonalLog record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table personal_log
     *
     * @mbggenerated Wed Oct 09 00:57:41 CST 2019
     */
    int updateByPrimaryKey(PersonalLog record);
}