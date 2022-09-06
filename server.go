package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Merhaba Devops! Author Mustafa AKGİLLİ. TEST12345")
	})
	http.ListenAndServe(":8080", nil)
}
