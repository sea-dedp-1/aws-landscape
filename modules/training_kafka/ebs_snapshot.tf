resource "aws_ebs_snapshot" "kafka_ebs_snapshot" {
  volume_id = "${aws_instance.kafka.root_block_device.0.volume_id}"

  tags = {
    Name = "Kafka EBS ${timestamp()}"
  }

  lifecycle {
    ignore_changes = "all"
  }
}
