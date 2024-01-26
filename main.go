package main

import (
	"os"

	pgop "github.com/brianmmdev-that-actions/private-go-package"
)

func main() {
	args := os.Args
	if len(args) > 1 {
		pgop.AnEvenMoreSecretHello(args[1])
		return
	}
}
