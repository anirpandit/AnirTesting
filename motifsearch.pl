#! usr/local/bin/perl -w
##Search for motifs

print "Please type the filename of the protein sequence data: ";

$proteinfilename = <STDIN>;

chomp $proteinfilename;

unless (open(PROTEINFILE, $proteinfilename)) {
	print "Cannot open file \"$proteinfilename\"\n\n";
	exit;
}

@protein = <PROTEINFILE>;

close PROTEINFILE;

$protein = join(' ',@protein);

$protein =~ s/\s//g;

do{
	print "Enter a motif to search for: ";
	
	$motif = <STDIN>;
	
	chomp $motif;
	
	if($protein =~/$motif/){
		print "I found it ! \n\n";
	}
	else{
		print "I didnt find it ! \n\n";
	}
}until($motif =~ /^\s*$/);

exit;