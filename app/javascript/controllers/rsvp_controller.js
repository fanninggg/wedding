import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ 'checkbox' ]

  closeFlash(event) {
    event.currentTarget.parentNode.remove()
  }

  toggleAttendance() {
    this.checkboxTargets.forEach((checkbox) => {
      checkbox.checked = false
    })
    event.currentTarget.checked = true
  }
}
