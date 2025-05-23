# silk:Tile
The component **silk:Tile** distributes the data in a grid layout. The data is provided by a **silk:DataProvider** component.

## Tag Definition
Used as a container:
```xml
<silk:Tile
  id=""
  tag="div"
  dataSource=""
  parentList=""
  cssClass=""
  columns="0"
  rowClass=""
  renderer=""
>
   Contains: HTML template.
</silk:Tile>
```

## Properties 
<sup>*</sup>Required property.

### id<sup>*</sup>
The tile's unique identifier.<br>Default Value: *Empty*.
### tag
The HTML tag used as the Tail wrapper. If not provided, it uses "div"<br>Default Value: *div*.
### dataSource
Set the name of the **silk:DataProvider** providing the data to render the tail's content.<br>Default Value: *Empty*.
### parentList
The list which will be used to trigger data loading.<br>Default Value: *Empty*.
### cssClass
Set the CSS Class used to stylize the tail container.<br>Default Value: *Empty*.
### columns
Set the number of columns a row could have to simulate a <div> table. This is optional<br>Default Value: *0*.
### rowClass
Set the CSS Class used to stylize the generated row if columns are more than 0.<br>Default Value: *Empty*.
### renderer
The name of the JavaScript function that will process the cell data.<br>Default Value: *Empty*.
