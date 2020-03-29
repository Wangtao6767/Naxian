package com.naxian.service.person;

import com.github.pagehelper.PageInfo;
import com.naxian.pojo.Persons;
import com.naxian.util.JsonResult;

public interface PersonService {
    //添加用户
    public boolean save(Persons person);

    //修改用户
    public boolean update(Persons person);
    //根据主键查询
    public Persons getById(int perId);
    //添加数据
    public boolean insert(Persons persons);
    //根据手机号查询
    public JsonResult getByTelno(Long perTel);

    //登录根据用户名或名密码
    public Persons login(String username, String password);
    //根据
    //登录根据手机号或名密码
    public JsonResult loginByTelno(Long perTel, String password);
    //分页
    public PageInfo<Persons> findByPage(Integer pageNum);
    //根据用户名,密码登陆
    public JsonResult loginByPerNameAndPwd(String perName, String password);
   //
//    public boolean insertTelnoPwd( Long perTel, String pwd);
}
