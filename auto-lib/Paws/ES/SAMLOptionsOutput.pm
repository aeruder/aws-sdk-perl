# Generated by default/object.tt
package Paws::ES::SAMLOptionsOutput;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has Idp => (is => 'ro', isa => 'Paws::ES::SAMLIdp');
  has RolesKey => (is => 'ro', isa => 'Str');
  has SessionTimeoutMinutes => (is => 'ro', isa => 'Int');
  has SubjectKey => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::SAMLOptionsOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::SAMLOptionsOutput object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., SubjectKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::SAMLOptionsOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Describes the SAML application configured for the domain.

=head1 ATTRIBUTES


=head2 Enabled => Bool

True if SAML is enabled.


=head2 Idp => L<Paws::ES::SAMLIdp>

Describes the SAML Identity Provider's information.


=head2 RolesKey => Str

The key used for matching the SAML Roles attribute.


=head2 SessionTimeoutMinutes => Int

The duration, in minutes, after which a user session becomes inactive.


=head2 SubjectKey => Str

The key used for matching the SAML Subject attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

