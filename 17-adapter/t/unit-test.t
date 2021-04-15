#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use Player::Media::Audio;

is (Player::Media::Audio->new({ audio_type => 'mp3' })->play,
    'Playing MP3.');
is (Player::Media::Audio->new({ audio_type => 'mp4' })->play,
    'Playing MP4.');
is (Player::Media::Audio->new({ audio_type => 'vlc' })->play,
    'Playing VLC.');

done_testing();
