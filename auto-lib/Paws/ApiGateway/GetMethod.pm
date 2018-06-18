
package Paws::ApiGateway::GetMethod;
  use Moose;
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'http_method', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource_id', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMethod');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Method');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetMethod - Arguments for method GetMethod on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMethod on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetMethod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMethod.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Method = $apigateway->GetMethod(
      HttpMethod => 'MyString',
      ResourceId => 'MyString',
      RestApiId  => 'MyString',

    );

    # Results:
    my $ApiKeyRequired      = $Method->ApiKeyRequired;
    my $AuthorizationScopes = $Method->AuthorizationScopes;
    my $AuthorizationType   = $Method->AuthorizationType;
    my $AuthorizerId        = $Method->AuthorizerId;
    my $HttpMethod          = $Method->HttpMethod;
    my $MethodIntegration   = $Method->MethodIntegration;
    my $MethodResponses     = $Method->MethodResponses;
    my $OperationName       = $Method->OperationName;
    my $RequestModels       = $Method->RequestModels;
    my $RequestParameters   = $Method->RequestParameters;
    my $RequestValidatorId  = $Method->RequestValidatorId;

    # Returns a L<Paws::ApiGateway::Method> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/apigateway/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpMethod => Str

[Required] Specifies the method request's HTTP method type.



=head2 B<REQUIRED> ResourceId => Str

[Required] The Resource identifier for the Method resource.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMethod in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

