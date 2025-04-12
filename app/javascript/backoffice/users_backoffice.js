// Import dependencies
import $ from 'jquery'
import 'bootstrap'
import '@fortawesome/fontawesome-free/js/all'

// Import styles
import '../stylesheets/users_backoffice'

// Document ready handler
$(document).ready(function() {
  // Initialize tooltips
  $('[data-toggle="tooltip"]').tooltip()

  // Initialize popovers
  $('[data-toggle="popover"]').popover()

  // Handle sidebar toggle
  $('.sidebar-toggle').on('click', function(e) {
    e.preventDefault()
    $('body').toggleClass('sidebar-collapsed')
  })

  // Handle dropdown menus
  $('.dropdown-toggle').dropdown()

  // Handle form validations
  $('form').on('submit', function(e) {
    if (!this.checkValidity()) {
      e.preventDefault()
      e.stopPropagation()
    }
    $(this).addClass('was-validated')
  })
})
