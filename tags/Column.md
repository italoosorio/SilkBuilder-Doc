# silk:Column
This component is a child of *silk:Table*. It is used to configure the columns displayed by the *silk:Table*. The *silk:Column* content is formatted based on the template contained in the component. The template can support any HTML tag and uses braces or curly brackets "{}" to enclose the name of data fields. The data fields will be replaced by values from the *silk:DataProvider* at a displayed time. The template can have as many data fields as necessary.

## Tag Definition
Used standalone:
```xml
<silk:Column
  id=""
  title=""
  align="left"
  valign="middle"
  width=""
  wrap="false"
  renderer=""
  targetPage=""
  cssClass=""
  draggable="false"
  more="false"
  ordering="false"
  icon=""
  inputType=""
  inputMask=""
  valueColumn=""
  labelColumn=""
  visibleColumn=""
  sortColumn=""
  idColumn=""
  renderIf=""
  cleanIf=""
  distinct=""
/>
```
Used as a container:
```xml
<silk:Column
  id=""
  title=""
  align="left"
  valign="middle"
  width=""
  wrap="false"
  renderer=""
  targetPage=""
  cssClass=""
  draggable="false"
  more="false"
  ordering="false"
  icon=""
  inputType=""
  inputMask=""
  valueColumn=""
  labelColumn=""
  visibleColumn=""
  sortColumn=""
  idColumn=""
  renderIf=""
  cleanIf=""
  distinct=""
>
   Contains: Template containing {fields} and HTML components.
</silk:Column>
```

## Location
The Column tag should be located as a child node of the *silk:Table* tag.
```xml
<silk:Table>
  <silk:Column title="Name" >
    {name}
  </silk:Column >
  <silk:Column title="Position" >
    <i>{position}</i>
  </silk:Column >
</silk:Table>
```

## Properties 
<sup>*</sup>Required property.
### id<sup>*</sup>
The Column's unique identifier.<br>Default Value: *Empty*.
### title
The text to be displayed in the column header. The title will be displayed according to what is configured in the *header* property of the parent *silk:Table* component.<br>Default Value: *Empty*.
### align
The column's horizontal alignment: left, center, right.<br>Default Value: *left*.
### valign
The column's vertical alignment: top, middle, bottom.<br>Default Value: *middle*.
### width
The column's predefine fixed width.<br>Default Value: *Empty*.
### wrap
Defines if the column's content will be wrapped in narrow columns.<br>Default Value: *false*.
### renderer
The name of the  JavaScript function that can be used to render the column content. The function receives three parameters: the row index, the record item, and the column's content. The function should return a text value.<br>Default Value: *Empty*.
### targetPage
The *silk:Page*'s name will be shown when the column is clicked.<br>Default Value: *Empty*.
### cssClass
A CSS class to stylize the column.<br>Default Value: *Empty*.
### draggable
Defines if the column will listen to drag events. This will also show the "drag" icon.<br>Default Value: *false*.
### more
When set to "true," this will set the column to show the "menu" icon.<br>Default Value: *false*.
### ordering
When set to "true," the column header allows data ordering or sorting.<br>Default Value: *false*.
### icon
Defines the Font Awesome icon class to show together with the column's content.<br>Default Value: *Empty*.
### inputType
It terminates the input's type. This property is used when the table's inputs are being built.<br>The values can be set as text, textarea, html,  integer, decimal(x), or the name of the Data Provider property that contains the type to be used.<br>Default Value: *Empty*.
### inputMask
This property determines the input's mask. It is used when the table's inputs are being built.<br>Usually, the mask is determined by the type of input selected. This property should be used if a different input mask is required.<br>The mask uses the (JQuery Mask)[https://igorescobar.github.io/jQuery-Mask-Plugin/] library patterns, with the addition that if using a decimal mask, an extra "D" has to be added to the end of the mask.<br>Default Value: *Empty*.
### valueColumn
The name of the data column that will fill the input.<br>Default Value: *Empty*.
### labelColumn
The name of the data column used to define the input's label.<br>Default Value: *Empty*.
### visibleColumn
This property determines the input's visibility. It is used when the table's inputs are being built.<br>The value is the DataProvider's property, which will decide whether the input should be rendered. The value should be numeric. If it is one (1), the input will be rendered; if it is zero(0), the input will not be rendered.<br>Default Value: *Empty*.
### sortColumn
The column used to sort the dataProvider. This does not work if the dataProvider's property treeData is set to "true".<br>Default Value: *Empty*.
### idColumn
Defines the input's identifier to be used to extract the entered data.<br>Default Value: *Empty*.
### renderIf
It contains the logic sentence defining whether the component should be rendered.<br>The logic statement's explanation is in the <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
### cleanIf
Logic statement indicating the condition in which the column cell should show empty.<br>Keywords: empty.<br>Default Value: *Empty*.
### distinct
The column that will determine the distinct condition.<br>If the column's value of the previous row is equal to the current row, the value will not be rendered.<br>Default Value: *Empty*.
