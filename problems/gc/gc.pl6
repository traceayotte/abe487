#!/usr/bin/env perl6




sub MAIN (Str $file!, Numeric :$threshold = 0.30) { die "Not a file ($file)" unless $file.IO.f;               


my $fh = open $file;
my $sequencelength = 0;
my $count = 0;
my $species = 'bateria';
my $dna = $file.IO.f ?? $file.IO.slurp !! $file;
for $dna.lines -> $line {
       if $line ~~ /'>'/ {
     if $sequencelength > 0 {
       my $GCcontent = ($count / $sequencelength);
       if $GCcontent > $threshold {
           $species = 'burkholderia';
              }else {
                     $species = 'anthrax';
                     print".02f" "(GCcontent) ($species)";
     }
    }
      $sequencelength = 0;
       $count = 0;
   }else {
      my $sequence = slurp $line;
      $sequencelength += $sequence.chars;

       for $line.lc.comb {
          when 'g' { $count++ }
          when 'c' { $count++ }
}
  }
}
}








}
