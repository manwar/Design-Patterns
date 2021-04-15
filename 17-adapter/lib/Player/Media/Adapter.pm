package Player::Media::Adapter;

# Implement interface (role) Player::Media.

use Player::AdvancedMedia::VLC;
use Player::AdvancedMedia::MP4;

use Moo;

has 'audio_type'   => (is => 'ro');
has 'music_player' => (is => 'rw');

with 'Player::Media';

sub BUILD {
    my ($self) = @_;

    if (uc($self->audio_type) eq 'VLC') {
        $self->{music_player} = Player::AdvancedMedia::VLC->new;
    }
    elsif (uc($self->audio_type) eq 'MP4') {
        $self->{music_player} = Player::AdvancedMedia::MP4->new;
    }
    else {
        die 'ERROR: Invalid audio type.';
    }
}

sub play {
    my ($self) = @_;

    if (uc($self->audio_type) eq 'VLC') {
        $self->music_player->playVLC;
    }
    elsif (uc($self->audio_type) eq 'MP4') {
        $self->music_player->playMP4;
    }
}

1;
