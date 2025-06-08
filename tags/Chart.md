# silk:Chart
This tag defines a Silk Chart component that implements the ChartJS object from https://www.chartjs.org.

This class works standalone and is not a container.

## Tag Definition
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
### Data Source

The data is provided by a **silk:DataProvider**, which should contain two columns: one with labels and another with values.

```xml
<silk:Chart id="chart" dataSource="dataDP" labelColumn="state" dataColumn="population" />
<silk:DataProvider id="dataDP" servicePath="..." />
```

### JavaScript Object

SilkBuilder also creates a companion JavaScript object using the [ChartJS](..\js_object\ChartJS.js.md) class to provide JavaScript programmatic interaction. This object will have the same name as the component's ID.

```xml
<silk:JQcode>
chart.on("click", function(index, value, label){
  silk.alert(label+":"+value);
  });
</silk:JQcode>
```

## Properties 
<sup>*</sup>Required property.
### id<sup>*</sup>
The chart's unique identifier.<br>Default Value: *Empty*.
### title
Used to define the chart title.<br>Default Value: *Empty*.
### titlePlace
Sets the title's position<br>Default Value: *top*.
### type
Sets the chart's type. The values can be: bar, line, pie, and doughnut. Uses values from https://www.chartjs.org/docs/latest/charts/.<br>Default Value: *bar*.
### dataSource<sup>*</sup>
Sets the dataSource providing the data to be used to populate the chart.<br>Default Value: *Empty*.
### labelColumn<sup>*</sup>
Sets the column from the dataSource providing the chart's labels.<br>Default Value: *Empty*.
### dataColumn<sup>*</sup>
Sets the column from the dataSource providing the chart's values.<br>Default Value: *Empty*.
### backgroundColor
Sets the chart background color.<br>Default Value: *#1886C1*.
### grid
Indicates if the chart will show a grid.<br>Default Value: *true*.
### legend
Indicates if the chart will show the legend.<br>Default Value: *false*.
### renderIf
It contains the logic sentence defining whether the component should be rendered.<br>The logic statement's explanation is in the <a href="how_to/server_code_logic.md">Server Code Logic</a> documentation.<br>Default Value: *Empty*.
### parentList
Defines the list triggering the chart's loading process.<br>Default Value: *Empty*.
### indexAxis
Sets the chart index axis.<br>Default Value: *x*.
### tooltip
Sets if the tool tips will be displayed<br>Default Value: *false*.
### dataLabels
Sets whether data labels will be displayed.<<br>Default Value: *true*.
