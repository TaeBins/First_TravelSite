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
	private String Q_TITLE;
	private String Q_CONTENT;
	private String Q_FILE;
	private String Q_DATE;
	private Timestamp MB_ID;
	
}
