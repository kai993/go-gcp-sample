package main

import (
	"net/http"

	"github.com/gorilla/mux"
	"github.com/kai993/go-gcp-sample/gae"
)

func init() {
	r := mux.NewRouter()
	r.HandleFunc("/", gae.SayHello)
	http.Handle("/", r)
}
