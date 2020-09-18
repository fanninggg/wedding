import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [  ]

  closeFlash(event) {
    event.currentTarget.parentNode.remove()
  }
}
