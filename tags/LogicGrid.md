# silk:LogicGrid
The component **silk:DataGrid** monitors value changes, which will be used to determine logic action. It must indicate which object or objects' event will trigger the scanning of the observed values.

It depends on the **silk:LogicDimension** to define the data provider elements to monitor.

## Tag Definition
Used as a container:
```xml
<silk:LogicGrid
  id=""
  trigger=""
>
   Contains: silk:LogicDimension and/or silk:LogicAction elements.
</silk:LogicGrid>
```

## Properties 
<sup>*</sup>Required property.
### id<sup>*</sup>
Unique component identifier.<br>Default Value: *Empty*.
### trigger<sup>*</sup>
Defines the component's event used to trigger the dimension's value scanning process.<br>The expected value follows the format: *component:event*. Example: ```trigger="personList:click"```.<br>This could contain a list of events for the components separated by commas.<br>Default Value: *Empty*.
