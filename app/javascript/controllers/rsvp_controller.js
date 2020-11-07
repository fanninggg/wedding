import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ 'checkbox', "attendingInput" ]

  closeFlash(event) {
    event.currentTarget.parentNode.remove()
  }

  toggleAttendance() {
    this.checkboxTargets.forEach((checkbox) => {
      checkbox.checked = false
    })
    this.attendingInputTarget.value = event.currentTarget.value
    event.currentTarget.checked = true
  }
}
