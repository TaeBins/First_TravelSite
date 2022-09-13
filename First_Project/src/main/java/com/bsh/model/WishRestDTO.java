package com.bsh.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
public class WishRestDTO {

	public int wr_seq;
	@NonNull public int rest_seq;
	public String wr_date;
	@NonNull public String mb_id;
	public String rest_name;
	public String rest_link;
}
