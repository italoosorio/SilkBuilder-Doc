# silk:Table Tag
The Table component serves as a data visualizer and also to capture the user interaction. The Table uses the DataProvider to display information loaded from the server.

## Tag Use
Used as a container:
```xml
<silk:Table
    id=""
    title=""
    cssClass=""
    dataSource=""
    autoSelect="true"
    selectable="true"
    targetPage=""
    header="fixed"
    treeData="undefined"
    rootLabel=""
    noRoot="false"
    iconOpen="far fa-folder-open fa-lg"
    iconClose="far fa-folder  fa-lg"
    iconEmpty="far fa-file fa-lg"
    collapsable="true"
    collapsedLevel="100"
    parentList=""
    searchable="false"
    dpSearch="false"
    input="false"
    init="true"
>
   Contains: silk:Column components.
</silk:Table>
```
## Properties
This tag has the following properties.
|Name|Description|
|--|--|
|id<sup>*</sup>|The component unique identifier.<br>Default Value: *Empty*.|
|title|The tables's title.<br>Default Value: *Empty*.|
|cssClass|A list of extra CSS classes styling the table.<br>Default Value: *Empty*.|
|dataSource|The id of *silk:DataProvider* use to fill the table content.<br>Default Value: *Empty*.|
|autoSelect|Set if the first table row will be auto selected.<br>Default Value: *true*.|
|selectable|Determines if the rows will change their background when selected.<br>Default Value: *true*.|
|targetPage|The page which will be selected/show when a row is clicked.<br>Default Value: *Empty*.|
|header|This indicates how the header will be placed. The values are:<br>- fixed: Attaches the header to the top of the page.<br>- inline: Attaches the header to the top of the table location.<br>- none: No header.<br>Default Value: *fixed*.|
|treeData|If the table should process the data as a data tree. This value is usually inherit from the *DataProvider* but can be overwrite with this property is necessary.<br>Default Value: *undefined*.|
|rootLabel|Set the label/name of the tree's root. This only works if *dataProvider* is set to *treeData="true"*.<br>Default Value: *Empty*.|
|noRoot|Sets the root to be treated like a "regular row". Only works in data tree mode.<br>Default Value: *false*.|
|iconOpen|The Font Awesome classes defining the open branch icon. Only works in data tree mode.<br>Default Value: *far fa-folder-open fa-lg*.|
|iconClose|The Font Awesome classes defining the close branch icon. Only works in data tree mode.<br>Default Value: *far fa-folder  fa-lg*.|
|iconEmpty|The Font Awesome classes defining the empty branch icon. Only works in data tree mode.<br>Default Value: *far fa-file fa-lg*.|
|collapsable|Set the branch to be able to be collapse or uncollapse. Only works in data tree mode.<br>Default Value: *true*.|
|collapsedLevel|Indicates which level the branch will initially displayed collapsed. Only works in data tree mode.<br>Default Value: *100*.|
|parentList|The id of the *silk:Table* which when a row is clicked it will trigger a *load* event.<br>Default Value: *Empty*.|
|searchable|Opens a text input to filter the table data based on the entered text. By default it filter the loaded data. When *dpSearch="true"* it will search in the database.<br>Default Value: *false*.|
|dpSearch|Indicates if the search process will happen in the loaded data or will trigger a new data load.<br>Default Value: *false*.|
|input|Indicates if the table will initialize in "data entry" mode.<br>Default Value: *false*.|
|init|Indicates if the table should initialize at creation time. This property should be set to *true* if it will be initialized programmatically.<br>Default Value: *true*.|

<sup>*</sup>Required property.
## Location

The Table tag should be located as a child node of the layout tag *silk:Content*.

```xml
<silk:Content>
  <silk:Table id="dataList" source="dataDP" >
    <silk:Columns/>{dataField}<silk:columns/>
  </silk:Table>
</silk:Content>
```
