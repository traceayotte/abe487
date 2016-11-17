#!/usr/bin/env perl6

sub MAIN ($file1!, $file2!) {
           unless $file1.IO.f || $file2.IO.f {
        die "Not a file.";
  }
     my $set1 = $file1.IO.lines.lc.map(*.subst(/<-[\w\s]>/, '', :g)).words.Set;
     my $set2 = $file2.IO.lines.lc.map(*.subst(/<-[\w\s]>/, '', :g)).words.Set;
    
     my $count = ($set1 (&) $set2).elems;

                print $count;


   
}
