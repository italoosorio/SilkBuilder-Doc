# Toggle Related Elements

There are situation when *Silk Components* have to be shown or hidden following centain operational conditions. For cases like this the components have the methods show(), hide() and toggle(). However, many time the component is part of a HTML structure which will provide to the user the contextual explanation about when or how to use the component. In this kind of situations hidding only the component will leave the HTML structure visible but without the component.

## Case Scenario

The most common scenario of the cases above is when Buttons are set to trigger the chanage of status of an item. In this case the Button has to be shows or hidden depening on the status of the selected item in a Table.

For a case like this the interface structure will be the following:

```xml
<div>
	<h4>Publishing</h4>
  <p>
    This option will set the selected document as published.
  </p>
  <silk:Button id="bt1" label="Set to Published" />
</div>
```

In this case the button "bt1" should only be shown when the item's status is not "published". If the item is already in the "published" status then the "bt1" button should be hidden. the code to make this happen is:

```javascript
/*
 * status attibute:
 *  - 0 No Published
 *  - 1 Published
 */
itemList.on("click",function(){
	bt1.toggle( itemList.getSelectedItem().status==0 );
});
```

The Button's method "toggle" will show or hide the button following the provided logic. When this gets executed the button will be shown of hidden. However, the HTML sorrounding the Button will be still visible which is not the ideal scenario.

To solve this issue some Silk Components have the property **toggleList**.

## Toggle List

The components with this property are: Button, Table, Form, and Input.

| Name       | Function                                                     |
| ---------- | ------------------------------------------------------------ |
| toggleList | The list of comma separated elements which will be toggle together with the component. The values could be:<br>- A CSS class value which should inclue the dot prefix.<br>- The element's ID with the # prefix.<br>- The name of a Silk Commponent: Button, Table, Form, Input.<br>- The value "parent" toggles the immediate parent element.<br/>- The value "grandpa" toggles the grandparent element. |

## Toggle Parent

To solve the issue in provided case scenario the property ** toggleList** has to be setup with the value **parent**.

```xml
<div>
	<h4>Publishing</h4>
  <p>
    This option will set the selected document as published.
  </p>
  <silk:Button id="bt1" label="Set to Published" toggleList="parent" />
</div>
```

In this case all the HTML structure embedding the button will get affected.

## Toggle by ID

In this case the DIV *publishingBox* will be affected.

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

In this case the DIV with the CSS class *publishing-box* will be affected. This CSS class could be used in multiple elements.

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

It is possible to include another component to the list.

```xml
<silk:Button id="bt1" label="Set to Published" toggleList=".publishingBox" />
<silk:Button id="bt2" label="Another Button" toggleList="bt2" />
```

## Toggle Multiple Elements.

The property can also be used to toggle multiple elements.

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

If the objective is to show something when the component is being hidden then a exclamation mark has to be added to the element indentifier "!".

```xml
<silk:Button id="bt1" label="Set to Published" toggleList="!publishedMessage" />
<p id="publishedMessage" class="silk-hidden">
  The item is already published.
</p>
```



