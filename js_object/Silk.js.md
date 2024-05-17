# Silk
 The Silk class defines the global properties of a silk application. It is uniquely instantiated by the SilkBuilder in the object "silk" and used by other components. The user does not need to instantiate this class.

**Kind**: global class  
## Properties

| Name | Type | Description |
| --- | --- | --- |
| pageList | <code>Array</code> | An array containing the list of Page objects used by the application. |
| dpLoader | <code>Array</code> | An array containing the list of DataProvider objects used by the application. |
| $screen | <code>Object</code> | A JQuery object pointing to the pages container. |
| focusedPage | <code>String</code> | The name of the page is currently on focus. |



## Methods and Event
 <a name="_new"></a>

### new Silk()
Returns a Silk instance. **Do not instantiate manually.**

<a name="Silk+alert"></a>

### alert
Extends the [SweetAlert2](https://sweetalert2.github.io/) dialog object. Use it by calling alert.fire();

**Kind**: instance property of [<code>Silk</code>](#Silk)  

| Param | Type | Description |
| --- | --- | --- |
| title | <code>String</code> | The dialog's title. |
| message | <code>String</code> | The dialog's message. |
| icon | <code>String</code> | The icon's name. |
| configuration | <code>Object</code> | An object with the SweetAlert2 configuration. When using this the other parameters should not be used. |

<a name="Silk+getScreenMode"></a>

### getScreenMode() ⇒ <code>Integer</code>
Returns the screen mode based on the window's width.

**Kind**: instance method of [<code>Silk</code>](#Silk)  
**Returns**: <code>Integer</code> - - The mode.  
<a name="Silk+initSilk"></a>

### initSilk()
Initializes the Silk object.

**Kind**: instance method of [<code>Silk</code>](#Silk)  
<a name="Silk+layoutScreens"></a>

### layoutScreens()
Distribute and visualizes pages based on the screen's width.

**Kind**: instance method of [<code>Silk</code>](#Silk)  
<a name="Silk+on"></a>

### on
Extends the "on" method from the eventManager Class.

**Kind**: instance property of [<code>Silk</code>](#Silk)  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name. |
| eventFunction | <code>function</code> | The function to be triggered. |

<a name="Silk+toast"></a>

### toast
Extends the [SweetAlert2](https://sweetalert2.github.io/) toas object. Use it by calling alert.toast();

**Kind**: instance property of [<code>Silk</code>](#Silk)  

| Param | Type | Description |
| --- | --- | --- |
| title | <code>String</code> | The dialog's title. |
| message | <code>String</code> | The dialog's message. |
| icon | <code>String</code> | The icon's name. |
| configuration | <code>Object</code> | An object with the SweetAlert2 configuration. When using this the other parameters should not be used. |

<a name="Silk+event_afterDPLoad"></a>

### "event:afterDPLoad"
Event triggered after the DataProviders loading. Created with the ```on("afterDPLoad", function(){})``` method.

**Kind**: event emitted by [<code>Silk</code>](#Silk)  
<a name="Silk+event_beforeDPLoad"></a>

### "event:beforeDPLoad"
Event triggered before the DataProviders are loaded. Created with the ```on("beforeDPLoad", function(){})``` method.

**Kind**: event emitted by [<code>Silk</code>](#Silk)  
<a name="Silk+Event_resize"></a>

### on:resize
Event triggered after the pages had been distributed. Created with the ```on("resize", function(){})``` method.

**Kind**: event emitted by [<code>Silk</code>](#Silk)  

