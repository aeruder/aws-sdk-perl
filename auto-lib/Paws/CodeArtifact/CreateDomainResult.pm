
package Paws::CodeArtifact::CreateDomainResult;
  use Moose;
  has Domain => (is => 'ro', isa => 'Paws::CodeArtifact::DomainDescription', traits => ['NameInRequest'], request_name => 'domain');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::CreateDomainResult

=head1 ATTRIBUTES


=head2 Domain => L<Paws::CodeArtifact::DomainDescription>

Contains information about the created domain after processing the
request.


=head2 _request_id => Str


=cut

