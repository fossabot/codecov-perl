use strict;
use warnings FATAL => 'all';
use utf8;

use t::Util;
use Devel::Cover::Report::Codecov::Service::Gitlab;

sub gitlab {'Devel::Cover::Report::Codecov::Service::Gitlab'}

subtest 'if gitlab' => sub {
  local $ENV{GITLAB_CI} = 1;
  ok(gitlab->detect);
};

subtest 'if not gitlasb' => sub {
  local $ENV{GITLAB_CI} = 0;
  ok(not gitlab->detect);
};

done_testing;
