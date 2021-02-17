package PrototypePattern;

$PrototypePattern::VERSION = '0.01';

=head1 NAME

PrototypePattern - Demo Prototype design pattern.

=head1 SYNOPSIS

    use ShapeCache;

    my $cache = ShapeCache->new;

    print $cache->getShape(1)->type; # Circle
    print $cache->getShape(2)->type; # Square
    print $cache->getShape(3)->type; # Rectangle

=cut

1;
