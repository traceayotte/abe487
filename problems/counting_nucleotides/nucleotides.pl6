#!/usr/bin/env perl6

    my $nucleotide = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC";
sub MAIN (Str $input = $nucleotide) {
    #my $nucleotide = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC";
    my $dna = $input.IO.e ?? $input.IO.slurp !! $input;
    my $bag = $dna.comb.Bag;
    put join ' ', $bag<A C G T>
}

#Very close to the DNA assignment we used. 
