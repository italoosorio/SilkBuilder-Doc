# onManager
The on Manager Class stores and trigger event objects. An event object is componsed by a property called eventName which stores the event's name, and the function which will be executed at trigger time.

**Kind**: global class  


<a name=new_onManager_new"></a>

## new onManager()
Returns an instance of onManager.

<a name=onManager+dispatch"></a>

## eventManager.dispatch(eventName, paramX) ⇒ <code>Object</code>
Triggers or executes the function of the provided event's name. It received up to 10 parameters. If the event has been entered multiple times these are executed in the order or entrance.

**Kind**: instance method of [<code>onManager</code>](#EventManager)  
**Returns**: <code>Object</code> - The result Objec returned after executing the event's function.  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name |
| paramX | <code>any</code> | The function can received up to 10 parameters. From param0 to param9. |

<a name=onManager+eventExists"></a>

## eventManager.eventExists(eventName) ⇒ <code>boolean</code>
Returns true if the provided event's name exist in the array. Otherwise returns false.

**Kind**: instance method of [<code>onManager</code>](#EventManager)  
**Returns**: <code>boolean</code> - True or false.  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name |

<a name=onManager+getList"></a>

## eventManager.getList() ⇒ <code>Array</code>
Gets the array of event objects registered.

**Kind**: instance method of [<code>onManager</code>](#EventManager)  
**Returns**: <code>Array</code> - A list or event objects  
<a name=onManager+on"></a>

## eventManager.on(eventName, eventFunction)
Adds an event object to the event array. An event can be added multiple times.

**Kind**: instance method of [<code>onManager</code>](#EventManager)  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name |
| eventFunction | <code>function</code> | The function to be triggered |


