#!/usr/bin/perl

sub item_priority {
	my $val = ord($_[0]);
	if ($val >= ord("a") and $val <= ord("z")) {
		return $val + 1 - ord("a");
	}
	return $val + 27 - ord("A");
}

sub find_duplicate_char {
	my $first = $_[0];
	outer: foreach my $char (split('', $first)) {
		for my $i (1..$#_) {
			if (index($_[$i], $char) == -1) {
				next outer;
			}
		}
		return $char;
	}
}

open (my $input, "<", "../input/input3.txt") or die "Could not open file, $!";
chomp(my @lines = <$input>);
close($input);

my $sum = 0;

foreach $line (@lines) {
	my $first = substr $line, 0, length($line) / 2;
	my $second = substr $line, length($line) / 2;
	$sum += item_priority(find_duplicate_char($first, $second));
}

my $i = 0;
my $sum2 = 0;
while ($i < $#lines) {
	my $first = $lines[$i];
	my $second = $lines[$i + 1];
	my $third = $lines[$i + 2];
	$sum2 += item_priority(find_duplicate_char($first, $second, $third));
	$i += 3;
}

print "$sum\n";
print "$sum2\n";
