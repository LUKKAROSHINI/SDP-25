/**
 * @license
 * Copyright 2019 Google LLC. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */
let map;
const india = { lat: 20.5937, lng: 78.9629 };

const monuments = [
  { 
    name: 'Taj Mahal', 
    location: { lat: 27.1751, lng: 78.0421 },
    info: `<h3>Taj Mahal</h3>
           <p>The Taj Mahal is an Islamic ivory-white marble mausoleum on the right bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1631 by Mughal Emperor Shah Jahan (ruler. 1628–1658) to house the tomb of his favorite wife, Mumtaz Mahal.</p>`
  },
  { 
    name: 'Qutub Minar', 
    location: { lat: 28.5245, lng: 77.1855 },
    info: `<h3>Qutub Minar</h3>
           <p>The Qutub Minar is a minaret that forms part of the Qutub complex, a UNESCO World Heritage Site in the Mehrauli area of Delhi, India. It is the tallest brick minaret in the world, standing at 73 meters (240 feet).</p>`
  },
  { 
    name: 'India Gate', 
    location: { lat: 28.6129, lng: 77.2295 },
    info: `<h3>India Gate</h3>
           <p>The India Gate is a war memorial located in the heart of New Delhi, India. It was designed by Sir Edwin Lutyens and commemorates the soldiers of the British Indian Army who died in World War I.</p>`
  },
  { 
    name: 'Gateway of India', 
    location: { lat: 18.9220, lng: 72.8347 },
    info: `<h3>Gateway of India</h3>
           <p>The Gateway of India is an arch-monument located in Mumbai, India. It was built during the 20th century in honor of King George V and Queen Mary's visit to India in 1911.</p>`
  },
  { 
    name: 'Mysore Palace', 
    location: { lat: 12.3052, lng: 76.6552 },
    info: `<h3>Mysore Palace</h3>
           <p>The Mysore Palace is a historical palace situated in the city of Mysore, Karnataka, India. It is the official residence of the Wadiyar dynasty and serves as a cultural heritage site.</p>`
  },
  { 
    name: 'Hawa Mahal', 
    location: { lat: 26.9239, lng: 75.8267 },
    info: `<h3>Hawa Mahal</h3>
           <p>The Hawa Mahal, also known as the Palace of Winds, is a palace situated in Jaipur, India. It was built in 1799 by Maharaja Sawai Pratap Singh and features a unique façade with numerous small windows.</p>`
  },
  { 
    name: 'Red Fort', 
    location: { lat: 28.6562, lng: 77.2410 },
    info: `<h3>Red Fort</h3>
           <p>The Red Fort, also known as Lal Qila, is a historic fortification in the city of Delhi, India. It was the main residence of the Mughal emperors for about 200 years, until 1856.</p>`
  },
  { 
    name: 'Charminar', 
    location: { lat: 17.3616, lng: 78.4747 },
    info: `<h3>Charminar</h3>
           <p>The Charminar is a monument and mosque located in Hyderabad, India. It was built in 1591 by Muhammad Quli Qutb Shah and is a prominent symbol of Hyderabad.</p>`
  },
  { 
    name: 'Victoria Memorial', 
    location: { lat: 22.5448, lng: 88.3426 },
    info: `<h3>Victoria Memorial</h3>
           <p>The Victoria Memorial is an iconic monument located in Kolkata, India. It was built between 1906 and 1921 in honor of Queen Victoria and is now a museum and tourist destination.</p>`
  },
  { 
    name: 'Ajanta Caves', 
    location: { lat: 20.5522, lng: 75.7033 },
    info: `<h3>Ajanta Caves</h3>
           <p>The Ajanta Caves are a group of Buddhist rock-cut caves located in Maharashtra, India. They are famous for their intricate sculptures and frescoes, dating back to the 2nd century BCE.</p>`
  }
];

/**
 * Creates a control that recenters the map on India.
 */
function createCenterControl(map) {
  const controlButton = document.createElement("button");
  // Set CSS for the control.
  controlButton.classList.add('buttonStyle');

  controlButton.textContent = "Center Map on India";
  controlButton.title = "Click to recenter the map on India";
  controlButton.type = "button";
  // Setup the click event listeners: simply set the map to India.
  controlButton.addEventListener("click", () => {
    map.setCenter(india);
    map.setZoom(5);
  });
  return controlButton;
}

function initMap() {
  map = new google.maps.Map(document.getElementById("map"), {
    zoom: 5,
    center: india,
  });

  // Add markers for each monument
  monuments.forEach(monument => {
    const marker = new google.maps.Marker({
      position: monument.location,
      map: map,
      title: monument.name
    });

    const infowindow = new google.maps.InfoWindow({
      content: monument.info
    });

    marker.addListener('click', () => {
      infowindow.open(map, marker);
    });
  });

  // Create the DIV to hold the control.
  const centerControlDiv = document.createElement("div");
  // Create the control.
  const centerControl = createCenterControl(map);

  // Append the control to the DIV.
  centerControlDiv.appendChild(centerControl);
  map.controls[google.maps.ControlPosition.TOP_CENTER].push(centerControlDiv);
}

window.initMap = initMap;
