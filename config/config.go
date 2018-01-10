package config

import (
	"github.com/kelseyhightower/envconfig"
	"time"
)

// Config values for the application.
type Config struct {
	BindAddr                string        `envconfig:"BIND_ADDR"`
	KafkaAddr               []string      `envconfig:"KAFKA_ADDR"`
	ConsumerGroup           string        `envconfig:"CONSUMER_GROUP"`
	ConsumerTopic           string        `envconfig:"CONSUMER_TOPIC"`
	ProducerTopic           string        `envconfig:"PRODUCER_TOPIC"`
	ErrorProducerTopic      string        `envconfig:"ERROR_PRODUCER_TOPIC"`
	GracefulShutdownTimeout time.Duration `envconfig:"GRACEFUL_SHUTDOWN_TIMEOUT"`
}

// Get the configuration values from the environment or provide the defaults.
func Get() (*Config, error) {

	cfg := &Config{
		BindAddr:                ":22700",
		KafkaAddr:               []string{"localhost:9092"},
		ConsumerTopic:           "data-import-complete",
		ConsumerGroup:           "dp-hierarchy-builder",
		ProducerTopic:           "hierarchy-built",
		ErrorProducerTopic:      "import-error",
		GracefulShutdownTimeout: time.Second * 10,
	}

	return cfg, envconfig.Process("", cfg)
}
