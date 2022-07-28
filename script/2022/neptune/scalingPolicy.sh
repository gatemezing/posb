aws application-autoscaling put-scaling-policy \
  --policy-name opoceprodNepunePolicy \
  --policy-type TargetTrackingScaling \
  --resource-id cluster:db-opoceprod \
  --service-namespace neptune \
  --scalable-dimension neptune:cluster:ReadReplicaCount \
  --target-tracking-scaling-policy-configuration file:///home/ec2-user/policy.json
