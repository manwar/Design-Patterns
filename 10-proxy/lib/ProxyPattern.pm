package ProxyPattern;

$ProxyPattern::VERSION = '0.01';

=head1 NAME

ProxyPattern - Demo Proxy design pattern.

=head1 SYNOPSIS

    use Image::ProxyImage;

    my $image = Image::ProxyImage->new({ filename => 'dummy.png' });

    # Loading image ...
    $image->display;

    # Displaying and not loading this time.
    $image->display;

=cut

1;
