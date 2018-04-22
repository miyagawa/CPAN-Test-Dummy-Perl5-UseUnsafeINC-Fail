use strict;
use Test::More;

plan skip_all => "Skip in release testing"
  if $ENV{CI} || $ENV{AUTHOR_TESTING} || $ENV{RELEASE_TESTING} || -e ".git";

is $ENV{PERL_USE_UNSAFE_INC}, '1';

done_testing;
