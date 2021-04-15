package Player::AdvancedMedia;

# Define interface (role).

use Moo::Role;

requires qw(playVLC playMP4);

1;
