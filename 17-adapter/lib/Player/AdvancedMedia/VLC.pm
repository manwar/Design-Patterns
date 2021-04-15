package Player::AdvancedMedia::VLC;

# Implement interface (role) Player::AdvancedMedia.

use Moo;
with 'Player::AdvancedMedia';

sub playVLC {
    return "Playing VLC.";
}

sub playMP4 {
}

1;
