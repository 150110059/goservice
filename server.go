package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello Ziraat Team from @Mustafa AKGİLLİ3456")
	})
	http.ListenAndServe(":8080", nil)
}
