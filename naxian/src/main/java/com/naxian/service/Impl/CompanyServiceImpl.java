package com.naxian.service.Impl;

import com.github.pagehelper.PageInfo;
import com.naxian.mapper.CompanyMapper;
import com.naxian.pojo.Company;
import com.naxian.pojo.CompanyExample;

import com.naxian.service.company.CompanyService;
import com.naxian.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2019/10/7.
 */
@Service
public class CompanyServiceImpl implements CompanyService {
    @Autowired
    private CompanyMapper companyMapper;
    //添加公司
    @Override
    public boolean save(Company company) {
        return false;
    }
    //修改公司
    @Override
    public boolean update(Company company) {
        return false;
    }
    //根据公司id获得公司
    @Override
    public Company getById(int companyId) {
        Company company = companyMapper.selectByPrimaryKey(companyId);

        System.out.println("company信息:"+company);
        return company;
    }


//根据公司电话获得公司
    @Override
    public JsonResult getByTelno(Long companyTelno) {
        return null;
    }
//公司登录
    @Override
    public Company login(String username, String pwd) {
        return null;
    }
//根据电话登录
    @Override
    public Company loginByTelno(Long companyTelno, String pwd) {
        System.out.println("companyTelno:"+companyTelno);
        System.out.println("pwd:"+pwd);
        Company company = null;

        CompanyExample companyExample = new CompanyExample();
        CompanyExample.Criteria criteria =companyExample.createCriteria();
        System.out.println("companyExample:"+companyExample);
        System.out.println("criteria:"+criteria);
        criteria.andCompanyTelnoEqualTo(companyTelno);
        criteria.andPwdEqualTo(pwd);
//        criteria.andPerStatusEqualTo(1);//1代表数据库中本条书数据状态有效

        List<Company> companyList = companyMapper.selectByExample(companyExample);

        System.out.println("companyList:"+companyList);
        if(companyList.size()!=0)
            company = companyList.get(0);
        return company;

    }

    @Override
    public PageInfo<Company> findByPage(Integer pageNum) {
        return null;
    }

    @Override
    public JsonResult loginByPerNameAndPwd(String companyName, String pwd) {
        return null;
    }
}
