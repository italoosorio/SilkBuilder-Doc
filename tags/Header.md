# silk:Header
The **silk:Header** tag defines the page header, which is statically located at the top. It will always be there, even if the page is scrolled. The page head holds the page title, which is located in the center of the head, and interaction buttons on the left and right of the title.

The "title" is not a property but the "content" of the tag. So, the title does not necessarily have to be just a "text".

## Tag Definition
Used standalone:
```xml
<silk:Header
  homeButton="false"
  logoutButton="false"
  helpButton="false"
  cssClass=""
/>
```
Used as a container:
```xml
<silk:Header
  homeButton="false"
  logoutButton="false"
  helpButton="false"
  cssClass=""
>
   Contains: Title of the header and optionally silk:Button tags.
</silk:Header>
```

## Properties 
### homeButton
Will add a button with a "home" icon to the top left of the header.<br>Default Value: *false*.
### logoutButton
Will add a button with a "lock" icon to the top left of the header.<br>Default Value: *false*.
### helpButton
Will disable the help icon used to display interface explanations.<br>Default Value: *false*.
### cssClass
Add extra classes to the header "DIV" wrapper to change its default appearance.<br>Default Value: *Empty*.
