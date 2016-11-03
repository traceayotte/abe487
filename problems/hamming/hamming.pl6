#!/usr/bin/env perl6

sub MAIN (Str $s1!, Str $s2!) {
    my $seq1 = $s1.chars;
    my $seq2 = $s2.chars;
    my $diff = abs ($seq1 - $seq2);    
    my @s1 = $s1.comb;
    my @s2 = $s2.comb;

    for 0..* -> $i  {                      
        last unless @s1[$i] && @s2[$i];    
        if @s1[$i] ne @s2[$i] {            
            $diff++;                     
        }
    }

    print $diff;






}
