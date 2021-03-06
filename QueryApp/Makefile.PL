use 5.006;
use strict;
use warnings;
use inc::Module::Install;

name     'QueryApp';
version  '0.0.1';
abstract 'An OpenSSL query web app';
author   q{Richard Levitte <levitte@openssl.org>};
license  'apache';

perl_version 5.006;

tests_recursive('t');

resources (
   license    => 'http://www.apache.org/licenses/LICENSE-2.0',
   #repository => 'git://github.com/Richard Levitte/OpenSSL-query.git',
   #repository => 'https://bitbucket.org/Richard Levitte/OpenSSL-query',
   bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=OpenSSL-query',
);

configure_requires (
   'Module::Install' => 0,
);

build_requires (
   'Test::More' => 0,
);

requires (
   'File::Spec'     => 0,
   'YAML::XS'       => 0,
   Moo              => 0,
   Carp             => 0,
   Dancer2          => 0,
   Plack            => 0,
   'OpenSSL::Query' => 0,
);

install_as_site;
auto_install;
WriteAll;
