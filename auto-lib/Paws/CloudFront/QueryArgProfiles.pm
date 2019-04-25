package Paws::CloudFront::QueryArgProfiles;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::QueryArgProfile]', request_name => 'QueryArgProfile', traits => ['NameInRequest']);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::QueryArgProfiles

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::QueryArgProfiles object:

  $service_obj->Method(Att1 => { Items => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::QueryArgProfiles object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

Query argument-profile mapping for field-level encryption.

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CloudFront::QueryArgProfile>]

  Number of items for query argument-profile mapping for field-level
encryption.


=head2 B<REQUIRED> Quantity => Int

  Number of profiles for query argument-profile mapping for field-level
encryption.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

