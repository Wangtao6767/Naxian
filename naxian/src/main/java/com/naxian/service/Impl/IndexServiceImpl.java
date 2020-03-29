package com.naxian.service.Impl;

import com.naxian.mapper.CompanyMapper;
import com.naxian.mapper.RecruitMapper;
import com.naxian.pojo.Company;
import com.naxian.pojo.CompanyExample;
import com.naxian.pojo.Recruit;
import com.naxian.pojo.RecruitExample;
import com.naxian.service.index.IndexService;
import com.naxian.vo.index.IndexVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class IndexServiceImpl implements IndexService {
    @Autowired
    private CompanyMapper companyMapper;
    @Autowired
    private RecruitMapper recruitMapper;
    @Override
    public IndexVO indexGet() {
//        CompanyExample companyExample = new CompanyExample();
//        CompanyExample.Criteria companyCriteria = companyExample.createCriteria();
        Integer companyId = 0;//设置公司id
        Company company= null;//设置公司对象
        List<Recruit> recruitList = new ArrayList<>();//创建招聘的集合
        List<Company> companyList = companyMapper.selectByExample(null);//查询全部公司的信息的list
        for (Company c:companyList){
            companyId = c.getCompanyId();//获取公司id

             company = companyMapper.selectByPrimaryKey(companyId);//根据公司id查询招聘
            RecruitExample recruitExample = new RecruitExample();
            RecruitExample.Criteria recruitCriteria = recruitExample.createCriteria();
            recruitCriteria.andCompanyIdEqualTo(companyId);
             recruitList = recruitMapper.selectByExample(recruitExample);//得到招聘的集合

        }
        IndexVO indexVO = new IndexVO(company,recruitList);//将公司信息和招聘集合封装到对象中
        return indexVO;
    }
}
