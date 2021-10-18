package com.deco.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cafe {
	int idx;
	String name;
	String content;
	String phone;
	String addr;
	String menu;
	String opentime;
	String closetime;
	double grade;
	String location;
}
