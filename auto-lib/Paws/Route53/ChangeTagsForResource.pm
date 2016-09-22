
package Paws::Route53::ChangeTagsForResource;
  use Moose;
  has AddTags => (is => 'ro', isa => 'ArrayRef[Paws::Route53::Tag]');
  has RemoveTagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceId' , required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeTagsForResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/tags/{ResourceType}/{ResourceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ChangeTagsForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ChangeTagsForResource - Arguments for method ChangeTagsForResource on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method ChangeTagsForResource on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method ChangeTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ChangeTagsForResource.

As an example:

  $service_obj->ChangeTagsForResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AddTags => ArrayRef[L<Paws::Route53::Tag>]

A complex type that contains a list of the tags that you want to add to
the specified health check or hosted zone and/or the tags for which you
want to edit the C<Value> element.

You can add a maximum of 10 tags to a health check or a hosted zone.



=head2 RemoveTagKeys => ArrayRef[Str|Undef]

A complex type that contains a list of the tags that you want to delete
from the specified health check or hosted zone. You can specify up to
10 keys.



=head2 B<REQUIRED> ResourceId => Str

The ID of the resource for which you want to add, change, or delete
tags.



=head2 B<REQUIRED> ResourceType => Str

The type of the resource.

=over

=item *

The resource type for health checks is C<healthcheck>.

=item *

The resource type for hosted zones is C<hostedzone>.

=back


Valid values are: C<"healthcheck">, C<"hostedzone">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ChangeTagsForResource in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

