{
  "Type": "AWS::S3::Bucket",
  "Properties": {
    "ReplicationConfiguration": {
      "Role": {
        "Fn::GetAtt": [
          "WorkItemBucketBackupRole",
          "Arn"
        ]
      },
      "Rules": [{
        "Destination": {
          "Bucket": {
            "Fn::Join": [ "", [
              "arn:aws:s3:::", {
                "Fn::Join": [ "-", [
                  { "Ref": "AWS::Region" },
                  { "Ref": "AWS::StackName" },
                  "replicationbucket"
                ]]
              }
            ]]
          },
          "StorageClass": "STANDARD"
        },
        "Id": "Backup",
        "Prefix": "",
        "Status": "Enabled"
      }]
    },
    "VersioningConfiguration": {
      "Status": "Enabled"
    }
  }
}
