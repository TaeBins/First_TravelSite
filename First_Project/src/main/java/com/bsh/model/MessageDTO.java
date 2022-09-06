package com.bsh.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class MessageDTO {

	private BigDecimal q_seq;
	@NonNull private String q_title;
	@NonNull private String q_content;
	@NonNull private String q_file;
	private String q_date;
	@NonNull private String mb_id;
	
}
