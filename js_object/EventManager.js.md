# EventManager
 The Event Manager Class stores and trigger event objects. An event object is componsed by a property called eventName which stores the event's name, and the function which will be executed at trigger time.

**Kind**: global class  


## Methods and Event
 <a name="_new"></a>

### new EventManager()
Returns an instance of EventManager.

<a name="EventManager+dispatch"></a>

### dispatch(eventName, paramX) ⇒ <code>Object</code>
Triggers or executes the function of the provided event's name. It received up to 10 parameters.
If the event has been entered multiple times these are executed in the order or entrance.
If the provided function can return a value. In case of multiple functions generating values the value of the last one is returned.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  
**Returns**: <code>Object</code> - The result Objec returned after executing the event's function.  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name |
| paramX | <code>any</code> | The function can received up to 10 parameters. From param0 to param9. |

<a name="EventManager+eventExists"></a>

### eventExists(eventName) ⇒ <code>boolean</code>
Returns true if the provided event's name exist in the array. Otherwise returns false.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  
**Returns**: <code>boolean</code> - True or false.  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name |

<a name="EventManager+getList"></a>

### getList() ⇒ <code>Array</code>
Gets the array of event objects registered.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  
**Returns**: <code>Array</code> - A list or event objects  
<a name="EventManager+on"></a>

### on(eventName, eventFunction)
Adds an event object to the event array. An event can be added multiple times.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name. This could be multiple events separated by commas. |
| eventFunction | <code>function</code> | The function to be triggered |


