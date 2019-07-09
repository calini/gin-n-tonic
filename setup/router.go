package setup

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

// Router returns a pre-configured gin.Engine with a /health endpoint
func Router() *gin.Engine {
	router := gin.Default()

	// Setup health checks
	router.GET("/health", func(c *gin.Context) {
		c.String(http.StatusOK, "OK")
	})

	return router
}
