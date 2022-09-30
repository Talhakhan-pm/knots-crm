import {Controller} from '@hotwired/stimulus'

export default class extends Controller {
  static targets = [
    'input'
  ]
  connect(){
    console.log("Address Controller is connected  ")
  }

  initGoogle(){
    console.log("Google maps is initialized and the address controller is ready")
    console.log(google)
    this.autocomplete = new google.maps.places.Autocomplete(this.inputTarget, {
      componentRestrictions: { country: ["us"] },
      fields: ["address_components", "geometry"],
      types: ["address"],
    })
    this.autocomplete.addListener('place_changed', this.placeSelected.bind(this))
  }
  
  placeSelected(){
    const place = this.autocomplete.getPlace();
    console.log(place); 
    
  }
}