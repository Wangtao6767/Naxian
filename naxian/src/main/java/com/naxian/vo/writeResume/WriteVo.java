package com.naxian.vo.writeResume;

import com.naxian.pojo.Education;
import com.naxian.pojo.Persons;
import com.naxian.pojo.Resumes;
import com.naxian.pojo.Workexperience;

public class WriteVo {
    private Education education;
    private Persons persons;
    private Resumes resumes;
    private Workexperience workexperience;
    public WriteVo(){}
    public WriteVo(Education education, Persons persons, Resumes resumes, Workexperience workexperience) {
        this.education = education;
        this.persons = persons;
        this.resumes = resumes;
        this.workexperience = workexperience;
    }
    public WriteVo(Resumes resumes, Persons persons){
        this.persons = persons;
        this.resumes = resumes;
    }
    public WriteVo(Resumes resumes, Persons persons, Workexperience workexperience){
        this.persons = persons;
        this.resumes = resumes;
        this.workexperience = workexperience;
    }
    public WriteVo(Resumes resumes, Persons persons, Education education){
        this.persons = persons;
        this.resumes = resumes;
        this.education = education;
    }
    public Education getEducation() {
        return education;
    }

    public void setEducation(Education education) {
        this.education = education;
    }

    public Persons getPersons() {
        return persons;
    }

    public void setPersons(Persons persons) {
        this.persons = persons;
    }

    public Resumes getResumes() {
        return resumes;
    }

    public void setResumes(Resumes resumes) {
        this.resumes = resumes;
    }

    public Workexperience getWorkexperience() {
        return workexperience;
    }

    public void setWorkexperience(Workexperience workexperience) {
        this.workexperience = workexperience;
    }

    @Override
    public String toString() {
        return "WriteVo{" +
                "education=" + education +
                ", persons=" + persons +
                ", resumes=" + resumes +
                ", workexperience=" + workexperience +
                '}';
    }
}
