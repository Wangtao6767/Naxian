package com.naxian.service.Impl;

import com.github.pagehelper.PageInfo;
import com.naxian.mapper.ResumesMapper;
import com.naxian.pojo.Persons;
import com.naxian.pojo.Resumes;
import com.naxian.pojo.ResumesExample;
import com.naxian.service.person.ResumesService;
import com.naxian.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResumesServiceImpl implements ResumesService {
    @Autowired
    private ResumesMapper resumesMapper;


    @Override
    public boolean save(Persons person) {
        return false;
    }

    @Override
    public boolean update(Persons person) {
        return false;
    }

    @Override
    public List<Resumes> getByPerId(int perId) {
       ResumesExample example = new ResumesExample();
        ResumesExample.Criteria criteria = example.createCriteria();
        criteria.andPerIdEqualTo(perId);
        List<Resumes> resumesList = resumesMapper.selectByExample(example);
        System.out.println("Service层中根据perId查询到的简历集合"+resumesList);
        if( resumesList.size() >0){
            //如果查询的数据库不为空那么，证明数据库简历表中中存在此用户id
            Resumes resumes = resumesList.get(0);
            return resumesList;
        }else {
            return resumesList;//1.表示收据库中用户不存在，用户可以注册
        }


    }

    @Override
    public boolean insert(Persons persons) {
        return false;
    }

    @Override
    public JsonResult getByTelno(Long perTel) {
        return new JsonResult(0,"",null);
    }

    @Override
    public JsonResult getByPerName(String perName) {
        System.out.println(perName);
        Persons persons = null;


        return null;
    }

    @Override
    public PageInfo<Persons> findByPage(Integer pageNum) {
        return null;
    }
}
