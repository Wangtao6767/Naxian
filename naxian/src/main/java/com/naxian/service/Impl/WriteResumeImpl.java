package com.naxian.service.Impl;

import com.naxian.mapper.EducationMapper;
import com.naxian.mapper.PersonsMapper;
import com.naxian.mapper.ResumesMapper;
import com.naxian.mapper.WorkexperienceMapper;
import com.naxian.pojo.*;
import com.naxian.service.resumeWrite.WriteService;
import com.naxian.vo.writeResume.WriteVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WriteResumeImpl implements WriteService {
    @Autowired
    private ResumesMapper resumesMapper;
    @Autowired
    private PersonsMapper personsMapper;
    @Autowired
    private EducationMapper educationMapper;
    @Autowired
    private WorkexperienceMapper workexperienceMapper;
    @Override
    public WriteVo getByResumeId(Integer resumeId) {
        Integer perId = 0;
        Integer eduId = 0;
        Integer experienceId = 0;
        ResumesExample resumesExample = new ResumesExample();
        ResumesExample.Criteria reasumeCriteria = resumesExample.createCriteria();
        reasumeCriteria.andResumeIdEqualTo(resumeId);
        List<Resumes> resumesList = resumesMapper.selectByExample(resumesExample);
        Resumes resumes = resumesMapper.selectByPrimaryKey(resumeId);
        for (Resumes r:resumesList
             ) {
         perId = r.getPerId();

        }
        Persons persons = personsMapper.selectByPrimaryKey(perId);
       WorkexperienceExample workexperienceExample = new WorkexperienceExample();
       WorkexperienceExample.Criteria workCriteria = workexperienceExample.createCriteria();
       workCriteria.andResumeIdEqualTo(resumeId);
       List<Workexperience> workexperienceList = workexperienceMapper.selectByExample(workexperienceExample);
        for (Workexperience w:workexperienceList
             ) {
            experienceId = w.getExperienceId();

        }
        Workexperience workexperience = workexperienceMapper.selectByPrimaryKey(experienceId);

        EducationExample educationExample = new EducationExample();
        EducationExample.Criteria eduCriteria = educationExample.createCriteria();
        eduCriteria.andResumeIdEqualTo(resumeId);
        List<Education> educationList = educationMapper.selectByExample(educationExample);
        for (Education e: educationList){
            eduId = e.getEduId();
        }

        Education education = educationMapper.selectByPrimaryKey(eduId);

        WriteVo writeVo = new WriteVo(education,persons,resumes,workexperience);
        return  writeVo;

    }

    @Override
    public boolean updateResume(WriteVo writeVo) {
        int row1 =  personsMapper.updateByPrimaryKey(writeVo.getPersons());
        int row2 = resumesMapper.updateByPrimaryKey(writeVo.getResumes());
        int row3 =workexperienceMapper.updateByPrimaryKey(writeVo.getWorkexperience());
        int row4 = educationMapper.updateByPrimaryKey(writeVo.getEducation());
        int rows = row1+row2+row3+row4;
        return rows>0;

    }

    @Override
    public boolean updateCurrentSalary(WriteVo writeVo) {
        int row1 = resumesMapper.updateByPrimaryKey(writeVo.getResumes());
        return row1>0;
    }

    @Override
    public boolean updateHope(WriteVo writeVo) {
        int row1 = resumesMapper.updateByPrimaryKey(writeVo.getResumes());
        return  row1>0;
    }

    @Override
    public boolean updateWorkexperience(WriteVo writeVo) {
        int row1 = workexperienceMapper.updateByPrimaryKey(writeVo.getWorkexperience());
        return  row1>0;
    }

    @Override
    public boolean updateEducation(WriteVo writeVo) {
        int row1 = educationMapper.updateByPrimaryKey(writeVo.getEducation());
        return  row1>0;
    }

    @Override
    public boolean updateSkill(WriteVo writeVo) {
        int rows = educationMapper.updateByPrimaryKey(writeVo.getEducation());
        return rows>0;
    }


}
