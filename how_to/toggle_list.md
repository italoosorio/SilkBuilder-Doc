# Toggle Related Elements

There are situations when *Silk Components* must be shown or hidden following certain operational conditions. For cases like this, the components have the methods show(), hide(), and toggle(). However, sometimes, the Silk component is part of an HTML structure, giving the user a contextual explanation of when and how to use the component's operation. In this situation, hiding only the Silk component will leave the HTML structure visible without the Silk component, which could lead to user confusion. To solve this situation, the developer has to add extra code to hide the HTML containing the Silk Component.

## Case Scenario

A typical scenario is when *silk:Buttons* trigger the change of "status" of an item. In this case, the Button has to be shown or hidden depending on the existing record "status." The code below show an example:

```xml
<div>
	<h4>Publishing</h4>
  <p>
    This option will set the selected document as published.
  </p>
  <silk:Button id="bt1" label="Set to Published" />
</div>
```

In this case, the button "bt1" should only be shown when the records's status is not "published." If the record is already "published," then the "bt1" button has to be hidden. The code below uses the silkButton's property *toggle* to make this happen when the table row gets clicked.

```javascript
/*
 * status attibute:
 *  - 0 No Published
 *  - 1 Published
 */
dataList.on("click",function(){
	bt1.toggle( dataList.getSelectedItem().status==0 );
});
```

When this gets executed, the *silk:Button* will be shown or hidden, following the record's status condition. However, the HTML surrounding the silk:Button will still be visible, which is not the ideal scenario.

To avoid adding extra code to hide the surrounding HTML, the Silk Components have the property **toggleList**.

## Toggle List

The property *toggleList* is available in the Silk Components: Button, Table, Form, and Input. This property receives the comma-separated list of the elements which will "toggle" together with the component or some other keywords which are:

- A CSS class value that should include the dot prefix.

- The element's ID with the # prefix.

- The name of a Silk Component: Button, Table, Form, Input.

- The value "parent" toggles the immediate parent element.

- The value "grandpa" toggles the grandparent element.

## Toggle the Parent

To toggle the parent, set the *toggleList* property with "parent." In the sample below, this will also hide the <div> element containing the silk:Button component.

```xml
<div>
	<h4>Publishing</h4>
  <p>
    This option will set the selected document as published.
  </p>
  <silk:Button id="bt1" label="Set to Published" toggleList="parent" />
</div>
```

## Toggle by ID

To hide any HTML element, add the element's ID to the toggleList property. In the sample, when the button gets hidden, the DIV identified as "publishingBox" will also be hidden or shown.

```xml
<div id="publishingBox" >
	<h4>Publishing</h4>
  <p>
    This option will set the selected document as published.
  </p>
</div>
<silk:Button id="bt1" label="Set to Published" toggleList="#publishingBox" />
```

## Toggle by CSS Class

Elements can also be accessible using their CSS class.

```xml
<div class="publishing-box" >
	<h4>Publishing</h4>
  <p>
    This option will set the selected document as published.
  </p>
</div>
<silk:Button id="bt1" label="Set to Published" toggleList=".publishingBox" />
```

## Toggle Another Component

To toggle another Silk Component, add the component's identifier to the toggleList property.

```xml
<silk:Button id="bt1" label="Set to Published" toggleList=".publishingBox" />
<silk:Button id="bt2" label="Another Button" toggleList="bt2" />
```

## Toggle Multiple Elements.

The *toggleList* property can target elements; these must be added as a comma-separated list.

```xml
<h4 id="publishingBox" >Publishing</h4>
<p class="publishing-box">
    This option will set the selected document as published.
</p>
<div>
  Click this button apply the status change. <br/>
	<silk:Button id="bt1" label="Set to Published" toggleList="parent,#publishingBox,.publishingBox,bt2" />
</div>
<silk:Button id="bt2" label="Another Buttton" />
```

## Toggle Negation

If the objective is to invert the toggle action of the target item, the symbol "!" has to be added to the identifier.

```xml
<silk:Button id="bt1" label="Set to Published" toggleList="!publishedMessage" />
<p id="publishedMessage" class="silk-hidden">
  The item is already published.
</p>
```



