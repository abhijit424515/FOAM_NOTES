# jQuery

- Shortify JS code
- `document.querySelector("h1") ---> jQuery("h1") ---> $("h1")`
- You can change the methods on any used selector to sequentially carry out the operations of those methods.

## Create/Delete Elements
- Add element before another element ---> `$("h1").before("<button>Hello</button>")`
- Add element after another element ---> `$("h1").after("<button>Hello</button>")`
- Add element as first child of another element ---> `$("h1").prepend("<span>Hello</span>")`
- Add element as last child of another element ---> `$("h1").append("<span>Hello</span>")`
- Remove elements ---> `$("h1").remove()`

## Element Modifiers
- Changing css of an element ---> `$("h1").css("font-size","5rem")`
- Add classes to an element ---> `$("h1").addClass("c1 c2 c3")`
- Remove classes to an element ---> `$("h1").removeClass("c1 c2 c3")`
- Check for a class in an element ---> `$("h1").hasClass("c4")`
- Change text of an element ---> `$("h1").text("Hey there")`
- Change content of an element ---> `$("h1").html("<span>Hey</span> there")`
- Get attribute value of an element ---> `$("a").attr("href")`
- Change attribute value of an element ---> `$("a").attr("href","www.google.com")`
- Hide element (display: none) ---> `$("h1").hide()`
- Show element ---> `$("h1").show()`
- Toggle element ~~visibility~~ ---> `$("h1").click(() => $("h2").toggle())`

## Element Modifiers with Animation
- Fade in an element ---> `$("h1").fadeIn()`
- Fade out an element ---> `$("h1").fadeOut()`
- Fade toggle an element ---> `$("h1").fadeToggle()`
- Collapse/Slide-up an element ---> `$("h1").slideUp()`
- Uncollapse/Slide-down an element ---> `$("h1").slideDown()`
- Uncollapse/Slide-down an element ---> `$("h1").slideToggle()`
- Animate with custom css (**make sure to not use color**) ---> `$("h1").animate({margin: "20px"})`

## Event Listeners
- Click ---> `$("h1").click(() => console.log("Hello"))`
- Keypress ---> `$("input").keypress((event) => console.log(event.key))`
  **Note**: You can use `$("document").keypress((event) => console.log(event.key))` to create website key-bindings.
- General ---> `$("h1").on("mouseover",() => console.log("mouseover triggered"))`