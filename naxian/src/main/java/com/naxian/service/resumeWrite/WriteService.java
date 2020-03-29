package com.naxian.service.resumeWrite;

import com.naxian.vo.writeResume.WriteVo;

public interface WriteService {
    public WriteVo getByResumeId(Integer resumeId);
    public boolean updateResume(WriteVo writeVo);
    public boolean updateCurrentSalary(WriteVo writeVo);
    public boolean updateHope(WriteVo writeVo);
    public boolean updateWorkexperience(WriteVo writeVo);
    public boolean updateEducation(WriteVo writeVo);
    public boolean updateSkill(WriteVo writeVo);
}