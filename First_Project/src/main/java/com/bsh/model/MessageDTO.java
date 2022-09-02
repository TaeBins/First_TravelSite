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

	private BigDecimal num;
	@NonNull private String sender;
	@NonNull private String recipient;
	@NonNull private String message;
	private Timestamp m_date;
	
}
