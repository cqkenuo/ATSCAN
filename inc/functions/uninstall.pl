#!/usr/bin/perl
use strict;
use warnings;
use FindBin '$Bin';
## ALISAM TECHNOLOGY 2015
######################################################################################################################################################################################################
######################################################################################################################################################################################################
## DELETE / UNINSTALL TOOL
our ($uninstall, $scriptbash, $script, $scriptCompletion, $readme, @TT, @c, @OTHERS, @DT);
if (defined $uninstall) {
  desclaimer();
  print $c[2]."$OTHERS[8]";
  print $c[10];
  my $resp=<STDIN>;
  chomp ($resp);
  if ($resp=~/(Y|y)/) {
    print $c[4]."[!] $DT[31]\n";
    unlink $scriptbash if -e $scriptbash;
    unlink "$scriptCompletion/atscan" if -e "$scriptCompletion/atscan";
    system "rm -rf $Bin/inc" if -e "$Bin/inc";
    system "rm $Bin/atscan.pl" if -e "$Bin/atscan.pl";
    system "rm $Bin/atscan" if -e "$Bin/atscan";
    system "rm -rf $readme if -d $readme";
    if (is_folder_empty($Bin)) {
      system "rm -rf $Bin";
    }else{ print "$Bin still have files\n";}
    sleep(3);
    print $c[3]."$OTHERS[9]\n";
  }else{
    system("perl $script --updtd || atscan --updtd ");
    mtak(); ptak();
    print $c[4]."[!] $TT[13]\n";
  }
}
######################################################################################################################################################################################################
######################################################################################################################################################################################################
1;
######################################################################################################################################################################################################
######################################################################################################################################################################################################
