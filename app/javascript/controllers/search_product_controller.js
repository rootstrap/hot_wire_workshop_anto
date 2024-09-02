import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.timer = null;
  }

  submit() {
    clearTimeout(this.timer);
    this.timer = setTimeout(() => {
      const formElement = this.element
      formElement.requestSubmit()
    }, 300);
  }
}
