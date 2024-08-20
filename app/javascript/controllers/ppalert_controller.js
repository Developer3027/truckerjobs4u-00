import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="ppalert"
export default class extends Controller {
  static targets = ["ppalert"]
  toggle(e) {
    e.preventDefault()
    this.ppalertTarget.classList.toggle("hidden")
  }
}
