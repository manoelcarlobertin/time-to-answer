// Configure your import map in config/importmap.rb

import "@hotwired/turbo-rails"
import "controllers"
import * as bootstrap from "bootstrap"
import "../stylesheets/application"
import "../javascript/admin-backoffice"

// Bootstrap initialization
document.addEventListener("turbo:load", () => {
  // Initialize Bootstrap components
  const initializeBootstrapComponents = () => {
    // Initialize tooltips
    document.querySelectorAll('[data-bs-toggle="tooltip"]').forEach(element => {
      new bootstrap.Tooltip(element)
    })

    // Initialize popovers
    document.querySelectorAll('[data-bs-toggle="popover"]').forEach(element => {
      new bootstrap.Popover(element)
    })
  }

  initializeBootstrapComponents()
})
