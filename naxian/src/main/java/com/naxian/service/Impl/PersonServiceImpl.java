package com.naxian.service.Impl;

import com.github.pagehelper.PageInfo;
import com.naxian.mapper.PersonsMapper;
import com.naxian.pojo.Persons;
import com.naxian.pojo.PersonsExample;

import com.naxian.service.person.PersonService;
import com.naxian.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonsMapper personsMapper;
    @Override
    public boolean save(Persons person) {
        int row= personsMapper.insertSelective(person);
        return row>0;
    }

    @Override
    public boolean update(Persons person) {
        //连接数据库
        int rows = personsMapper.updateByPrimaryKey(person);
        return rows>0;
    }

    @Override
    public Persons getById(int perId) {
        //根据用户id获得用户
        Persons persons = personsMapper.selectByPrimaryKey(perId);
        return persons;
    }

    @Override
    public boolean insert(Persons persons) {
        int rows = personsMapper.insert(persons);
        return rows>0;
    }

    /**
     * 根据手机号判断是否已经注册过了
     * @param perTel
     * @return
     */
    @Override
    public JsonResult getByTelno(Long perTel) {
        PersonsExample example = new PersonsExample();
        PersonsExample.Criteria criteria = example.createCriteria();
            criteria.andPerTelEqualTo(perTel);

        List<Persons> personsList = personsMapper.selectByExample(example);
        if(personsList != null & personsList.size() >0){
            //如果查询的数据库不为空那么，证明数据库中存在此手机号不能再注册
            Persons persons = personsList.get(0);
            return new JsonResult(0,"手机号已经注册，请登录",persons);//0表示用户存在，用户可以登陆
        }else {
            return new JsonResult(1,"手机号没有注册，请注册",null);//1.表示收据库中用户不存在，用户可以注册
        }

    }

    @Override
    public Persons login(String username, String password) {
        return null;
    }



    @Override
    public JsonResult loginByTelno(Long perTel, String password) {
        System.out.println("perTel:"+perTel);
        System.out.println("password:"+password);
        Persons person = null;

        PersonsExample personExample = new PersonsExample();
        PersonsExample.Criteria criteria = personExample.createCriteria();
        System.out.println("personExample:"+personExample);
        System.out.println("criteria:"+criteria);
        criteria.andPerTelEqualTo(perTel);
        criteria.andPasswordEqualTo(password);
//        criteria.andPerStatusEqualTo(1);//1代表数据库中本条书数据状态有效

        List<Persons> personList = personsMapper.selectByExample(personExample);

        System.out.println("personList:"+personList);
        if(personList.size()!=0){
            person = personList.get(0);
            return new JsonResult(1,"查询到该用户，可以登陆",person);
        }else {
            return new JsonResult(0,"没有查询到该用户，请前往注册",person);
        }

    }

    @Override
    public PageInfo<Persons> findByPage(Integer pageNum) {
        return null;
    }

    @Override
    public JsonResult loginByPerNameAndPwd(String perName, String password) {
//        System.out.println("perName:"+perName);
//        System.out.println("password:"+password);
//        Persons person = null;
//        PersonsExample personExample = new PersonsExample();
//        PersonsExample.Criteria criteria = personExample.createCriteria();
//        criteria.andPerNameEqualTo(perName);
//        criteria.andPasswordEqualTo(password);
//        criteria.andPerStatusEqualTo(1);//1代表数据库中本条书数据状态有效
//        List<Persons> personList = personsMapper.selectByExample(personExample);
//        if(personList.size()!=0){
//            person = personList.get(0);
//            return new JsonResult(0,"查询到该用户，可以登陆",person);
//        }else {
//            return new JsonResult(1,"没有查询到该用户，请前往注册",person);
//        }
        return null;
    }

//    @Override
//    public boolean insertTelnoPwd(Long perTel, String pwd) {
//        return personsMapper.insertByTelAndPwd(perTel,pwd);
//    }
}
