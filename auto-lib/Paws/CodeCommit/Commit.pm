package Paws::CodeCommit::Commit;
  use Moose;
  has AdditionalData => (is => 'ro', isa => 'Str', xmlname => 'additionalData', request_name => 'additionalData', traits => ['Unwrapped','NameInRequest']);
  has Author => (is => 'ro', isa => 'Paws::CodeCommit::UserInfo', xmlname => 'author', request_name => 'author', traits => ['Unwrapped','NameInRequest']);
  has Committer => (is => 'ro', isa => 'Paws::CodeCommit::UserInfo', xmlname => 'committer', request_name => 'committer', traits => ['Unwrapped','NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', xmlname => 'message', request_name => 'message', traits => ['Unwrapped','NameInRequest']);
  has Parents => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'parents', request_name => 'parents', traits => ['Unwrapped','NameInRequest']);
  has TreeId => (is => 'ro', isa => 'Str', xmlname => 'treeId', request_name => 'treeId', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::Commit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::Commit object:

  $service_obj->Method(Att1 => { AdditionalData => $value, ..., TreeId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::Commit object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalData

=head1 DESCRIPTION

Returns information about a specific commit.

=head1 ATTRIBUTES


=head2 AdditionalData => Str

  Any additional data associated with the specified commit.


=head2 Author => L<Paws::CodeCommit::UserInfo>

  Information about the author of the specified commit.


=head2 Committer => L<Paws::CodeCommit::UserInfo>

  Information about the person who committed the specified commit, also
known as the committer. For more information about the difference
between an author and a committer in Git, see Viewing the Commit
History in Pro Git by Scott Chacon and Ben Straub.


=head2 Message => Str

  The message associated with the specified commit.


=head2 Parents => ArrayRef[Str|Undef]

  The parent list for the specified commit.


=head2 TreeId => Str

  Tree information for the specified commit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

