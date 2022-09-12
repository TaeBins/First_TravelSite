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
public class WishPlaceDTO {

	public int wp_seq;
	@NonNull public int place_seq;
	public String wr_date;
	@NonNull public String mb_id;
	public String place_name;
	public String place_link;
}
