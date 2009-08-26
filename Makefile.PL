use inc::Module::Install;

name     'HTML-TreeBuilderX-ASP_NET';
all_from 'lib/HTML/TreeBuilderX/ASP_NET.pm';
author   'Evan Carroll <me@evancarroll.com>';

requires 'Class::MOP';
requires 'Moose';
requires 'MooseX::Traits';
requires 'HTML::TreeBuilder';
requires 'HTTP::Request::Form';

build_requires 'Test::More';

auto_install;

WriteAll;

