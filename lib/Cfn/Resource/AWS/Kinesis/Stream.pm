# AWS::Kinesis::Stream generated from spec 1.13.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::Kinesis::Stream',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::Kinesis::Stream->new( %$_ ) };

package Cfn::Resource::AWS::Kinesis::Stream {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::Kinesis::Stream', is => 'rw', coerce => 1);
  sub _build_attributes {
    [ 'Arn' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::Kinesis::Stream::StreamEncryption',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::Kinesis::Stream::StreamEncryption',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::Kinesis::Stream::StreamEncryptionValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::Kinesis::Stream::StreamEncryptionValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has EncryptionType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has KeyId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::Kinesis::Stream {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has RetentionPeriodHours => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ShardCount => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has StreamEncryption => (isa => 'Cfn::Resource::Properties::AWS::Kinesis::Stream::StreamEncryption', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Tags => (isa => 'ArrayOfCfn::Resource::Properties::TagType', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
