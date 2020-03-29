package com.naxian.mapper;

import com.naxian.pojo.CompanyReceived;
import com.naxian.pojo.CompanyReceivedExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CompanyReceivedMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table company_received
     *
     * @mbggenerated Thu Oct 10 09:41:05 CST 2019
     */
    int countByExample(CompanyReceivedExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table company_received
     *
     * @mbggenerated Thu Oct 10 09:41:05 CST 2019
     */
    int deleteByExample(CompanyReceivedExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table company_received
     *
     * @mbggenerated Thu Oct 10 09:41:05 CST 2019
     */
    int deleteByPrimaryKey(Integer companyReceiveId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table company_received
     *
     * @mbggenerated Thu Oct 10 09:41:05 CST 2019
     */
    int insert(CompanyReceived record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table company_received
     *
     * @mbggenerated Thu Oct 10 09:41:05 CST 2019
     */
    int insertSelective(CompanyReceived record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table company_received
     *
     * @mbggenerated Thu Oct 10 09:41:05 CST 2019
     */
    List<CompanyReceived> selectByExample(CompanyReceivedExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table company_received
     *
     * @mbggenerated Thu Oct 10 09:41:05 CST 2019
     */
    CompanyReceived selectByPrimaryKey(Integer companyReceiveId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table company_received
     *
     * @mbggenerated Thu Oct 10 09:41:05 CST 2019
     */
    int updateByExampleSelective(@Param("record") CompanyReceived record, @Param("example") CompanyReceivedExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table company_received
     *
     * @mbggenerated Thu Oct 10 09:41:05 CST 2019
     */
    int updateByExample(@Param("record") CompanyReceived record, @Param("example") CompanyReceivedExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table company_received
     *
     * @mbggenerated Thu Oct 10 09:41:05 CST 2019
     */
    int updateByPrimaryKeySelective(CompanyReceived record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table company_received
     *
     * @mbggenerated Thu Oct 10 09:41:05 CST 2019
     */
    int updateByPrimaryKey(CompanyReceived record);
}