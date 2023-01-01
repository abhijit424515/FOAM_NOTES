# CSS

- Selector priority
  1. id
  2. class
  3. tag

- Positioning
  - Relative
    - top 20px => push from top by 20px, displacing it from it's original position 
      (however, it's only a shadow representation of the original object, since it's occupied space is still there)
  - Absolute
    - Element is in a different layer than the rest of the document, with the **body** tag being it's parent.
      - Make parent div relative to use absolute positioning relative to the parent div.
    - top 20px => push from top by 20px, displacing it from the boundary of it's parent (default position is top left)
    - very useful to use absolute positioning for elements bounded by any container tag.
  - Fixed
    - Unaffected by scrolling

- Margin
  - Auto
    - Automatically equate margin values on opposite sides

- Font size
  - em values are inherited, and so are relative to the font size of the parent
  - rem values are relative to root

- Float
  - The float property is used for positioning and formatting content e.g. let an image float left to the text in a container.
  - The float property can have one of the following values:
    - left - The element floats to the left of its container
    - right - The element floats to the right of its container
    - none - The element does not float (will be displayed just where it occurs in the text). This is default
    - inherit - The element inherits the float value of its parent
  - In its simplest use, the float property can be used to wrap text around images.

- Clear
  - The clear property controls the flow next to floated elements. The clear property specifies what should happen with the element that is next to a floating element.