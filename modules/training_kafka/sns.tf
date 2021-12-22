resource "aws_sns_topic" "kafka_alarm_notification" {
  name = "kafka-alarm-notification-topic"
}

# resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
#   topic_arn = "${aws_sns_topic.kafka_alarm_notification.arn}"
#   protocol  = "email"
#   endpoint  = "sea-dedp-2021@thoughtworks.com"
# }

