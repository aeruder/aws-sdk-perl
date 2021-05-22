
package Paws::Glue::PutSchemaVersionMetadata;
  use Moose;
  has MetadataKeyValue => (is => 'ro', isa => 'Paws::Glue::MetadataKeyValuePair', required => 1);
  has SchemaId => (is => 'ro', isa => 'Paws::Glue::SchemaId');
  has SchemaVersionId => (is => 'ro', isa => 'Str');
  has SchemaVersionNumber => (is => 'ro', isa => 'Paws::Glue::SchemaVersionNumber');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSchemaVersionMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::PutSchemaVersionMetadataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::PutSchemaVersionMetadata - Arguments for method PutSchemaVersionMetadata on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSchemaVersionMetadata on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method PutSchemaVersionMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSchemaVersionMetadata.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $PutSchemaVersionMetadataResponse = $glue->PutSchemaVersionMetadata(
      MetadataKeyValue => {
        MetadataKey   => 'MyMetadataKeyString',     # min: 1, max: 128; OPTIONAL
        MetadataValue => 'MyMetadataValueString',   # min: 1, max: 256; OPTIONAL
      },
      SchemaId => {
        RegistryName =>
          'MySchemaRegistryNameString',             # min: 1, max: 255; OPTIONAL
        SchemaArn => 'MyGlueResourceArn',    # min: 1, max: 10240; OPTIONAL
        SchemaName => 'MySchemaRegistryNameString', # min: 1, max: 255; OPTIONAL
      },    # OPTIONAL
      SchemaVersionId     => 'MySchemaVersionIdString',    # OPTIONAL
      SchemaVersionNumber => {
        LatestVersion => 1,    # OPTIONAL
        VersionNumber => 1,    # min: 1, max: 100000; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $LatestVersion   = $PutSchemaVersionMetadataResponse->LatestVersion;
    my $MetadataKey     = $PutSchemaVersionMetadataResponse->MetadataKey;
    my $MetadataValue   = $PutSchemaVersionMetadataResponse->MetadataValue;
    my $RegistryName    = $PutSchemaVersionMetadataResponse->RegistryName;
    my $SchemaArn       = $PutSchemaVersionMetadataResponse->SchemaArn;
    my $SchemaName      = $PutSchemaVersionMetadataResponse->SchemaName;
    my $SchemaVersionId = $PutSchemaVersionMetadataResponse->SchemaVersionId;
    my $VersionNumber   = $PutSchemaVersionMetadataResponse->VersionNumber;

    # Returns a L<Paws::Glue::PutSchemaVersionMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/PutSchemaVersionMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetadataKeyValue => L<Paws::Glue::MetadataKeyValuePair>

The metadata key's corresponding value.



=head2 SchemaId => L<Paws::Glue::SchemaId>

The unique ID for the schema.



=head2 SchemaVersionId => Str

The unique version ID of the schema version.



=head2 SchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>

The version number of the schema.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSchemaVersionMetadata in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

