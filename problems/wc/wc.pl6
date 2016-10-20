#!/usr/bin/env perl6


sub MAIN (Str $file!){
    die "Not a file ($file)" unless $file.IO.f; 
my $data = slurp $file;

          for $file.IO.lines.elems -> $lines {
          for $file.IO.lines.words.elems -> $words {
          #for $file.IO.lines.chars -> $charcount {


 print "lines ($lines) words ($words) chars ({$data.chars})";

      }
}
}
