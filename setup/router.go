package setup

import (
	"github.com/gin-gonic/gin"
	"net/http"
	"time"
)

// Router returns a pre-configured gin.Engine with a /health endpoint
func Router() *gin.Engine {
	router := gin.Default()

	// Setup health checks
	router.GET("/health", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{
			"status": "OK",
			"timestamp": time.Now().Format(time.RFC3339Nano),
		})
	})

	return router
}
