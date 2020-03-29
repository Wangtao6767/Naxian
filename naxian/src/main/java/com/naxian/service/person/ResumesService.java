package com.naxian.service.person;

import com.github.pagehelper.PageInfo;
import com.naxian.pojo.Persons;
import com.naxian.pojo.Resumes;
import com.naxian.util.JsonResult;

import java.util.List;

public interface ResumesService {
    //添加用户
    public boolean save(Persons person);

    //修改用户
    public boolean update(Persons person);
    //根据主键查询
    public List<Resumes> getByPerId(int perId);
    //添加数据
    public boolean insert(Persons persons);
    //根据手机号查询
    public JsonResult getByTelno(Long perTel);
    //根据用户名查询简历信息
    public JsonResult getByPerName(String perName);
    //
    //分页
    public PageInfo<Persons> findByPage(Integer pageNum);

}
