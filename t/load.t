use strict;
no warnings;

use Config;
use Test::More;

plan skip_all => "skip outside CPAN client"
  unless $ENV{PERL5_CPAN_IS_RUNNING};

plan skip_all => "this perl doesn't have this"
  unless $Config{default_inc_excludes_dot} eq 'define';

eval { require t::Foo };

like $@, qr/Can't locate t.Foo\.pm/;
unlike $@, qr/Do not load me/;

done_testing;


