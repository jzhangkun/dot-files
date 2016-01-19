#!/usr/bin/env perl
# just for fun
use strict;
use warnings;

BEGIN { srand(time()) }
while (1) {
    print "@{[ map { rand(2) % 2 } 1..10 ]} ";
}
