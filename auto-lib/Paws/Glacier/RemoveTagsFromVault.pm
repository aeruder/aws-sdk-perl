
package Paws::Glacier::RemoveTagsFromVault;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId' , required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromVault');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/tags?operation=remove');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::RemoveTagsFromVault - Arguments for method RemoveTagsFromVault on Paws::Glacier

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTagsFromVault on the 
Amazon Glacier service. Use the attributes of this class
as arguments to method RemoveTagsFromVault.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTagsFromVault.

As an example:

  $service_obj->RemoveTagsFromVault(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single aposC<->apos (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens (apos-apos) in the
ID.



=head2 TagKeys => ArrayRef[Str|Undef]

A list of tag keys. Each corresponding tag is removed from the vault.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTagsFromVault in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

