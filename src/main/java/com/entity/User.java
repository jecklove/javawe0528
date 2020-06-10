package com.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 
 * 用户类
 * @author Administrator
 *
 */
@Data
@NoArgsConstructor // 无参构造
@AllArgsConstructor // 全参构造
@Builder

public class User {
	private Long id;
	private String email;
	private String username;
	private String password;

}
