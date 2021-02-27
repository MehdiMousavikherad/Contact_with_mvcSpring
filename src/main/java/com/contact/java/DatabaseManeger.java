package com.contact.java;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class DatabaseManeger {

    @Autowired
    JdbcTemplate template;

    String sql;

    public void update(contact contact) {
        sql = "update contact set id=" + contact.getId() + "name =" + contact.getName() + ",PhoneNumber="
                + contact.getPhoneNumber() + ",gender=" + contact.getGender();
        template.update(sql, contact);
    }

    public void save(contact contact) {
        sql = "insert into contact(id,name,phonenumber,gender)values(" + contact.getId() + "," + contact.getName() + ","
                + contact.getPhoneNumber() + "," + contact.getGender() + ")";
        template.update(sql, contact);
    }

    public void delete(int id) {
        sql = "delete contact where id =" + id;
        template.update(sql);
    }

    public List<contact> getAllContacts() {
        sql = "select * from contact";
        return template.query(sql, new RowMapper<contact>() {

            @Override
            public contact mapRow(ResultSet rs, int rowNum) throws SQLException {
                contact cn = new contact();
                cn.setName(rs.getString("name"));
                cn.setPhoneNumber(rs.getLong("PhoneNumber"));
                cn.setGender(rs.getString("Gender"));
                return cn;
            }
        });

    }
}