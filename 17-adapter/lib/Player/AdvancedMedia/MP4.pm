package Player::AdvancedMedia::MP4;

# Implement interface (role) Player::AdvancedMedia.

use Moo;
with 'Player::AdvancedMedia';

sub playVLC {
}

sub playMP4 {
    return "Playing MP4.";
}

1;
