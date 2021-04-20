// Flashcards


// For fetching

fetch("https://swapi.co/api/people/")
  .then(response => response.json()) // important to JSONit
  .then((data) => {
    console.log(data); // `data` is now a JS object
  });


// event.currentTarget
The rule of thumb is to always use event.currentTarget

//DOM event
const element = document.getElementById('an-id');
element.addEventListener(eventType, (event) => {
  // Do something with the event(callback)
});

// Adding an event listener on logo element
logo.addEventListener('click',() => {
	console.log("You clicked");
})