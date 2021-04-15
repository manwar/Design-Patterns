package AdapterPattern;

$AdapterPattern::VERSION = '0.01';

=head1 NAME

AdapterPattern - Demo Adapter design pattern.

=head1 SYNOPSIS

    use Player::Media::Audio;

    print Player::Media::Audio->new{{ audio_type => 'mp3' })->play;
    print Player::Media::Audio->new({ audio_type => 'mp4' })->play;
    print Player::Media::Audio->new({ audio_type => 'vlc' })->play;

=cut

1;
