#!/usr/bin/perl -w

use lib './lib', './t/lib';
use warnings;
use strict;
use Mendoza;
use McBain::WithWebSocket;

my $api = Mendoza->new;
my $worker = McBain::WithWebSocket->new($api);

$worker->start(7878);