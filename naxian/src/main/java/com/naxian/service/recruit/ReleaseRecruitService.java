package com.naxian.service.recruit;




import com.naxian.pojo.Company;
import com.naxian.pojo.Recruit;
import com.naxian.vo.index.IndexVO;

import java.util.List;

/**
 * Created by Administrator on 2019/10/8.
 */
public interface ReleaseRecruitService {
    public boolean add(Recruit recruit);//添加到数据库操作
    //根据主键查询
    public Recruit getByRecruitId(int recId);
    //根据招聘id获得公司所有的招聘信息
    public List<Recruit> getRecruitByRecruitId(int recId);
    //根据招聘id获得公司的信息
    public Company getCompanyByRecruitId(int recId);

}
