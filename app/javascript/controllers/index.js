import { application } from "./application"

// Import app/components/index.js
import "../../components"

import controllers from "./**/*_controller.js"
controllers.forEach((controller) => {
  application.register(controller.name, controller.module.default)
})
