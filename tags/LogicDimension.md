# silk:LogicDimension
The component **Silk:LogicDimension** defines the component's value, which is monitored by the parent **silk:LogicGrid** element.

## Tag Definition
Used standalone:
```xml
<silk:LogicDimension
  id=""
  valueSource=""
  dataSource=""
  keyColumn="keyValue"
/>
```

## Properties 
<sup>*</sup>Required property.
### id<sup>*</sup>
Component identifier. It could be the target DataProvider's name without the "DP" end-identifier recommended by SilkBuilder's name recommendation. Otherwise, it should be a unique value in the application.<br>Default Value: *Empty*.
### valueSource
Defines the component's value to be monitored.<br>Default Value: *Empty*.
### dataSource
Defines the dataProvider to be monitored. This is used if the ID value does not determine the source.<br>Default Value: *Empty*.
### keyColumn
The name of the column storing the value used in the criteria expression. The default value is "keyValue" which is used by the SilkBuilder variables model.<br>Default Value: *keyValue*.
