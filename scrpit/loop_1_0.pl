#!/usr/bin/env perl
use strict;

BEGIN { srand(time()) }
while (1) {
    print "@{[ map { rand(2) % 2 } 1..10 ]} ";
}
