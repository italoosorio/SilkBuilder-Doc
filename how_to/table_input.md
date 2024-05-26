# Table Input

An extra function a Table can provide is the ability to edit data on cell inputs like a spreadsheet. The developer can decide which column or columns will be used for data entry by setting the properties of the [**silk:Column**]([https://docs.silkbuilder.com/tags/column) : *inputType*, *inputMask*, *valueColumn*, *labelColumn*, and *visibleColumn*, depending on the processing needs.

The example below shows a table with a colum set to edit the income value. If the inputType is not provided the type *text* is used.

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

The 

```xml
<silk:Column title="Income"
	inputType="decimal(3)"
	valueColumn="income"
	inputType="decimal(2)"
>
	{income}
</silk:Column>
```



```javascript
personList.setInputs();
```

123

```javascript
personList.getInputs();
```

123

```json
{
	action: "update",
	hasChanged: true,
	index: 0,
	item: {},
	type: "decimal(2)"
	oldValue: "325.45",
	value: "89.45"
}
```

123

column index, dpindex, dpItem

```javascript
personList.on("renderInput", function(columnIndex,index,item){
	if( item.level==1 ) return false;
	return true;
});
```

123

```javascript
personList.on("renderInput", function(columnIndex,index,item){
	if( item.position=="employee" ) return false;
 	return true;
});
```

123

dpIndex, dpItem, input Type

```javascript
personList.on("dataInput", function(index, item, type){
	let data = {};
  data["personID"] = item.personID;
  data["position"] = item.position;
  return data;
});
```

ddd

```javascript
{
	action: "update",
	hasChanged: true,
	index: 0,
	item: {
		personID: 5865,
		position: "employee"
	},
	type: "decimal(2)"
	oldValue: "325.45",
	value: "89.45"
}
```

asdf

```javascript
saveBt.on("click", function(){
  
  // Get data from inputs
	let dataArray = personList.getInputs();
  
  // Clean operations from the DataProvider
  personDP.cleanOperations();
  
  // Loops input array
  for( x in dataArray ){
    
    // Get array item
    let inputItem = dataArra[x];
    
    // If the input has not changed skip item
    if( !item.hasChanged ) continue;
    
    // Start new operation for a batch operation
    personDP.setOperationAction("udpate");
    
    // Set operation parameters
    personDP.setOperationItem("income", inputItem.value);
    parentDP.setOperationITem("personID", inputItem.item.personID);
    
  }
  
  // Execute operations on a batch process.
  personDP.batch();
  
});

personDP.on("afterBatch", function(){
  // Reload data from database. This will re-fill table.
  personDP.select()
});
```

ad

as

sdg
