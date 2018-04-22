use strict;
use Test::More;

plan skip_all => "skip outside CPAN client"
  unless $ENV{PERL5_CPAN_IS_RUNNING};

is $ENV{PERL_USE_UNSAFE_INC}, '0';

done_testing;
