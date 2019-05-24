package driver

const (
	serviceName = "neptune"
	pingStmt    = "g.V().limit(1)"
)

// Healthcheck calls neptune to check its health status
func (n *NeptuneDriver) Healthcheck() (s string, err error) {
	if _, err = n.Pool.Get(pingStmt); err != nil {
		return serviceName, err
	}
	return serviceName, nil
}
