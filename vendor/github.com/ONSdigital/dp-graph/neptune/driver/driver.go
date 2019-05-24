package driver

import (
	"context"

	gremgo "github.com/gedge/gremgo-neptune"
)

type NeptuneDriver struct {
	Pool *gremgo.Pool
}

func New(ctx context.Context, dbAddr string, errs chan error) (*NeptuneDriver, error) {
	pool := gremgo.NewPoolWithDialerCtx(ctx, dbAddr, errs)
	return &NeptuneDriver{
		Pool: pool,
	}, nil
}

func (n *NeptuneDriver) Close(ctx context.Context) error {
	n.Pool.Close()
	return nil
}
