# AWS::WAF::ByteMatchSet generated from spec 1.11.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::WAF::ByteMatchSet',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::WAF::ByteMatchSet->new( %$_ ) };

package Cfn::Resource::AWS::WAF::ByteMatchSet {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::WAF::ByteMatchSet', is => 'rw', coerce => 1);
  sub _build_attributes {
    [  ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::WAF::ByteMatchSet::FieldToMatch',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAF::ByteMatchSet::FieldToMatch',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAF::ByteMatchSet::FieldToMatchValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAF::ByteMatchSet::FieldToMatchValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Data => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Type => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::WAF::ByteMatchSet::ByteMatchTuple',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::WAF::ByteMatchSet::ByteMatchTuple',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       die 'Only accepts functions'; 
     }
   },
  from 'ArrayRef',
   via {
     Cfn::Value::Array->new(Value => [
       map { 
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::WAF::ByteMatchSet::ByteMatchTuple')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::WAF::ByteMatchSet::ByteMatchTuple',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAF::ByteMatchSet::ByteMatchTuple',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAF::ByteMatchSet::ByteMatchTupleValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAF::ByteMatchSet::ByteMatchTupleValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has FieldToMatch => (isa => 'Cfn::Resource::Properties::AWS::WAF::ByteMatchSet::FieldToMatch', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PositionalConstraint => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TargetString => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TargetStringBase64 => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TextTransformation => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::WAF::ByteMatchSet {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has ByteMatchTuples => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAF::ByteMatchSet::ByteMatchTuple', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}

1;
