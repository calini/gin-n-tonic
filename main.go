package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
	log "github.com/sirupsen/logrus"
	"go.ilie.io/templates/plate/setup"
)

const (
	version = "v1"
	addr    = ":8080"
)

func main() {
	r := setup.Router()

	api := r.Group("/api/" + version)
	{
		api.GET("/ping", func(c *gin.Context) {
			c.JSON(http.StatusOK, gin.H{
				"message": "pong",
			})
		})
	}

	if err := setup.RunDefault(r, addr); err != nil {
		log.Fatal(err)
	}
}
