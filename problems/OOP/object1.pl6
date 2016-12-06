#!/usr/bin/env perl6

class Car {
    has Str $.Make is required;
    has Str $.Model  is required;
    has Str $.Year  is required;
    has Str $.Mileage  is required;
    method Car_and_information { join ' ', $!Make, $!Model, $!Year, $!Mileage }
}

my $Toyota = Car.new(Make => 'Toyota', Model => 'Tacoma', Year => '2017', Mileage => '0');
my $Ford = Car.new(Make => 'Ford', Model => 'F-150', Year => '2006', Mileage => '200,100');
my $GMC = Car.new(Make => 'GMC', Model => 'Sierra', Year => '2010', Mileage => '110,000');

for $Toyota, $Ford, $GMC { put "Make Model Year and Milage: ", .Car_and_information }
