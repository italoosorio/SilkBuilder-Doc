# Record Sync

SilkBuilder offers the Record Sync process, utilizing two related but separate SELECT queries to enhance data loading efficiency.

### Default Loading Process

The regular process to retrieve information follows the following logic. The DataProvider component retrieves records from a SELECT query configured in an ORM and Data Outlet. This data is listed using the Table and Column components. If necessary, the Form and Input components will format the values in a form. The diagram below shows the data interaction.

![Bulk Loading](../.gitbook/assets/recordsync_bulk.png)

### Data Loading Considerations

Consider a SELECT query that retrieves 800 records, each with 12 columns. This produces a data grid of 9,600 cells, which must undergo several steps: querying the database, transferring over the network, storing locally, and finally, presenting in the application.

All of this data will be stored in the DataProvider object as an array. The Table may display only 4 columns, while the other 8 columns will be shown in the Form each time a row is selected from the Table. In this case, the Table would display only 3,200 data cells (800 x 4), and the Form would display just 8 data cells at a time. This means only 33% of the data is presented to the user, while 67% remains stored in the array and may never be shown. This is not an efficient loading transaction.

Although 800 records may be considered a small data set, the need to retrieve 2,500 records with 30 columns each (totalling 75,000 data cells) makes optimization beneficial.

### Optimized Data Loading

The Records Sync functionality optimizes data loading by using two SELECT queries: one to retrieve data for the Table, and another to load the data of a selected row, which is then used in the Form. Only one DataProvider component is required.

![Multiple Loading](../.gitbook/assets/recordsync_multiple.png)

With Record Sync enabled, clicking on a Table row triggers a select event in the DataProvider. This event then queries and extracts the necessary data for the Form.

## Setup

Setting up Record Sync requires changes to the ORM, Data Outlet, and DataProvider.

### ORM changes

Prepare a SELECT statement to only return the columns needed to be displayed in the Table. Let's call this select "list".

```sql
select
	personID,
	name,
	email
from testPerson
```
Use a separate SELECT statement to retrieve additional columns for a specified row, using its primary key as a parameter. The query should return the record's primary key and only one record. Let's call this select "record-data"

```sql
select
	personID, -- Returning the primary key is required
	address,
	phone,
	age,
	monthlyIncome
from testPerson
where personID = $P{personID}
```
The returned primary key is used to locate and synchronize the retrieved columns in the DataProvider data array.

### Data Outlet

Make both SELECT statements available to the Data Outlet; otherwise, no data will be retrieved.

### DataProvider tag

In the DataProvider tag, the "selectName" property should be set to the select name that retrieves the data for the Table. The 'recordSync' property is assigned to the selected name that retrieves the record's data.

```xml
<silk:DataProvider id="personDP" servicePath="/--/--/outlet" selectName="list" recordSync="record-data" />
```

### Set Parameters

Utilize the "beforeRecordSync" event to specify primary keys and, if needed, other parameters for the "recordSync" SELECT statement.

```javascript
personDP.on("beforeRecordSync",function(){
  personDP.setParameter("personID","<the personID value here>");
});
```

### Event

Each time the Record Sync method runs, it triggers the "afterRecordSync" event as a record is synchronized. If you call the DataProvider’s "select" method, both the "afterSelect" and "afterRecordSync" events are triggered at the same time. After this initial trigger, only the "afterRecordSync" event is subsequently fired as records are synchronized.

```javascript
personDP.on("afterRecordSync",function(){
  // Operation after syncronization
});
```

## Execution

Clicking a Table row triggers the "recordSync" method, adding any needed extra query columns to the DataProvider’s array and displaying them in the form if required.

> *The recordSync process updates all components connected to the DataProvider, including Tables, Forms, and Inputs.*

Once set up, the Record Sync functionality runs transparently to the developer and the end user.

## Manual Synchronization

If the desire is not to synchronize automatically, the property "recordSync" should not be set in the DataProvider. All other changes remain.

The DataProvider's "recordSync()" method is used to execute the synchronization manually. This method takes as a parameter the SELECT name querying the extra columns data. 

```javascript
personDP.recordSync("record-data");
```

## No Components

When the DataProvider is used independently and not connected to other components, set the selectedIndex property to indicate the index of the affected row. After doing so, execute the "recordSync" method.

```javascript
personDP.selectedIndex = 10;
personDP.recordSync("list-record");
```

