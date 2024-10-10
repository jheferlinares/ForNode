const { Pool } = require("pg")
require("dotenv").config()

let pool

if (process.env.NODE_ENV === "development") {
  pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: {
      rejectUnauthorized: false, // SSL para desarrollo
    },
  })

  // Added for troubleshooting queries during development
  module.exports = {
    async query(text, params) {
      try {
        const res = await pool.query(text, params)
        console.log("Executed query", { text })
        return res
      } catch (error) {
        console.error("Error in query", { text })
        throw error
      }
    },
  }
} else {
  // Configuración para producción
  pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: {
      rejectUnauthorized: false, // SSL necesario para Render
    },
  })

  module.exports = pool
}
