## Functions

<dl>
<dt><a href="#callFunction">callFunction()</a> ⇒ <code>Object</code></dt>
<dd><p>Calls a function provided as a string with not parameters.</p>
</dd>
<dt><a href="#dateToString">dateToString(date)</a> ⇒ <code>String</code></dt>
<dd><p>Convert a Date object to the SIK string-date with formar &quot;YYY-MM-DD HH:MM:SS.MMS&quot;. Sample: &quot;2022-09-09 09:40:43.226&quot;.
The Silk ORM returns and received date data in this format.</p>
</dd>
<dt><a href="#doesFileExist">doesFileExist()</a> ⇒ <code>Boolean</code></dt>
<dd><p>Verifies is the URL of a resource file exist or is accesible in host server.</p>
</dd>
<dt><a href="#getFormattedValue">getFormattedValue(value, formatter)</a> ⇒ <code>String</code></dt>
<dd><p>Formats the value to specify pattern.</p>
</dd>
<dt><a href="#getNumber">getNumber(value, precision)</a> ⇒ <code>Number</code></dt>
<dd><p>Converts any provided value into a number.</p>
</dd>
<dt><a href="#getObjectType">getObjectType(obj)</a> ⇒ <code>String</code></dt>
<dd><p>Return the type of the object.</p>
</dd>
<dt><a href="#getRandomColor">getRandomColor()</a> ⇒ <code>String</code></dt>
<dd><p>Returns the HEX value of ransom color.</p>
</dd>
<dt><a href="#getTemplateData">getTemplateData(template, index, item, renderer)</a> ⇒ <code>String</code></dt>
<dd><p>Replaces the columns, enclosed with &quot;{&quot; or &quot;&quot;{{&quot;, found in a provided template with the attributes found in the the provided item. Then apply a renderer if provided.</p>
</dd>
<dt><a href="#getToday">getToday()</a> ⇒ <code>Date</code></dt>
<dd><p>Return the current date and time</p>
</dd>
<dt><a href="#getTodayString">getTodayString()</a></dt>
<dd><p>Return the current date and time in silk&#39;s string format.</p>
</dd>
<dt><a href="#getUUID">getUUID()</a> ⇒ <code>String</code></dt>
<dd><p>Generates a UUID Value.</p>
</dd>
<dt><a href="#ifTag">ifTag($container)</a></dt>
<dd><p>Evaluates HTML tags for silk-if css classes in the provided JQuery object. If tags found evaluates the attribute data-if criteria to keep or remove the tag.</p>
</dd>
<dt><a href="#ifUndefined">ifUndefined(value, option)</a> ⇒ <code>Object</code></dt>
<dd><p>Analyzes if the provided value is undefined or null. If tyes it return the provided option.</p>
</dd>
<dt><a href="#inIframe">inIframe()</a> ⇒ <code>Boolean</code></dt>
<dd><p>Verifies if a web application is running inside an iframe</p>
</dd>
<dt><a href="#isEmpty">isEmpty(object)</a> ⇒ <code>Boolean</code></dt>
<dd><p>Returns true if the object is undefined or null or empty.</p>
</dd>
<dt><a href="#isIn">isIn()</a> ⇒ <code>Boolean</code></dt>
<dd><p>Function to verify if the first parameter matches the other parameter values. The second parameter can be an array. It is not extrict compparizon.</p>
</dd>
<dt><a href="#isNotEmpty">isNotEmpty(object)</a> ⇒ <code>Boolean</code></dt>
<dd><p>Returns true if the object is not undefined or null or empty.</p>
</dd>
<dt><a href="#isNumeric">isNumeric()</a></dt>
<dd><p>Return  if the string is a number</p>
</dd>
<dt><a href="#isRunningStandalone">isRunningStandalone()</a> ⇒ <code>Boolean</code></dt>
<dd><p>Verifies if the web application is running standalone (PWA)</p>
</dd>
<dt><a href="#left">left(str, n)</a> ⇒ <code>String</code></dt>
<dd><p>Returns a string with the provided number of characters starting from the left.</p>
</dd>
<dt><a href="#renderCode">renderCode()</a> ⇒ <code>String</code></dt>
<dd><p>Takes code text and replaces the tabs with hard spaces and in lines.</p>
</dd>
<dt><a href="#replaceAll">replaceAll(target, search, replace)</a> ⇒ <code>String</code></dt>
<dd><p>Function replaceAll to replace all the existing string to a new one.</p>
</dd>
<dt><a href="#right">right(str, n)</a> ⇒ <code>String</code></dt>
<dd><p>Returns a string with the provided number of characters starting from the right.</p>
</dd>
<dt><a href="#roundNumber">roundNumber(value, precision)</a> ⇒ <code>Number</code></dt>
<dd><p>Rounds a number to the provided decimal place</p>
</dd>
<dt><a href="#sanitize">sanitize(text)</a> ⇒ <code>String</code></dt>
<dd><p>Cleans data from HTML tags.</p>
</dd>
<dt><a href="#stringToDate">stringToDate(stringDate)</a> ⇒ <code>Date</code></dt>
<dd><p>Convert a SILK string-date data to data object. The string should have the formar &quot;YYY-MM-DD HH:MM:SS.MMS&quot;. Sample: &quot;2022-09-09 09:40:43.226&quot;.
The Silk ORM returns and received date data in this format.</p>
</dd>
</dl>

<a name="callFunction"></a>

## callFunction() ⇒ <code>Object</code>
Calls a function provided as a string with not parameters.

**Kind**: global function  
<a name="dateToString"></a>

## dateToString(date) ⇒ <code>String</code>
Convert a Date object to the SIK string-date with formar "YYY-MM-DD HH:MM:SS.MMS". Sample: "2022-09-09 09:40:43.226".
The Silk ORM returns and received date data in this format.

**Kind**: global function  

| Param | Description |
| --- | --- |
| date | The Date object to be converted |

<a name="doesFileExist"></a>

## doesFileExist() ⇒ <code>Boolean</code>
Verifies is the URL of a resource file exist or is accesible in host server.

**Kind**: global function  
**Parm**: urlToFile - The file' URL.  
<a name="getFormattedValue"></a>

## getFormattedValue(value, formatter) ⇒ <code>String</code>
Formats the value to specify pattern.

**Kind**: global function  

| Param | Type | Description |
| --- | --- | --- |
| value | <code>Object</code> | The value to get formated |
| formatter | <code>String</code> | The formating pattern or template |

<a name="getNumber"></a>

## getNumber(value, precision) ⇒ <code>Number</code>
Converts any provided value into a number.

**Kind**: global function  

| Param | Default | Description |
| --- | --- | --- |
| value |  | The value to be converted to a number. |
| precision | <code>2</code> | The decimal places. |

<a name="getObjectType"></a>

## getObjectType(obj) ⇒ <code>String</code>
Return the type of the object.

**Kind**: global function  

| Param | Description |
| --- | --- |
| obj | The object to evaluate. |

<a name="getRandomColor"></a>

## getRandomColor() ⇒ <code>String</code>
Returns the HEX value of ransom color.

**Kind**: global function  
<a name="getTemplateData"></a>

## getTemplateData(template, index, item, renderer) ⇒ <code>String</code>
Replaces the columns, enclosed with "{" or ""{{", found in a provided template with the attributes found in the the provided item. Then apply a renderer if provided.

**Kind**: global function  

| Param | Type | Description |
| --- | --- | --- |
| template | <code>String</code> | The string containing the columns to replace. |
| index | <code>Integer</code> | The index position in the list |
| item | <code>Objet</code> | The object containing the attributes to be used to replace. |
| renderer | <code>String</code> | The function to be used as data renderer. |

<a name="getToday"></a>

## getToday() ⇒ <code>Date</code>
Return the current date and time

**Kind**: global function  
<a name="getTodayString"></a>

## getTodayString()
Return the current date and time in silk's string format.

**Kind**: global function  
<a name="getUUID"></a>

## getUUID() ⇒ <code>String</code>
Generates a UUID Value.

**Kind**: global function  
<a name="ifTag"></a>

## ifTag($container)
Evaluates HTML tags for silk-if css classes in the provided JQuery object. If tags found evaluates the attribute data-if criteria to keep or remove the tag.

**Kind**: global function  

| Param | Type | Description |
| --- | --- | --- |
| $container | <code>Object</code> | JQuery object to evaluate. if undefined evaluates all the html document |

<a name="ifUndefined"></a>

## ifUndefined(value, option) ⇒ <code>Object</code>
Analyzes if the provided value is undefined or null. If tyes it return the provided option.

**Kind**: global function  

| Param | Description |
| --- | --- |
| value | The value to evaluate. |
| option | The option to return if the value is undefined or null. |

<a name="inIframe"></a>

## inIframe() ⇒ <code>Boolean</code>
Verifies if a web application is running inside an iframe

**Kind**: global function  
<a name="isEmpty"></a>

## isEmpty(object) ⇒ <code>Boolean</code>
Returns true if the object is undefined or null or empty.

**Kind**: global function  

| Param | Description |
| --- | --- |
| object | The object to evaluate. |

<a name="isIn"></a>

## isIn() ⇒ <code>Boolean</code>
Function to verify if the first parameter matches the other parameter values. The second parameter can be an array. It is not extrict compparizon.

**Kind**: global function  
<a name="isNotEmpty"></a>

## isNotEmpty(object) ⇒ <code>Boolean</code>
Returns true if the object is not undefined or null or empty.

**Kind**: global function  

| Param | Description |
| --- | --- |
| object | The object to evaluate. |

<a name="isNumeric"></a>

## isNumeric()
Return  if the string is a number

**Kind**: global function  
<a name="isRunningStandalone"></a>

## isRunningStandalone() ⇒ <code>Boolean</code>
Verifies if the web application is running standalone (PWA)

**Kind**: global function  
<a name="left"></a>

## left(str, n) ⇒ <code>String</code>
Returns a string with the provided number of characters starting from the left.

**Kind**: global function  

| Param | Description |
| --- | --- |
| str | The string to operate |
| n | The number of character to return |

<a name="renderCode"></a>

## renderCode() ⇒ <code>String</code>
Takes code text and replaces the tabs with hard spaces and in lines.

**Kind**: global function  

| Type | Description |
| --- | --- |
| <code>String</code> | The code to format |

<a name="replaceAll"></a>

## replaceAll(target, search, replace) ⇒ <code>String</code>
Function replaceAll to replace all the existing string to a new one.

**Kind**: global function  

| Param | Description |
| --- | --- |
| target | The text to operate |
| search | The text to search |
| replace | The replacement text |

<a name="right"></a>

## right(str, n) ⇒ <code>String</code>
Returns a string with the provided number of characters starting from the right.

**Kind**: global function  

| Param | Description |
| --- | --- |
| str | The string to operate |
| n | The number of character to return |

<a name="roundNumber"></a>

## roundNumber(value, precision) ⇒ <code>Number</code>
Rounds a number to the provided decimal place

**Kind**: global function  

| Param | Default | Description |
| --- | --- | --- |
| value |  | The number to be rounded. |
| precision | <code>0</code> | The rounding decimal place. |

<a name="sanitize"></a>

## sanitize(text) ⇒ <code>String</code>
Cleans data from HTML tags.

**Kind**: global function  

| Param | Type | Description |
| --- | --- | --- |
| text | <code>String</code> | The text to sanitize. |

<a name="stringToDate"></a>

## stringToDate(stringDate) ⇒ <code>Date</code>
Convert a SILK string-date data to data object. The string should have the formar "YYY-MM-DD HH:MM:SS.MMS". Sample: "2022-09-09 09:40:43.226".
The Silk ORM returns and received date data in this format.

**Kind**: global function  

| Param | Description |
| --- | --- |
| stringDate | The SILK string-date value to be converted. |

