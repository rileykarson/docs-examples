resource "google_pubsub_topic" "example" {
  name = "example-topic-${local.name_suffix}"
}

resource "google_pubsub_subscription" "example" {
  name  = "example-subscription-${local.name_suffix}"
  topic = "${google_pubsub_topic.example.name}"

  labels = {
    foo = "bar"
  }

  ack_deadline_seconds = 20
}
