#########################################################################
#   NAME
#   print_min_max_strings.pl
#   AUTHOR
#      Sekhar Kavuru
#   SYNOPSIS
#   print_min_max_strings.pl   input  string
#   e.g perl print_min_max_strings.pl  The cow jumped over the moon
#########################################################################

use Time::Piece;
use File::Copy;
use POSIX;
use POSIX qw/strftime/;
my $num_args = $#ARGV;
if ($num_args < 0) { print "Invalid Input \n"; exit;}
my $min = 100; my $max = 0; my $maxStr=""; $minStr="";
for (@ARGV) {
    $max = length($_) if length($_) > $max;
    $min = length($_) if length($_) < $min;
}
print "\n\nInput string : @ARGV\n\n";
for (@ARGV) {
if (length($_) eq $max) { print "Max string Length: $max - $_ \n";}
if (length($_) eq $min) { $minStr = $_ ;}
}
print "Min string Length: $min - $minStr \n";
exit;
