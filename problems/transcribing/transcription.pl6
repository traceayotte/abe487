#!/usr/bin/env perl6

   my $DNA = "GATGGAACTTGACTACGTAAATT";

sub MAIN(Str $input = $DNA) {
      my $RNA = $input.IO.chomp.subst('T', 'U');

    print $RNA;
}



#could only get the first T to change to U
