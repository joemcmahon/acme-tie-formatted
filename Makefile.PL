use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Tie::Formatted',
    AUTHOR              => 'Joe McMahon <mcmahon@yahoo-inc.com>',
    VERSION_FROM        => 'lib/Tie/Formatted.pm',
    ABSTRACT_FROM       => 'lib/Tie/Formatted.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Tie-Formatted-*' },
);

sub MY::postamble {
  return <<'MAKE_FRAG';
yman: *.3
	cd build && pod2man ../lib/Tie/Formatted.pm > "../man/man3/Tie::Formatted.3"

yinst: *.yicf
	cd build && yinst_create *.yicf

ydist: yman yinst *.tgz
	cd build && dist_install *.tgz

MAKE_FRAG
    }
