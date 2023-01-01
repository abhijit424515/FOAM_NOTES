# Javascript and DOM

- The commands are chainable.

## General
- `document` returns the whole HTML document
- `document.firstElementChild` returns the first child inside the document
- `document.lastElementChild` returns the last child inside the document

## Query Selector
- `document.querySelector("h1").style.color = "purple"` selects only the first element
- `document.querySelector(".btn").style.color = "purple"` selects only the first element
- `document.querySelector("#scrollBox").style.color = "purple"`
- `document.getElementsByTagName("h1")[0].style.color = "purple"`
- `document.getElementsByClassName("btn")[0].style.color = "purple"`
- `document.getElementById("scrollBox").style.color = "purple"`
- `document.querySelector("li a").style.fontSize = "2rem"` is a hierarchical selector
- `document.querySelectorAll("li .item").style.color = "purple"` selects all matching elements
- `document.querySelector("h1").innerHTML = "<span>Hi</span>"` changes the inner content of the first h1 tag
- `document.querySelector("h1").textContent = "Hi"` changes the text of the first h1 tag
- `document.querySelector("h1").attributes` returns a dictionary of all attributes of the selected tag
- `document.querySelector("h1").getAttribute("href")` returns the value of the selected attribute
- `document.querySelector("h1").setAttribute("href","https://www.bing.com")` changes the value of the selected attribute

## Class List
- `document.querySelectorAll("li .item").classList` returns the list of all classes
- `document.querySelectorAll("li .item").classList.addClass("inv")` adds a new class to the list of all classes
- `document.querySelectorAll("li .item").classList.removeClass("inv")` removes a new class to the list of all classes
- `document.querySelectorAll("li .item").classList.toggle("inv")` toggles a new class to the list of all classes

---
## Using Geolocation API
```javascript
navigator.geolocation.getCurrentPosition(displayPosition)
```

## Drag and Drop API
[example](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-CD0101EN-SkillsNetwork/labs/demos/drag-and-drop-demo.html)

---

