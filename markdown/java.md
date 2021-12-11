# Hello world program

## Example for calling the js in html

```html
<script src="scripts/main.js"></script>
```

## Example for changing the title of the html


```js

var myHeading = document.querySelector('h1');
myHeading.textContent = 'Hello world!';
```
querySelecter is used to get the reference of the title

---


```js
function setUserName() 
{
    let myName = prompt('Please enter your name.');
    localStorage.setItem('name', myName);
    myHeading.innerHTML = 'Mozilla is cool, ' + myName;
}
```
# syntax

```css

# for id 
. for class 

```