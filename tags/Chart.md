# silk:Chart Tag
This tag defines a Silk Chart component which implements the ChartJS object from https://www.chartjs.org.

## Tag Use
Used standalone:
```xml
<silk:Chart
  id=""
  title=""
  titlePlace="top"
  type="bar"
  dataSource=""
  labelColumn=""
  dataColumn=""
  backgroundColor="#1886C1"
  grid="true"
  legend="false"
  renderIf=""
  parentList=""
  indexAxis="x"
  tooltip="false"
  dataLabels="true"
/>
```

## Properties 
<sup>*</sup>Required property.
### id<sup>*</sup>
The charts's unique identifier.<br>Default Value: *Empty*.
### title
Used to define the chart title.<br>Default Value: *Empty*.
### titlePlace
Sets the title's position<br>Default Value: *top*.
### type
Sets the chart's type using values from https://www.chartjs.org/docs/latest/charts/area.html.<br>Default Value: *bar*.
### dataSource<sup>*</sup>
Sets the dataSource which will be used to populate the chart.<br>Default Value: *Empty*.
### labelColumn<sup>*</sup>
Sets the column from the dataSource which will provide the label test.<br>Default Value: *Empty*.
### dataColumn<sup>*</sup>
Sets the column from the dataSource which will provide the data values.<br>Default Value: *Empty*.
### backgroundColor
Sets the chart background color.<br>Default Value: *#1886C1*.
### grid
Sets if chart will show a grid.<br>Default Value: *true*.
### legend
Sets if the char will show the legend.<br>Default Value: *false*.
### renderIf
The logic sentence which will define if the button should be rendered. The explanation on how to use the logic statement is found in <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
### parentList
Set the list which will trigger the loading process<br>Default Value: *Empty*.
### indexAxis
Sets the chart index axis.<br>Default Value: *x*.
### tooltip
Sets if the tool tips will be displayed<br>Default Value: *false*.
### dataLabels
Sets if data labels will be displayed.<br>Default Value: *true*.
