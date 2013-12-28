use Test::More;

use_ok('Alien::WFDB');

my $u = Alien::WFDB->new;

like( $u->libs, qr/q/ );

done_testing;
