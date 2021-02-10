package Image::RealImage;

use Moo;
with 'Image';

has 'filename' => (is =>'rw', required => 1);

sub BUILD {
    my ($self) = @_;

    _loadFromDisk($self->filename);
}

sub display {
    my ($self) = @_;

    my $filename = $self->filename;
    print "Displaying $filename ...";
}

# private method
sub _loadFromDisk {
    my ($filename) = @_;

    print "Loading $filename ...";
}

1;
