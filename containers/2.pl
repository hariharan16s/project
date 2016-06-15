#!/usr/bin/perl
use strict;
use warnings;

my $filename = $ARGV[0];
my @array;
my $row=0;
my $column=0;
my $array_size;

open (my $DATA,"$filename") || die "Cannot open the file $filename $!";
while (my $line = <$DATA>){
     chomp $line;
     push @{$array[$row]}, split (/\s+/, $line);
     $array_size=scalar(@{$array[$row]});
     #### Calculating the total # of columns ($column) in the file to use for the outer for loop below ####
     if ($column < $array_size){
	$column=$array_size;
     }
     $row++;
}

#### I am using # of rows in the file ($row) for the inner for loop below ####

my $word;

for (my $i=0; $i < $column; $i++){
 for (my $j=0; $j < $row; $j++) {
	$word = shift(@{$array[$j]});
	if ($word) {
		print $word;
	}
	else {
		print "--";
	}
	print " ";
 }
print "\n";
}
