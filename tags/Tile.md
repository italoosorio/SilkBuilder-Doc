# silk:Tile Tag
This tag defines a Silk Tile component which will be used layout items in a tile grid.

## Tag Use
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
The HTML tag used as the Tail wrapper.<br>Default Value: *div*.
### dataSource
Set the dataProvider which will provide the data to render the tail's content.<br>Default Value: *Empty*.
### parentList
The list which will be used to trigger data loading.<br>Default Value: *Empty*.
### cssClass
Set the CSS Class use to stylized the tail container.<br>Default Value: *Empty*.
### columns
Set the number of columns a row could have to simulate a <div> table. This is optional<br>Default Value: *0*.
### rowClass
Set the CSS Class use to stylized the generated row if columns is more than 0.<br>Default Value: *Empty*.
### renderer
The name of the Javascript function which will process the cell data.<br>Default Value: *Empty*.
