# Generated by default/object.tt
package Paws::MediaTailor::HttpConfiguration;
  use Moose;
  has BaseUrl => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::HttpConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaTailor::HttpConfiguration object:

  $service_obj->Method(Att1 => { BaseUrl => $value, ..., BaseUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaTailor::HttpConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BaseUrl

=head1 DESCRIPTION

The HTTP configuration for the source location.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaseUrl => Str

The base URL for the source location host server. This string must
include the protocol, such as B<https://>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

