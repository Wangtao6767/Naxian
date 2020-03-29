package com.naxian.vo.index;

import com.naxian.mapper.CompanyMapper;
import com.naxian.pojo.Company;
import com.naxian.pojo.Recruit;

import java.util.List;

public class IndexVO {
    private Company company;
    private List<Recruit> recruitList;

    public IndexVO(){}
    public IndexVO(Company company, List<Recruit> recruitList) {
        this.company = company;
        this.recruitList = recruitList;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public List<Recruit> getRecruitList() {
        return recruitList;
    }

    public void setRecruitList(List<Recruit> recruitList) {
        this.recruitList = recruitList;
    }

    @Override
    public String toString() {
        return "IndexVO{" +
                "company=" + company +
                ", recruitList=" + recruitList +
                '}';
    }
}
