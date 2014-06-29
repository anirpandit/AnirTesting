#! usr/local/bin/perl -w

$proteinfilename = "/home/anir/git/AnirTesting/protein1.pep";

open(PROTEINFILE,$proteinfilename);

$protein=<PROTEINFILE>;
print "Here is the protein \n\n";
print $protein;


$protein=<PROTEINFILE>;
print "Here is the protein \n\n";
print $protein;

$protein=<PROTEINFILE>;
print "Here is the protein \n\n";
print $protein;


close PROTEINFILE;
exit;