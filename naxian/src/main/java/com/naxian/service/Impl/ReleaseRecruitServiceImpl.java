package com.naxian.service.Impl;

import com.naxian.mapper.CompanyMapper;
import com.naxian.mapper.RecruitMapper;
import com.naxian.pojo.*;


import com.naxian.service.recruit.ReleaseRecruitService;
import com.naxian.util.JsonResult;
import com.naxian.vo.index.IndexVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2019/10/8.
 */
@Service
public class ReleaseRecruitServiceImpl implements ReleaseRecruitService {

    @Autowired
    private RecruitMapper recruitMapper;
    @Autowired
    private CompanyMapper companyMapper;

    @Override
    public boolean add(Recruit recruit) {

        return this.recruitMapper.insert(recruit)>0;
    }

    @Override
    public Recruit getByRecruitId(int recId) {
        Integer companyId = 0;
        RecruitExample recruitExample =new RecruitExample();
        RecruitExample.Criteria recruitCriteria = recruitExample.createCriteria();
        recruitCriteria.andRecIdEqualTo(recId);
        List<Recruit> recruitList = recruitMapper.selectByExample(recruitExample);
        Recruit recruit = recruitMapper.selectByPrimaryKey(recId);
        for (Recruit r:recruitList){
            companyId = r.getCompanyId();
        }
      /*  Company company = companyMapper.selectByPrimaryKey(companyId);*/

        return recruit;
    }
@Override
    public Company getCompanyByRecruitId(int recId){
        Recruit recruit = recruitMapper.selectByPrimaryKey(recId);
        Integer companyId = recruit.getCompanyId();
        Company company = companyMapper.selectByPrimaryKey(companyId);
        return  company;


    }

    @Override
    public List<Recruit> getRecruitByRecruitId(int recId) {
        Integer companyId = 0;//设置公司id
       Recruit recruit = recruitMapper.selectByPrimaryKey(recId);
       RecruitExample recruitExample = new RecruitExample();
       RecruitExample.Criteria recruitCriteria = recruitExample.createCriteria();
       recruitCriteria.andCompanyIdEqualTo(recruit.getCompanyId());
        List<Recruit> recruitList = recruitMapper.selectByExample(recruitExample);//创建招聘的集合
        return recruitList;

    }

}
