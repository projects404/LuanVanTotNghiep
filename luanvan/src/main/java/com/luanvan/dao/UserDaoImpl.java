package com.luanvan.dao;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.luanvan.model.User;
@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	MongoTemplate mongotemplate;
	private static final String COLLECIION_NAME ="user";
	public List<User> listUser() {
		// TODO Auto-generated method stub
		return mongotemplate.findAll(User.class, COLLECIION_NAME);
	}

	public void add(User user) {
		if(mongotemplate.collectionExists(User.class)) {
			mongotemplate.createCollection(User.class);
		}
		user.setId(UUID.randomUUID().toString());
		mongotemplate.insert(user,COLLECIION_NAME);
	}

	public void update(User user) {
		mongotemplate.save(user);
	}

	public void delete(User user) {
		mongotemplate.remove(user,COLLECIION_NAME);
	}

	public User findUserById(String id) {
		return mongotemplate.findById(id, User.class);
	}

}
