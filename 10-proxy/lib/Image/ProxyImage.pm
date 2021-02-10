package Image::ProxyImage;

use Image::RealImage;
use Moo;
with 'Image';

has 'image'    => (is => 'rw');
has 'filename' => (is => 'rw', required => 1);

sub display {
    my ($self) = @_;

    if (!defined $self->{image}) {
        $self->{image} =
            Image::RealImage->new({ filename => $self->filename });
    }

    $self->image->display;
}

1;
