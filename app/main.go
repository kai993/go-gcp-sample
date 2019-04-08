package main

import (
	"github.com/kai993/go-gcp-sample/gae"
	"google.golang.org/appengine"
	"net/http"
)

func main() {
	http.HandleFunc("/", gae.SayHello)
	appengine.Main()
}
