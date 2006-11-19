#!/usr/bin/perl

my $s = `pg_config --version`;
$s =~ /^.*?(\d+)\.(\d+)\.(\d+).*?$/;
my $v = hex(sprintf("0x%02x%02x%02x", $1, $2, $3));
print "-DPGSQL_HAS_ESCAPECONN" if(($v >= 0x080104) or (($v >= 0x07030F) and ($v < 0x080000)));
