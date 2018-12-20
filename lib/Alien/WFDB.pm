package Alien::WFDB;

use strict;
use warnings;

use parent 'Alien::Base';


sub inline_auto_include {
	[ 'wfdb.h' ];
}

sub libs {
	my ($class) = @_;
	join ' ', (
		$class->install_type eq 'share' ? ('-L' . File::Spec->catfile($class->dist_dir, qw(lib)) ) : (),
		'-lwfdb',
	);
}

sub Inline {
	my ($self, $lang) = @_;
	return unless $_[-1] eq 'C'; # Inline's error message is good

	my $params = Alien::Base::Inline(@_);
}

1;
# ABSTRACT: Alien package for the WFDB (WaveForm DataBase) library

=pod

=head1 Inline support

This module supports L<Inline's with functionality|Inline/"Playing 'with' Others">.

=head1 SEE ALSO

L<WFDB|http://physionet.org/physiotools/wfdb.shtml>, L<Bio::Physio::WFDB>

=cut
