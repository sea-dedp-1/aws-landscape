resource "aws_cloudwatch_metric_alarm" "kafka_disk_utilisation_alarm" {
  alarm_name          = "kafka-disk-utilisation-alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "DiskSpaceUtilization"
  namespace           = "System/Linux"
  period              = "300"
  statistic           = "Average"
  threshold           = "80"
  alarm_actions       = ["${aws_sns_topic.kafka_alarm_notification.arn}"]
  alarm_description   = "This metric monitors disk space utilization for Kafka"
  datapoints_to_alarm = "1"
  treat_missing_data  = "missing"

  dimensions = {
    Filesystem = "/dev/xvda1"
    InstanceId = "i-00e0b93a2865d5c5d"
    MountPath = "/"
  }
}
