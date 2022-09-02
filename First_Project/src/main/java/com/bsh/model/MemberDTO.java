package com.bsh.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
public class MemberDTO {
	
	@NonNull private String mb_id;
	@NonNull private String mb_pw;
	private String mb_nick;
	private String mb_phone;
	private String mb_birth;
	private String mb_hint;
	private Timestamp joindate;

	public MemberDTO(String mb_id, String mb_pw, String mb_nick, String mb_phone,
			String mb_birth, String mb_hint) {
		this.mb_id = mb_id;
		this.mb_pw = mb_pw;
		this.mb_nick = mb_nick;
		this.mb_phone = mb_phone;
		this.mb_birth = mb_birth;
		this.mb_hint = mb_hint;
	}
	
	public MemberDTO(String mb_id, String mb_phone, String mb_birth, String mb_hint) {
		this.mb_id = mb_id;
		this.mb_phone = mb_phone;
		this.mb_birth = mb_birth;
		this.mb_hint = mb_hint;
	}
	public MemberDTO(String mb_phone, String mb_birth, String mb_hint) {
		this.mb_phone = mb_phone;
		this.mb_hint = mb_hint;
		this.mb_birth = mb_birth;
	}
  }