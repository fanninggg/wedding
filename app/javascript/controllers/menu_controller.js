import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [  ]

  toggle(event) {
    event.currentTarget.classList.toggle('is-active')
  }
}
