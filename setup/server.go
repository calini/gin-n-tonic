package setup

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

// RunCustom runs the gin.Engine with a custom brewed server
func RunCustom(r *gin.Engine, addr string) error {
	s := http.Server{
		Addr:    addr,
		Handler: r,
		// Extra configuration
	}
	return s.ListenAndServe()
}

// RunDefault runs the gin.Engine with it's default server
func RunDefault(r *gin.Engine, addr ...string) error {
	return r.Run(addr...)
}
