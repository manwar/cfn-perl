use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::EC2::VPCPeeringConnection',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::EC2::VPCPeeringConnection->new( %$_ ) };

package Cfn::Resource::AWS::EC2::VPCPeeringConnection {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::EC2::VPCPeeringConnection', is => 'rw', coerce => 1, required => 1);
}

package Cfn::Resource::Properties::AWS::EC2::VPCPeeringConnection  {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  has PeerVpcId => (isa => 'Cfn::Value', is => 'rw', coerce => 1);
  has Tags => (isa => 'Cfn::Value::Array|Cfn::Value::Function', is => 'rw', coerce => 1);
  has VpcId => (isa => 'Cfn::Value', is => 'rw', coerce => 1, required => 1);
}
1;