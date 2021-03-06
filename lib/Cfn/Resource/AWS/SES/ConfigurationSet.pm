# AWS::SES::ConfigurationSet generated from spec 2.0.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::SES::ConfigurationSet',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::SES::ConfigurationSet->new( %$_ ) };

package Cfn::Resource::AWS::SES::ConfigurationSet {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::SES::ConfigurationSet', is => 'rw', coerce => 1);
  sub _build_attributes {
    [  ]
  }
}



package Cfn::Resource::Properties::AWS::SES::ConfigurationSet {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}

1;
