# EventManager
The Event Manager Class stores and trigger event objects. An event object is componsed by a property called eventName which stores the event's name, and the function which will be executed at trigger time.

**Kind**: global class  

* [EventManager](#EventManager)
    * [new EventManager()](#new_EventManager_new)
    * [.getList()](#EventManager+getList) ⇒ <code>Array</code>
    * [.on(eventName, eventFunction)](#EventManager+on)
    * [.eventExists(eventName)](#EventManager+eventExists) ⇒ <code>boolean</code>
    * [.dispatch(eventName, paramX)](#EventManager+dispatch) ⇒ <code>Object</code>

<a name="new_EventManager_new"></a>

## new EventManager()
Returns an instance of EventManager.

<a name="EventManager+getList"></a>

## eventManager.getList() ⇒ <code>Array</code>
Gets the array of event objects registered.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  
**Returns**: <code>Array</code> - A list or event objects  
<a name="EventManager+on"></a>

## eventManager.on(eventName, eventFunction)
Adds an event object to the event array. An event can be added multiple times.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name |
| eventFunction | <code>function</code> | The function to be triggered |

<a name="EventManager+eventExists"></a>

## eventManager.eventExists(eventName) ⇒ <code>boolean</code>
Returns true if the provided event's name exist in the array. Otherwise returns false.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  
**Returns**: <code>boolean</code> - True or false.  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name |

<a name="EventManager+dispatch"></a>

## eventManager.dispatch(eventName, paramX) ⇒ <code>Object</code>
Triggers or executes the function of the provided event's name. It received up to 10 parameters. If the event has been entered multiple times these are executed in the order or entrance.

**Kind**: instance method of [<code>EventManager</code>](#EventManager)  
**Returns**: <code>Object</code> - The result Objec returned after executing the event's function.  

| Param | Type | Description |
| --- | --- | --- |
| eventName | <code>String</code> | The event's name |
| paramX | <code>any</code> | The function can received up to 10 parameters. From param0 to param9. |
