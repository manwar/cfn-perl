# AWS::ApiGateway::DomainName generated from spec 1.13.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::ApiGateway::DomainName',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::ApiGateway::DomainName->new( %$_ ) };

package Cfn::Resource::AWS::ApiGateway::DomainName {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::ApiGateway::DomainName', is => 'rw', coerce => 1);
  sub _build_attributes {
    [ 'DistributionDomainName','DistributionHostedZoneId','RegionalDomainName','RegionalHostedZoneId' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::ApiGateway::DomainName::EndpointConfiguration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::ApiGateway::DomainName::EndpointConfiguration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::ApiGateway::DomainName::EndpointConfigurationValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::ApiGateway::DomainName::EndpointConfigurationValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Types => (isa => 'Cfn::Value::Array|Cfn::Value::Function', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::ApiGateway::DomainName {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has CertificateArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DomainName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has EndpointConfiguration => (isa => 'Cfn::Resource::Properties::AWS::ApiGateway::DomainName::EndpointConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RegionalCertificateArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
