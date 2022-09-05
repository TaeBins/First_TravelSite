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

	private BigDecimal Q_SEQ;
	@NonNull private String Q_TITLE;
	@NonNull private String Q_CONTENT;
	@NonNull private String Q_FILE;
	private Timestamp Q_DATE;
	@NonNull private String MB_ID;
	
}
