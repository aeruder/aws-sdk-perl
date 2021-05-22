
package Paws::CodeArtifact::AssociateExternalConnectionResult;
  use Moose;
  has Repository => (is => 'ro', isa => 'Paws::CodeArtifact::RepositoryDescription', traits => ['NameInRequest'], request_name => 'repository');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::AssociateExternalConnectionResult

=head1 ATTRIBUTES


=head2 Repository => L<Paws::CodeArtifact::RepositoryDescription>

Information about the connected repository after processing the
request.


=head2 _request_id => Str


=cut

