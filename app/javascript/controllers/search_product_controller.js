import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form"]

  connect() {
    this.timer = null;
  }

  submit() {
    clearTimeout(this.timer);
    this.timer = setTimeout(() => {
      this.formTarget.requestSubmit();
    }, 300);
  }

  get formTarget() {
    return this.targets.find("form");
  }
}
