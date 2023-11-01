# Content Template

Some Silk Tags use their HTML content to define temples to show the data combined with HTML. The tag are:

- silk:Column's content
- silk:Tile's content
- silk:Input using the template property

This method allows for the creation of elaborated HTML structures.

## Data Binding

Data binding is the process that establishes a connection between the app UI and the data it displays. SilkBuilder provides data values to the components by data-biding to the DataProvider object.

The data-biding with the HTML content is done in the template using curly brackets "{ }" or double curly brackets "{{ }}," containing the name of the property to be displayed.

A simple data binding sample could be by using a silk:Column to display a cell containing the firstName property of the selected record in the DataProvider.

```xml
<silk:Column>{firstName}</silk:Column>
```

A little more elaborated sample could include more data in the cell.

```xml
<silk:Column>
  <div>{firstName} {lastName}</div>
  <div>Birdthday: {birthday}</div>
</silk:Column>
```

In this case, the table cell will show the firstName and lastName inside a div tag and the birthday in a second div tag, simulating internal rows.

A more complex sample could be the inclusion of the Card Bootstrap component in a silk:Tile. This sample will use double curly brackets.

```xml
<silk:Tile id="eventList" dataSource="eventDP" >
  <div class="card" style="width: 18rem;">
    <img src="{{imageURL}}" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">{{eventName}}</h5>
      <p class="card-text">{{description}}</p>
      <a href="/event/location/{{eventID}}" class="btn btn-primary">More...</a>
    </div>
  </div>
</silk:Tile>
```

This template will use the properties: imageURL, eventName, description, eventID.

## Data Formating

The data extracted from the *DataProvider* during the data binding process can received formating. This is done adding the formating pattern after the property name separaated by a pipe symbol "|".

```xml
{startDate|<formating-pattern>}
```

Silk Builder provides common patterns to help formating during development:

```
{startDate|date} - Renders the date as MM/dd/yyy
{totalStudent|numeric} - Renders number as ##'###,###
{totalStudent|number} - Renders number as ##'###,###
{totalStudent|integer} - Renders number as ##'###,###
{salary|decimal} - Renders decimal number as ##'###,###.00
{fileZize|byte} - Renders as ##MB
```

Patterns can also be created manually using [this guide](https://github.com/asual/jquery-format).

```
{startDate|MM/dd/yyy} {salary|##'###,###.00}
```

## Data Renderer

It is possible to utilize a function if the data formatting patterns fall short of expectations,  to create the desired effect. This is used in the following way:

```javascript
{firstName|fn:formatName}
```

In this case, the function should receive the property value and return a text value.

```javascript
/*
 * Function will wrap the firstName in bold if the name is "Mary".
 */
formatName = function(value){
  if( value=="Mary" ) return "<b>"+value+"</b>";
  return value;
}
```

## Logical Data Rendering

It is possible to show/hide HTML tags in a template using JavaScrip logical statements. For this, it is necessary to use the CSS class *silk-if* and the property *data-if* to set the rational criteria.

In the example below the DIV containing the *firstName* will only be rendered if the property *age* is more than 10.

```xml
<div class="silk-if" data-if="{age}>10" >{firstName}<div>
```

It is essential to understand that this is only a visualization restriction and not a data access restriction. The firstName data is still stored in the DataProvider, just not visualized. If it is crucial to refrain from downloading the information to the client, then it is essential to configure the data restriction settings in the server and SQL query.
