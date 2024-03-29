package config_test

import (
	"testing"
	"time"

	"github.com/ONSdigital/dp-hierarchy-builder/config"
	. "github.com/smartystreets/goconvey/convey"
)

func TestSpec(t *testing.T) {

	cfg, err := config.Get()

	Convey("Given an environment with no environment variables set", t, func() {

		Convey("When the config values are retrieved", func() {

			Convey("There should be no error returned", func() {
				So(err, ShouldBeNil)
			})

			Convey("The values should be set to the expected defaults", func() {
				So(cfg.BindAddr, ShouldEqual, ":22700")
				So(cfg.KafkaAddr, ShouldResemble, []string{"localhost:9092", "localhost:9093", "localhost:9094"})
				So(cfg.KafkaVersion, ShouldEqual, "1.0.2")
				So(cfg.KafkaOffsetOldest, ShouldBeTrue)
				So(cfg.KafkaSecProtocol, ShouldEqual, "")
				So(cfg.ConsumerTopic, ShouldEqual, "data-import-complete")
				So(cfg.ConsumerGroup, ShouldEqual, "dp-hierarchy-builder")
				So(cfg.ProducerTopic, ShouldEqual, "hierarchy-built")
				So(cfg.GracefulShutdownTimeout, ShouldEqual, time.Second*10)
				So(cfg.HealthCheckInterval, ShouldEqual, time.Second*30)
				So(cfg.HealthCheckCriticalTimeout, ShouldEqual, time.Second*90)
			})
		})
	})
}
