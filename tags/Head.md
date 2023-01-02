# silk:Head Tag
The *silk:Head* tag defines the page header which is statically located at the top of the page. It will always be there even if the page is scrolled. The page head holds the page title, which is located in the center of the head, and interaction buttons at the left and right of the title

The "title" it is not a property but the "content" of the *silk:Head* tag. So, the title does not have to be necessarily just a "text".

## Tag Use
Used as a container:
```xml
<silk:Head
    homeButton="false"
    logoutButton="false"
    helpButton="false"
    cssClass=""
>
   Contains: Title of the header and optionally silk:Button tags.
</silk:Head>
```
The list below shows the required properties.

## Properties
This tag has the following properties.
|Name|Description|
|--|--|
|homeButton|Will add a button with a "home" icon to the top left of the header.<br>Default Value: *false*.|
|logoutButton|Will add a button with a "lock" icon to the top left of the header.<br>Default Value: *false*.|
|helpButton|Will add a help icon to display interface explanation.<br>Default Value: *false*.|
|cssClass|To add extra  classes to the header "DIV" wrapper to change it default appearance.<br>Default Value: *Empty*.|

<sup>*</sup>Required property.
