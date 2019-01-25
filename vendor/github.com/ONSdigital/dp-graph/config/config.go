package config

import (
	"github.com/ONSdigital/dp-graph/graph/driver"
	"github.com/ONSdigital/dp-graph/mock"
	"github.com/ONSdigital/dp-graph/neo4j"
	"github.com/kelseyhightower/envconfig"
)

type Configuration struct {
	DriverChoice    string `envconfig:"GRAPH_DRIVER"`
	DatabaseAddress string `envconfig:"GRAPH_ADDR"`
	PoolSize        int    `envconfig:"GRAPH_POOL_SIZE"`
	MaxRetries      int    `envconfig:"MAX_RETRIES"`
	QueryTimeout    int    `envconfig:"QUERY_TIMEOUT"`

	Driver driver.Driver
}

var cfg *Configuration

// Get configures the application and returns the configuration
func Get() (*Configuration, error) {
	if cfg != nil {
		return cfg, nil
	}

	cfg = &Configuration{
		DriverChoice: "",
	}

	err := envconfig.Process("", cfg)

	var d driver.Driver

	switch cfg.DriverChoice {
	case "neo4j":
		d, err = neo4j.New(cfg.DatabaseAddress, cfg.PoolSize, cfg.QueryTimeout, cfg.MaxRetries)
		if err != nil {
			return nil, err
		}
		//
		// case "gremgo":
		// 	d = gremgo.Driver{}
	default:
		d = &mock.Mock{}
	}

	cfg.Driver = d

	return cfg, nil
}
