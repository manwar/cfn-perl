# AWS::AmazonMQ::ConfigurationAssociation generated from spec 2.18.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::AmazonMQ::ConfigurationAssociation',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::AmazonMQ::ConfigurationAssociation->new( %$_ ) };

package Cfn::Resource::AWS::AmazonMQ::ConfigurationAssociation {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::AmazonMQ::ConfigurationAssociation', is => 'rw', coerce => 1);
  sub _build_attributes {
    [  ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::AmazonMQ::ConfigurationAssociation::ConfigurationId',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AmazonMQ::ConfigurationAssociation::ConfigurationId',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AmazonMQ::ConfigurationAssociation::ConfigurationIdValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AmazonMQ::ConfigurationAssociation::ConfigurationIdValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Id => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Revision => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::AmazonMQ::ConfigurationAssociation {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has Broker => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Configuration => (isa => 'Cfn::Resource::Properties::AWS::AmazonMQ::ConfigurationAssociation::ConfigurationId', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
