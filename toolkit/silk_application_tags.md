# Silk Application Tags

## App tag `<silk:App>`

The *silk:App* tag defines a Silk Application and its used is required.  This tag loads the application's environment which is necessary for the other Silk Components to operate. 

```xml
<%@ taglib uri="/WEB-INF/silk.tld" prefix="silk" %>
<%@page contentType="text/html;charset=UTF-8" %>
<silk:App title="" template="" timeout="" role="" >
	...
</silk:App>
```

### Properties

| Name     | Description                                                  | Default   | Required |
| -------- | ------------------------------------------------------------ | --------- | -------- |
| title    | Used to define the web page title which will be displayed by the navigator. | empty     | No       |
| template | The name of the template defining the styles use by the components. This property is only necessary if the application will use a different template from the "default" one which define globally and automatically loaded by the application. | "default" | No       |
| timeout  | Defines if the application will timeout and request for authentication. The default value is "true" and it can be disable by setting property to "false". It is only required if the value will be set to "false". | "true"    | No       |
| role     | Set the roles which are authorize to run the application. It should contain a list of string values separated by commas. These roles will be checked against the user's roles loaded at authentication time. By default it is empty which allows access to anyone log in. The validation process only happens if a value is provided. | empty     | No       |

After setting the *silk:App* tag the developer has two options:

1. Use *silk:Screen* and  *silk:Page* to layout the application using the "multi page" format, or,
2. Continue development in a "single page" format.

## AppHeader tag `<silk:AppHeader>`

This tag should be used only if it becomes necessary to add data into the  `<header>` part of the HTML page for a particular application use. If the code will apply for all applications then this should be added in the default system's template. 

```xml
<silk:AppHeader>
	...
</silk:AppHeader>
```

## Screen tag `<silk:Screen>`

This tag is used to defined the use of *sik:Page* tags to organize the application's Silk Components using responsive panels. This is called "multi page" format. Without this tag the application will work as a "single page" format.

```xml
<silk:Screen>
	... Pages tags goes
</silk:Screen>
```

##  JScode tag `<silk:JScode>`

This tag is used to add JavaScript code in the application.  SilkBuilder will collect all the JavaScript code and put them together regardless of where these had been defined. This is the code which has to be executed  before JQuery is active and accessible by the application. These can be setting global variables and/or functions.

```xml
<silk:JScode>
    ... JavaScript code
</silk:JScode>
```
##  JQcode tag `<silk:JQcode>`

This tag is use to add code using JQuery methods and events in the application. SilkBuilder will collect all the JQuery code and put them together regardless of where these had been defined. The Silk Components uses JQuery to interact with HTML elements. Code to interact with the SILK Components should be define under this tag.

```xml
<silk:JQcode>
    ... JQuery and Silk Components interaction code
</silk:JQcode>
```
## Page tag `<silk:Page>`

In a multi page format application the *silk:Page* tag is used to define the panels (columns) the application will use to place the Silk Components. This tag is part of the Silk Components but is being listed here because of its importance on the application layout and interaction.

```xml
<silk:Page id="" stage="" returnPage=""
    smLayout=""
    mdLayout=""
    rgLayout=""
    lgLayout=""
    xlLayout=""
    xxLayout=""
>
	...
</silk:Page>
```
### Properties

| Name                                                        | Description                                                  | Default | Required |
| ----------------------------------------------------------- | ------------------------------------------------------------ | ------- | -------- |
| id                                                          | The unique page identifier. No other component should use this name. A JavaScript object will be created with the same id name for code interaction. | empty   | Yes      |
| stage                                                       | A short name (A, B, A1, B1) which will be used with the layout properties to define pages behavior. | empty   | Yes      |
| returnPage                                                  | The id of the page to-go when the user clicks on the return "<" icon. This is only necessary if the return page is not the immediate left-located page. | empty   | No       |
| smLayout, mdLayout, rgLayout, lgLayout, xlLayout,  xxLayout | These properties define how the page will interact with other pages when the view port width changes. Each one targets a different view port width size. More explanation on how to use these properties are found in the Page Layout part. | empty   | Yes      |

### The Page Object

When using the *silk:Page* tag SilkBuilder will generate a JavaScript object which can be used to interact with the "page" programatically. This object has  the same name as the page ID.

### Attributes

