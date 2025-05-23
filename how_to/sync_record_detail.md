# Record Sync

The silk:DataProvider component retrieves records from an SQL Select command configured in an ORM. Then, the silk:Table and silk:Column components visually list the received records and columns. Finally, the silk:Form and silk:Input components display the column's values, which include editing functionality. The diagram below shows the data interaction.

![Bulk Loading](../.gitbook/assets/recordsync_bulk.png)

## Data Loading Considerations

Considering an SQL select returning 400 records with six columns. The data will contain a grid of 2,400 cells. If the *silk:Table* and the *silk:Form* will display the six columns*,* then extracting all the data at once is reasonable. 

However, if the *silk:Table* only shows two columns, there may be better scenarios than extracting the 2,400 cells. To display a *silk:Table* with only two columns, 800 cells are needed (400 rows x 2 columns), which is 60% less data. At any given time, only some rows will become selected for column viewing and possibly editing using the *silk:Form*. The extra columns needed by the *silk:Form* could be loaded when needed.

A sample of 400 records may be a minor example of optimization. However, if the process requires retrieving 2,500 records with 30 columns, then any optimization processe is welcomed.

## Optimized Data Loading

Two *silk:DataProvider components* are required to operate an optimized data loading. One silk:DataProvider to load records for the table with only the columns to be listed, and another loading only the selected record's property. The second silk:DataProvider will have to load each time a row is selected in the table.

![Multiple Loading](../.gitbook/assets/recordsync_multiple.png)

Under this configuration, the select method in the second silk:DataProvider will execute after the Table's on-click event. Under this configuration, the select method in the second silk:DataProvider will execute after the Table's on-click event. Even though this will work, it requires adding an extra silk:DataProvider, and the loading logic into the on-click event code.

## Record Sync Process

SilkBuilder provides the **record sync** process, which uses two distinct but related SQL *select*s to optimize data loading. In the ORM, one SQL *select* is set to fill the table and another to sync extra records needed in a form. All this without adding a different silk:DataProvider in the application code.

### The ORM Configuration

To support record syncing, an extra SQL *select* has to be added to the ORM. This new select should have a name starting with the name of the SQL *select* used to fill the table and ending with the text "-recordSync." 

Add these using the SilkBuilder development interface or editing the ORM XML. Below is an example showing the SQL select in the ORM XML structure.

```XML
<sqlSelect name="list" >
	<![CDATA[
		select
			personID,
			name,
			email
		from testPerson
	]]>
</sqlSelect>

<sqlSelect name="list-recordSync" >
	<![CDATA[
		select
			personID,
			address,
			phone,
			monthlyIncome
		from testPerson
		where personID = $P{personID}
	]]>
</sqlSelect>
```

The SQL select used for the recordSync process should return the table's primary key and the extra columns to synchronize, which will inserted into the selected table's record object.

### The silk:DataProvider tag

The silk:DataProvider component provides the property recordSync, which activates the record sync process when set to "true."

```xml
<silk:DataProvider id="personDP" servicePath="/--/--/outlet" selectName="list" recordSync="true" />
```

Before calling the synchronization process, the silk:DataProvider triggers the "beforeRecordSync" event, which should send the parameter containing the record's primary key or any other necessary data to the SQL select.

```javascript
personDP.on("beforeRecordSync",function(){
  personDP.setParameter("personID","<the personID value here>");
});
```

After setting the property *recordSync* and the method *beforeRecordSync*, the synchronization process will be triggered each time a table's record is selected.

> **The syncronization updates any componect connected to the *dataProvider* like Tables, Forms, and Inputs.**

The record syncronization method will trigger the "afterRecordSync" event each time a records is syncronized. When the silk:DataProvider loads for the first time the events "afterSelect" and "afterRecordSync" will be triggered together. After this only the "afterRecordSync" event will be triggered.

```javascript
personDP.on("afterRecordSync",function(){
  // Operation
});
```

### Manual record syncronization

If the desire is not to synchronize automatically, the property *recordSync* should not be set in the silk:DataProvider, but the event beforeRecordSync has to be set up. Then, the synchronization process can be executed manually, calling the silk:DataProvider's method recordSync().

```javascript
personDP.recordSync();
```

## No Components

If the silk:DataProvider is being used alone without connecting to other components, then before using the method recordSync, the selectedIndex property has to be set with the index of the affected row.

```javascript
personDP.selectedIndex = 10;
personDP.recordSync();
```

