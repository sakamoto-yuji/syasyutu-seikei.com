import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

//= require jquery
//= require rails-ujs 
//= require turbolinks 
//=require_tree .