| Name        | Description                                                  |
| ----------- | ------------------------------------------------------------ |
| id          | The page identifier.                                         |
| $page       | A JQuery object to the "div" tag wrapping the page.          |
| $content    | A JQuery object the "div" tag containing the page content.   |
| stage       | The stage name used by the page                              |
| layout      | An array with the different layout profiles for the page. Each item stores one of the layout profiles: 0=smLayout, 1=mdLayout, 2=rgLayout, 3=lgLayout, 4=xlLayout, and  5=xxLayout. |
| width       | The selected marker from the layout array which is being used to set the page's width. This will change based on the navigator or device screen width. |
| masked      | A boolean indicating if the page has been masked. It returns "true" if the page is masked, and "false" if it is not. A page is masked when a form is on editing mode. |
| index       | The index position in the pages list. Zero (0) is the first element. |
| $backButton | A JQuery object to the page's back button.                   |
| isSingle    | A boolean indicating if the page is the only element in the screen. It return "true" is the page is the only one displayed. This is mostly the case when using the application on mobile devices. However the user decides this behavior using the layout properties. |
| headerWidth | Deprecated                                                   |
| tabsNav     | Returns the *silk:TabNav* which the page is using to be displayed. |

### Methods

| Name            | Description                                                  |
| --------------- | ------------------------------------------------------------ |
| getID()         | Returns the page identifier.                                 |
| resize()        | Forces a resize operation.                                   |
| show()          | Set the page as the "active". The active page will the the visualization priority and its "layout" properly will be use to decided the other related pages distribution. |
| mask(mode)      | Masks the page if the parameters is "true", or unmask the page if the parameters is "false". Masking a page creates a darker layer on other pages to limit interaction to only the selected page. This is the status when editing a form. |
| maskProcess()   |                                                              |
| goBack()        | Focuses the page configured using the tag property "returnPage". Otherwise it focuses the previous page in the pages list. This function uses the property "index" to find the previous page (index-1). |
| setTitle(title) | Sets the pages title. The parameter is the new page title. This only works if the page is using the *silk:Head* tag. |
| getTitle()      | Return the page title. This only works if the page is using the *silk:Head* tag. |
| initPage()      | Initialized the page object. This is automatically executed during the application initialization. This could function could be used if a page is added at runtime and needs to be initialized. |

### Events

| Name   | Description                                                  |
| ------ | ------------------------------------------------------------ |
| onShow | A function which will be be executed after the page become on focused or shown. |
| onHide | A function which will be be executed after the page stops being on focused or hide. |

## Head tag `<silk:Head>`

The *silk:Head* tag defines the page header which is statically located at the top of the page. It will always be there even if the page is scrolled. The page head holds the page title, which is located in the center of the head, and interaction buttons at the left and right of the title.

The "title" it is not a property but the "content" of the *silk:Head* tag. So, the title does not have to be necessarily just a "text".

```xml
<silk:Head homeButton="" logoutButton="true" cssClass="" >
    Title
</silk:Head>
```

### Properties

| Name         | Description                                                  | Default | Required |
| ------------ | ------------------------------------------------------------ | ------- | -------- |
| homeButton   | Will add a button with a "home" icon to the top left of the header. | false   | Yes      |
| logoutButton | Will add a button with a "lock" icon to the top left of the header. | false   | Yes      |
| cssClass     | To add extra css classes to the header "div" wrapper to change it default appearance. | empty   | No       |

## HeadContent tag `<silk:HeadContent>`

```markup
<silk:HeadContent></silk:HeadContent>
```

## Content tag `<silk:Content>`

The *silk:Content* tag determine the area in which the silk components are going to be located to provide data visualization and  user interaction.

```xml
<silk:Content>
    ... Components
</silk:Content>
```
The *silk:Content* is located inside the silk:Page and below the *silk:Head* if used as showed in the code below.

```xml
<silk:Page id="" stage="" returnPage=""
    smLayout=""
    mdLayout=""
    rgLayout=""
    lgLayout=""
    xlLayout=""
    xxLayout=""
>
    <silk:Head >
        ... Header Title
    </silk:Head>
    <silk:Content >
        ... HTML, Bootstray styling, and Silk Components
  </silk:Content >
</silk:Page>
```

## Module tag `<silk:Module>`

The *silk:Module* tag is used to organize the code in different files which will later be referensed by a parent application. A module could be used by multiple applications. The module can hold application and component tags.

```xml
<%@ taglib uri="/WEB-INF/silk.tld" prefix="silk" %>
<%@page contentType="text/html;charset=UTF-8"%>
<silk:Module >

        ... silk:Page component

        ... silk:DataProvider components

  <silk:JScode>
      ... Java Script code here
  </silk:JScode>

    <silk:JQcode>
    ... JQuery code here
    </silk:JQcode>

</silk:Module >
```

The parent application will use the ```<jsp:include>``` tag under the *silk:Screen* tag to reference the module. 

```xml
<silk:App>

    <silk:Screen>
        <jsp:include page="moduleFile1.jsp" flush="true" />
        <jsp:include page="moduleFile2.jsp" flush="true" />
    </silk:Screen>

  <silk:JScode>
        ... Java Script code here
  </silk:JScode>

    <silk:JQcode>
        ... JQuery code here
    </silk:JQcode>

</silk:App>
```

## 
