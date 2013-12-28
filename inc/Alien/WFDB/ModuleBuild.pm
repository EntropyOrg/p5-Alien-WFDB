package Alien::WFDB::ModuleBuild;
 
use strict;
use warnings;
use base qw( Alien::Base::ModuleBuild );
use FindBin ();
 
sub new {
  my $class = shift;
  return $class->SUPER::new(@_);
}

package
  main;

sub alien_patch {
	# the -no-docs tarball does not have a doc directory, but the build
	# script still looks for one
	mkdir 'doc';
	return 0;
}
 
1;
