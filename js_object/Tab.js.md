# Tab
 The Tile Class provides properties, methods, and events to interface with the HTML tags generated by  the ```<silk:Tile>``` tag.

**Kind**: global class  
## Properties

| Name | Type | Description |
| --- | --- | --- |
| $tile | <code>Object</code> | jQuery object referencing the Tile HTML tag. |



## Methods and Event
 <a name="_new"></a>

### new Tab(id, option)
Returns a Tile instance.


| Param | Type | Description |
| --- | --- | --- |
| id | <code>String</code> | Unique identifier. |
| option | <code>Object</code> | Object containing the configuration. |
| [option.dataSource] | <code>String</code> | Unique identifier of the dataProvider used to fill the Tile. |
| [option.columns] | <code>String</code> | The number of tiles to define a row's columns. All tiles will be group in rows. |
| [option.rowClass] | <code>String</code> | The CSS class used by the row div. This only works when the column property is moren than 0. |
| [option.content] | <code>String</code> | The HTML template used to generate the tile. |
| [option.rendererFn] | <code>String</code> | The function which re-process the generated tile's HTML. |

<a name="Tab+addTab"></a>

### addTab(id, title, content, silent) ⇒ <code>Integer</code>
Add a new  This is added to the end and is automatically selected. Returns the index of the new created 

**Kind**: instance method of [<code>Tab</code>](#Tab)  

| Param | Type | Description |
| --- | --- | --- |
| id | <code>String</code> | The tab's unique identifier |
| title | <code>String</code> | The tab's title |
| content | <code>String</code> | The tab's content |
| silent | <code>Boolean</code> | Optional. If set to true the tab will not get selected. |

<a name="Tab+getActive"></a>

### getActive()
Returns if the tab is active

**Kind**: instance method of [<code>Tab</code>](#Tab)  
**Parma**: <code>Integer\|String</code> x - The tab index or id. If not provided uses the selected   
<a name="Tab+getSelectedTab"></a>

### getSelectedTab() ⇒ <code>Object</code>
Returns the selecte tab item.

**Kind**: instance method of [<code>Tab</code>](#Tab)  
<a name="Tab+getTabs"></a>

### getTabs() ⇒ <code>Array</code>
Returns the array containing the tabs.

**Kind**: instance method of [<code>Tab</code>](#Tab)  
<a name="Tab+getVisible"></a>

### getVisible()
Return if the tab is visible

**Kind**: instance method of [<code>Tab</code>](#Tab)  
**Parma**: <code>Integer\|String</code> x - The tab index or id. If not provided uses the selected   
<a name="Tab+hide"></a>

### hide()
Hiddes the tab component.

**Kind**: instance method of [<code>Tab</code>](#Tab)  
<a name="Tab+hideTab"></a>

### hideTab()
Returns the selecte tab item.

**Kind**: instance method of [<code>Tab</code>](#Tab)  
**Parma**: <code>Integer\|String</code> Tab index or id. If not provided uses the selected   
<a name="Tab+indexOf"></a>

### indexOf() ⇒ <code>Integer</code>
Returns the index of the tab with the provided id.

**Kind**: instance method of [<code>Tab</code>](#Tab)  
<a name="Tab+on"></a>

### on
Extends the "on" method from the eventManager Class.

**Kind**: instance property of [<code>Tab</code>](#Tab)  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name. |
| eventFunction | <code>function</code> | The function to be triggered. |

<a name="Tab+removeTab"></a>

### removeTab(index)
Removes the tab based on the provided index.

**Kind**: instance method of [<code>Tab</code>](#Tab)  

| Param | Type | Description |
| --- | --- | --- |
| index | <code>Integer</code> | The index to be removed. |

<a name="Tab+setIndex"></a>

### setIndex(index)
Activates a tab based on the provided index

**Kind**: instance method of [<code>Tab</code>](#Tab)  

| Param | Type | Description |
| --- | --- | --- |
| index | <code>Integer</code> | The tab index |

<a name="Tab+show"></a>

### show()
Show the tab component.

**Kind**: instance method of [<code>Tab</code>](#Tab)  
<a name="Tab+showTab"></a>

### showTab()
Returns the selecte tab item.

**Kind**: instance method of [<code>Tab</code>](#Tab)  
**Parma**: <code>Integer\|String</code> Tab index or id. If not provided uses the selected   
<a name="Tab+toggle"></a>

### toggle(value)
Hiddes the tab component.

**Kind**: instance method of [<code>Tab</code>](#Tab)  

| Param | Type | Description |
| --- | --- | --- |
| value | <code>Boolan</code> | The logic value. |

<a name="Tab+toggleTab"></a>

### toggleTab(value)
Togles the requested 

**Kind**: instance method of [<code>Tab</code>](#Tab)  
**Parma**: <code>Integer\|String</code> x - The tab index or id. If not provided uses the selected   

| Param | Type | Description |
| --- | --- | --- |
| value | <code>Boolean</code> | The logic value |

<a name="Tab+Event_add"></a>

### on:add
Event triggered when a tab is added. Created with the ```Tab.on("add", function(){index});``` method.

**Kind**: event emitted by [<code>Tab</code>](#Tab)  
<a name="Tab+Event_click"></a>

### on:click
Event triggered when the tab is clicked. Created with the ```Tab.on("click", function(){});``` method.

**Kind**: event emitted by [<code>Tab</code>](#Tab)  
<a name="Tab+Event_removed"></a>

### on:removed
Event triggered when a tab is removed. Created with the ```Tab.on("removed", function(){index});``` method.

**Kind**: event emitted by [<code>Tab</code>](#Tab)  
