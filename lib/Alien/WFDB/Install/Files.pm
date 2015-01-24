package Alien::WFDB::Install::Files;

# allows other packages to use ExtUtils::Depends like so:
#   use ExtUtils::Depends;
#   my $p = new ExtUtils::Depends MyMod, Alien::WFDB;
# and their code will have all WFDB available at C level

use strict;
use warnings;

use Alien::WFDB qw(Inline);
BEGIN { *Inline = *Alien::WFDB::Inline }
sub deps { () }
