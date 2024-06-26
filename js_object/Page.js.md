# Page
 The SilkPage Class provides properties, methods, and events to interface with the HTML tags generated by the ```<silk:Page>``` tag.

**Kind**: global class  
## Properties

| Name | Type | Description |
| --- | --- | --- |
| id | <code>String</code> | The page's name and unique dentifier. |
| $page | <code>Object</code> | jQuery object referencing to the page HTML tag. |
| $content | <code>Object</code> | jQuery object referencing to the page HTML tag. |
| isSingle | <code>Boolean</code> | Indicates if the page is being display alone. |



## Methods and Event
 <a name="_new"></a>

### new Page(id, stage, width, screenSetup, returnPage, tabsNav)
Returns a Page isntance.


| Param | Type | Description |
| --- | --- | --- |
| id | <code>String</code> | Unique identifier. |
| stage | <code>String</code> | The stages code to be used in the layout scheme. |
| width | <code>Integer</code> | Deprecated. |
| screenSetup | <code>String</code> | The layout scheme. |
| returnPage | <code>String</code> | The name of the page to return when clicking the back button. |
| tabsNav | <code>String</code> | The name of the TabsNav object holding the page |

<a name="Page+getID"></a>

### getID() ⇒ <code>String</code>
Returns the page's name or unique identifier.

**Kind**: instance method of [<code>Page</code>](#Page)  
**Returns**: <code>String</code> - Unique identifier.  
<a name="Page+getTitle"></a>

### getTitle() ⇒ <code>String</code>
Gets the page's title if the page is using a header.

**Kind**: instance method of [<code>Page</code>](#Page)  
**Returns**: <code>String</code> - The page header's title.  
<a name="Page+getVisible"></a>

### getVisible() ⇒ <code>Boolean</code>
Return if the page is visible or not.

**Kind**: instance method of [<code>Page</code>](#Page)  
**Returns**: <code>Boolean</code> - The visible status  
<a name="Page+goBack"></a>

### goBack()
Returns to the previous linked page, or to the set returned 

**Kind**: instance method of [<code>Page</code>](#Page)  
<a name="Page+mask"></a>

### mask(mode)
Executes the page masking. The masking process isolates the page from other pages.

**Kind**: instance method of [<code>Page</code>](#Page)  

| Param | Type | Description |
| --- | --- | --- |
| mode | <code>boolean</code> | If true the page is maked, if false the page is unmasked. |

<a name="Page+on"></a>

### on(eventName, eventFunction)
Extends the "on" method from the eventManager Class.

**Kind**: instance method of [<code>Page</code>](#Page)  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name. |
| eventFunction | <code>function</code> | The function to be triggered. |

<a name="Page+resize"></a>

### resize()
Executes the resize of pages in reference to the active one.

**Kind**: instance method of [<code>Page</code>](#Page)  
<a name="Page+setTitle"></a>

### setTitle(title)
Sets the page title if the page is using a header.

**Kind**: instance method of [<code>Page</code>](#Page)  

| Param | Type | Description |
| --- | --- | --- |
| title | <code>String</code> | The new page header's title. |

<a name="Page+show"></a>

### show()
Makes a page visible and the active one.

**Kind**: instance method of [<code>Page</code>](#Page)  
<a name="Page+Event_show"></a>

### on:show
Event triggered when the page becomes active. Created with the ```Page.on("show", function(){})``` method.

**Kind**: event emitted by [<code>Page</code>](#Page)  

