#! usr/local/bin/perl -w

$proteinfilename = "/home/anir/git/AnirTesting/protein1.pep";
$proteinfilename2 = "/home/anir/git/AnirTesting/protein2.pep";

open(PROTEINFILE,$proteinfilename);
@protein = <PROTEINFILE>;
print @protein;
close PROTEINFILE;

print "\n\n\n";

open(PROTEINFILE2,$proteinfilename2);
@protein2 = <PROTEINFILE2>;
print @protein2;
close PROTEINFILE2;

print "\n\n\n";

open(PROTEINFILE3,$proteinfilename);
@protein3 = <PROTEINFILE3>;

@protein4 = reverse @protein3;

print @protein3;

print "\n\n";

print @protein4;

close PROTEINFILE3;


exit;