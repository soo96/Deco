package com.deco.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Users {
	int idx;
	String name;
	String password;
	String email;
	String gender;
	int age;
	String phone;
	String addr;
}
