package Player::Media::Audio;

# Implement interface (role) Player::Media.

use Player::Media::Adapter;

use Moo;

has 'audio_type' => (is => 'ro');
has 'audio'      => (is => 'rw');

with 'Player::Media';

sub BUILD {
    my ($self) = @_;

    my $audio_type = $self->audio_type;
    if ($audio_type =~ /VLC|MP4/i) {
        $self->{audio} =
            Player::Media::Adapter->new({ audio_type => $audio_type });
    }
}

sub play {
    my ($self) = @_;

    my $audio_type = $self->audio_type;
    if ($audio_type =~ /VLC|MP4/i) {
        return $self->audio->play;
    }
    elsif ($audio_type =~ /MP3/i) {
        return 'Playing MP3.';
    }
}

1;
