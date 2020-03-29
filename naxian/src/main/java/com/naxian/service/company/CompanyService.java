package com.naxian.service.company;

import com.github.pagehelper.PageInfo;
import com.naxian.pojo.Company;
import com.naxian.util.JsonResult;

/**
 * Created by Administrator on 2019/10/7.
 */
public interface CompanyService {
    //添加公司
    public boolean save(Company company);
    //修改公司
    public boolean update(Company company);
    //根据companyId查询公司
    public Company getById(int companyId);

    //根据手机号查询
    public JsonResult getByTelno(Long companyTelno);

    //登录根据用户名或名密码
    public Company login(String username, String pwd);

    //登录根据手机号或名密码
    public Company loginByTelno(Long companyTelno, String pwd);
    //分页
    public PageInfo<Company> findByPage(Integer pageNum);
    //根据用户名,密码登陆
    public JsonResult loginByPerNameAndPwd(String companyName, String pwd);
}
