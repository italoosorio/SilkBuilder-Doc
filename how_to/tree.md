# **Data Trees**

Data trees are a visual representation of hierarchical information formed by a root branch containing multiple branches and sub-branches.

## **Data Requirements**

To display a tree using SilkBuilder it is required for each record, or branch, in the table to have this information:

- The branch's unique identifier. The record's primary key in most cases.
- The parent's unique identifier. It will be empty for the root branch.
- The level. Even though the "level" can be determined by analyzing the parental connection, SilkBuilder requires this in the database to facilitate tree management. The level does not need to start at zero (0) but has to increase as the branches go deeper.

A sample of a table storing a data tree will have this basic structure:

```sql
-- mySQL
create table treeData (
	branchID int primary key auto_increment,
	parentID int,
	level tinyint,
	branchName varchar(100)
);
create index treeData_parent on treeData(parentID);
```

## The ORM

The ORM provides properties to indicate the "role" the columns will play in a data tree configuration. The ORM can host regular selects and data tree selects. The "data tree selects" have to have the same role columns configured in the ORM.

Tree configuration in the ORM's XML file uses the properties "root," "parent," and "level." with the values "true" or "1". A column can only have one of these roles.

In the sample below, the properties "parent" and "level" are being used. The property "root" is not being used. The "root" property marks the non-primary-key column holding the branch's unique identifier.

```xml
<table name="treeData" >
	<column name="branchID" type="I" pk="1" />
	<column name="parentID" type="I" secure="1" parent="1" />
	<column name="level" type="I" level="1" />
	<column name="branchName" type="S" />
</table>
```

When using the SilkBuilder's development interface, the columns' configuration provides the option "Alternative Roles," which has the following options:

- None
- Root (If different that Primary Key)
- Parent
- Level

![Column Roles](../.gitbook/assets/tree_roles.png)

## The Select

When creating a SQL select for a data tree, it is essential to include the columns defined as "pk" (root), "parent," and "level." The table has to be ordered by "level" and then by the "parent"; other ordering after this.

Below is an example of editing the SQL select directly in the XML file. 

```xml
<sqlSelect >     
	<![CDATA[
		select
			branchID,
			parentID,
			level,
			branchName
		from treeData
		order by level, parentID, branchName
	]]>
</sqlSelect>
```

When using the SilkBuilder, the "select" has to be added using the ORM user interface.

![Tree Select](../.gitbook/assets/tree_select.png)

Ordering by "level" is important because the first level is considered the root branch. A data tree should have only one root; in certain conditions, it is possible to have multiple records at the top level.

Ordering by "parent" helps with post-processing performance. The SQL does not return a tree structure but a linear list or records order by level. After downloading the data, the client will process it into a hierarchical structure by searching for the children using the "parent" column.

## The ROOT branch

A table configured as a data tree will need the first record as the root branch, usually with "level" zero (0). Children will be added to the "root" branch. The root branch usually does not need to be edited.

If the data does not contain a root branch, as is the case when the data depends on a foreign key, the root branch has to be available. For these cases, it is better to add the root record using an SQL "union."

```sql
select
	0 as branchID,
	0 as parentID,
	0 as level,
	'root' as branchName
union
select
	branchID,
	parentID,
	level,
	branchName
from treeData
where fkColumn=12
order by level, parentID, branchName
```

Another way to add the root branch is by using the *silk:DataProvider* event *processLoadedData*.

```javascript
treeDP.on("processLoadedData",function(returnObject){
  var rootItem = new Object();
  rootItem["branchID"] = 0;
  rootItem["parentID"] = 0;
  rootItem["level"] = 0;
  rootItem["branchName"] = "root";
  
  return returnObject.data.unshift(rootItem);
});
```

This method is limited only to the application implementing it. This situation is not convenient if the data tree gets used in multiple applications. Also, if the SQL select returns many records, this method adds an extra processing step. This method can also create conflict with encrypted columns. Use this with caution.

## The silk:DataProvider

The *silk:DataProvider* has the property *treeData* which has to be set to "true" to process data trees.

```xml
<silk:DataProvider id="treeDP" servicePath="/--/--/" treeData="true" />
```

Any other configuration is similar to a regular select processing.

## The silk:Table tag

From the *silk:Table* configuration, there is not much change. Visually, the table will distribute the data in a tree structure.

![Tree default icons](../.gitbook/assets/tree_sample.png)

The sample shows the default icons. To change the icons you can use the *iconClose*, *iconOpen*, and *iconEmpty*.

```xml
<silk:Table id="treeList" dataSource="treeDP"
	iconOpen="far fa-minus-square fa-lg" iconClose="far fa-plus-square fa-lg" iconEmpty="fas fa-square-full"
>
```

It is also posible to change the icons using JavaScript.

```javascript
treeList.setTreeIcons("far fa-minus-square fa-lg", "far fa-plus-square fa-lg", "fas fa-square-full");
```

The sample below show the tree with the custom icons.

![Tree custom icons](../.gitbook/assets/tree_icons.png)

The property *rootLabel* is used to set a custom root label to overwrite the name returned by the database. This is especially useful for translation when the root branch is not part of the database.

By default, the tree displays with all the branches open or uncollapsed. The property *collapsed level* configures the "branches" level initially collapsed.

Apart from the tree configurations, the *Table* functionality remains the same.

## The silk:Form tag

The only difference with the *silk:Form* functionality when editing trees is that the *insert* will add a new child branch to the selected branch. 

