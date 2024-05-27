# Table Input

An extra function a Table can provide is the ability to edit data on cell inputs like a spreadsheet. The developer can decide which column or columns will be used for data entry by setting the properties of the [**silk:Column**]([https://docs.silkbuilder.com/tags/column) : *inputType*, *inputMask*, *valueColumn*, *labelColumn*, and *visibleColumn*, depending on the processing needs.

## Setting the inputs

The example below shows a table with a column set to edit the *DataProvider's* income value with inputType as "decimal(2)." If the ***inputType*** is not provided, the type *"text*"" is used.

```xml
<silk:Table id="personList" dataSource="personDP" >
  <silk:Column title="Name" >{personName}</silk:Column>
  <silk:Column title="Income"
		valueColumn="income"
		inputType="decimal(2)"
	>
    {income}
  </silk:Column>
</silk:Table>
```

## Setting the mask

By default the input mask is selected from the inputType. A mask can be provided for special circunstances.

```xml
<silk:Column title="Income"
	inputType="text"
	inputMask="#,###.00D"
	valueColumn="income"
>
	{income}
</silk:Column>
```

## Activate Inputs

The method ***setInputs*** reloads the table and add inputs to the configured columns.

```javascript
personList.setInputs();
```

Calling the method again will remove the inputs and reload the table. If a parameter "true" is added it will activates the inputs and "false" will remove.

## Get inputs value

The method ***getInputs*** returns the input values into an array to be evaluated.

```javascript
let personArray = personList.getInputs();
```

The returned array contains a list of objects with a property for each input column. The properties are named using the ***valueColumn*** defining the input. Each property contains the input's properties.

```json
[
	{
		income: {
			action: "update",
			hasChanged: true,
			index: 0,
			item: {},
			type: "decimal(2)"
			oldValue: "325.45",
			value: "89.45"
    }
	},
	{
		income: {
			action: "none",
			hasChanged: false,
			index: 1,
			item: {},
			type: "decimal(2)"
			oldValue: "325.45",
			value: "325.45"
    }
	}
]
```

## Processing inputs values

The example below processes an input array and submits the data to the database.

```javascript
saveBt.on("click", function(){
  
  // Get data from inputs
	let dataArray = personList.getInputs();
  
  // Clean operations from the DataProvider
  personDP.cleanOperations();
  
  // Loops input array
  for( x in dataArray ){
    
    // Get "income" array item
    let incomeItem = dataArra[x].income;
    
    // If the input has not changed skip item
    if( !incomeItem.hasChanged ) continue;
    
    // Start new operation for a batch operation
    personDP.setOperationAction("udpate");
    
    // Set operation parameters
    personDP.setOperationItem("income", incomeItem.value);
    parentDP.setOperationITem("personID", personDP.getItemAt(incomeItem.index).personID);
    
  }
  
  // Execute operations on a batch process.
  personDP.batch();
  
});

personDP.on("afterBatch", function(){
  // Reload data from database. This will re-fill table.
  personDP.select()
});
```

## Input's properties from the DataProvider

Inputs properties can be defined by values in the DataProvider. This requires to configure the Select query to return the values defining the inputs. The properties to use are *inputType*, *inputMask*, and *visibleColumn*.

A select query for this case could be:

```sql
select
	personName,
	income,
	'text' as incomeType,
	Case when level=1 then "#,###" else '#,###.00D' end as incomeMask,
	case when position='employee' then 1 else end as incomeVisible
from person
```

For this case the column's configuration woud be:

```xml
<silk:Column title="Income"
	valueColumn="income"
	visibleColumn="visibleIncome"
	inputType="incomeType"
	inputMask="incomeMask"
>
   {income}
</silk:Column>
```

## Input's properties set programatically

If required to address very complex needs, the event ***renderInput*** allows the definition of the input's setup programmatically. The event has the parameters column index, the DataProvider index, and the DataPravider Item being evaluated.

If the event returns *true* or *undefined*, the input for the particular row will be rendered. If the event returns false, then the input will not be rendered.

```javascript
personList.on("renderInput", function(columnIndex,index,item){
	if( item.level==1 ) return false; // Will not render an input.
	return true;
});
```

The event could also return the input's type. If required, the mask can also be added to the input's type after a pipe "|" symbol.

```javascript
personList.on("renderInput", function(columnIndex,index,item){
	if( item.position=="employee" ) return "text"; // Will render a text input.
 	return "number|#,###.00D"; // Will render a number with the provided mask.
});
```

## Store extra data for post prosessing

In some situations, an input may need extra data for post-processing. This data can be collected and stored when the input is generated, and later, this information can be used to decide how to process the data correctly.

A sample case is when the data is to be edited in table inputs belonging to a related join table. In this case, the main table rows may have related records in the join table or not. At editing time, the record with no companion data must operate an "insert." A row with already existing companion records will operate an "update." If the input empties, the companion records will be "deleted." A case like this may require more data for proper processing.

For cases like this, the event **dataInput** allows extra data to be pushed into the input. The event has the parameters DataProvider index, DataProvider Item, and the input type. It is expected to return an object stored in the input and available during processing in the "item" property.

A simple **dataInput** event example.

```javascript
personList.on("dataInput", function(index, item, type){
	let data = {};
  data["positionID"] = item.positionID;
  data["level"] = item.level;
  return data;
});
```

The method **getInputs** will include the extra data in the **item** property to select the proper process.

```javascript
{
	action: "update",
	hasChanged: true,
	index: 0,
	item: {
		positionID: 65,
		level: "A"
	},
	type: "decimal(2)"
	oldValue: "325.45",
	value: "89.45"
}
```

