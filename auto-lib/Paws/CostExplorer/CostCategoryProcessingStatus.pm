# Generated by default/object.tt
package Paws::CostExplorer::CostCategoryProcessingStatus;
  use Moose;
  has Component => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CostCategoryProcessingStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::CostCategoryProcessingStatus object:

  $service_obj->Method(Att1 => { Component => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::CostCategoryProcessingStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Component

=head1 DESCRIPTION

The list of processing statuses for Cost Management products for a
specific cost category.

=head1 ATTRIBUTES


=head2 Component => Str

The Cost Management product name of the applied status.


=head2 Status => Str

The process status for a specific cost category.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

