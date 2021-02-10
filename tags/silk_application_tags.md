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



## AppHeader tag `<silk:AppHeader>`

```xml
<silk:AppHeader>
	...
</silk:AppHeader>
```

## Screen tag `<silk:Screen>`

```xml
<silk:Screen>
	... Pages goes here
</silk:Screen>
```

 

```xml
<%@ taglib uri="/WEB-INF/silk.tld" prefix="silk" %>
<%@page contentType="text/html;charset=UTF-8" %>
<silk:App title="" tamplate="" timeout="" >

    <silk:Screen >
        ... silk:Page components
    </silk:Screen >

        ... silk:DataProvider components

    <silk:JScode>
        ... Java Script code here
    </silk:JScode>

    <silk:JQcode>
        ... JQuery code here
    </silk:JQcode>

</silk:App>
```

Using modules to organize code

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

## Module tag `<silk:Module`

```markup
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

## Page tag `<silk:Page>`

```markup
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

## Head tag `<silk:Head>`

```markup
<silk:Head homeButton="" logoutButton="true" cssClass="" >
    Title
</silk:Head>
```

## HeadContent tag `<silk:HeadContent>`

```markup
<silk:HeadContent></silk:HeadContent>
```

## Content tag `<silk:Content>`

```markup
<silk:Content>
</silk:Content>
```

