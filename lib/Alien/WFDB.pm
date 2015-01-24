package Alien::WFDB;

use strict;
use warnings;

use parent 'Alien::Base';

sub Inline {
	return unless $_[-1] eq 'C'; # Inline's error message is good
	my $self = __PACKAGE__->new;
	+{
		LIBS => $self->libs,
		INC => $self->cflags,
		AUTO_INCLUDE => '#include "wfdb.h"',
	};
}

1;
# ABSTRACT: Alien package for the WFDB (WaveForm DataBase) library

=pod

=head1 Inline support

This module supports L<Inline's with functionality|Inline/"Playing 'with' Others">.

=head1 SEE ALSO

L<WFDB|http://physionet.org/physiotools/wfdb.shtml>, L<Bio::Physio::WFDB>

=cut
