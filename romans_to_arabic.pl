
%map = ('I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000);

sub roman_pars 
 {
	$result = 0;
	$line = @_[0];
	@digits = split('', $line);
	$digit_ref = \@digits;
		
	for	($i=0; $i <= $#$digit_ref; $i++)
	{
		if (i+1 < $#$digit_ref && is_rom_substr ($digit_ref->[$i], $digit_ref->[$i+1]))
		{
			$temp = $digit_ref->[$i];
			$result -= $map{$temp};
		}
		else
		{
			$temp = $digit_ref->[$i];
			$result += $map{$temp};
		}
	}
	return $result;
}
 
 sub is_rom_substr 
 {
	$bool = 0;
	if (@_[0] < @_[1])
	{
		return 1;
	}
	else
	{
		return 0;
	}
 }
 
 
 
$romstr = "LXVII";

print(roman_pars($romstr));



 
