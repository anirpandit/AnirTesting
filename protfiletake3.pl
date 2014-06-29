#! usr/local/bin/perl -w

$proteinfilename = "/home/anir/git/AnirTesting/protein1.pep";

open(PROTEINFILE,$proteinfilename);
@protein = <PROTEINFILE>;

print @protein;

print $protein[1];

close PROTEINFILE;

exit;