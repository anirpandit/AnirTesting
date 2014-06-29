#! usr/local/bin/perl -w
##Search for motifs

print "Please type the filename of the DNA sequence data: ";

$DNAfilename = <STDIN>;

chomp $DNAfilename;

unless (open(DNAFILE, $DNAfilename)) {
	print "Cannot open file \"$DNAfilename\"\n\n";
	exit;
}

@DNA = <DNAFILE>;

close DNAFILE;

$DNA = join(' ',@DNA);

$DNA =~ s/\s//g;

@DNA = split('',$DNA);

$countA = 0; 
$countT = 0; 
$countC = 0;
$countG = 0;
$errors = 0;


foreach $base(@DNA){
	if($base eq 'A'){ ++$countA;}
	elsif($base eq 'T'){ ++$countT;}
	elsif($base eq 'G'){ ++$countG;}
	elsif($base eq 'C'){ ++$countC;}
	else { print "Error  !\n\n"; ++$errors;}
}

print "Number of As : ", $countA,"\n";
print "Number of Ts : ", $countT,"\n";
print "Number of Gs : ", $countG,"\n";
print "Number of Cs : ", $countC,"\n";
print "Number of Errors : ", $errors,"\n";


exit;