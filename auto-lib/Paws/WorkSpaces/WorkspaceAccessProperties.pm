package Paws::WorkSpaces::WorkspaceAccessProperties;
  use Moose;
  has DeviceTypeAndroid => (is => 'ro', isa => 'Str');
  has DeviceTypeChromeOs => (is => 'ro', isa => 'Str');
  has DeviceTypeIos => (is => 'ro', isa => 'Str');
  has DeviceTypeOsx => (is => 'ro', isa => 'Str');
  has DeviceTypeWeb => (is => 'ro', isa => 'Str');
  has DeviceTypeWindows => (is => 'ro', isa => 'Str');
  has DeviceTypeZeroClient => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::WorkspaceAccessProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::WorkspaceAccessProperties object:

  $service_obj->Method(Att1 => { DeviceTypeAndroid => $value, ..., DeviceTypeZeroClient => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::WorkspaceAccessProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceTypeAndroid

=head1 DESCRIPTION

The device types and operating systems that can be used to access a
WorkSpace. For more information, see Amazon WorkSpaces Client Network
Requirements
(https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-network-requirements.html).

=head1 ATTRIBUTES


=head2 DeviceTypeAndroid => Str

  Indicates whether users can use Android devices to access their
WorkSpaces.


=head2 DeviceTypeChromeOs => Str

  Indicates whether users can use Chromebooks to access their WorkSpaces.


=head2 DeviceTypeIos => Str

  Indicates whether users can use iOS devices to access their WorkSpaces.


=head2 DeviceTypeOsx => Str

  Indicates whether users can use macOS clients to access their
WorkSpaces. To restrict WorkSpaces access to trusted devices (also
known as managed devices) with valid certificates, specify a value of
C<TRUST>. For more information, see Restrict WorkSpaces Access to
Trusted Devices
(https://docs.aws.amazon.com/workspaces/latest/adminguide/trusted-devices.html).


=head2 DeviceTypeWeb => Str

  Indicates whether users can access their WorkSpaces through a web
browser.


=head2 DeviceTypeWindows => Str

  Indicates whether users can use Windows clients to access their
WorkSpaces. To restrict WorkSpaces access to trusted devices (also
known as managed devices) with valid certificates, specify a value of
C<TRUST>. For more information, see Restrict WorkSpaces Access to
Trusted Devices
(https://docs.aws.amazon.com/workspaces/latest/adminguide/trusted-devices.html).


=head2 DeviceTypeZeroClient => Str

  Indicates whether users can use zero client devices to access their
WorkSpaces.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

