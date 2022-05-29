// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "trix"
import "@rails/actiontext"

window.initMap = () =>{
  const event = new Event("MapLoaded")
  event.initEvent("map-loaded", true, true);
  window.dispatchEvent(event)
}