import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "dropdown" ]

  toggleNavbar(event) {
  	this.dropdownTarget.classList.toggle('dropdown-open');
  	event.currentTarget.classList.toggle('is-active')
  }
}
