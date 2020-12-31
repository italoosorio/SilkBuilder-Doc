# Silk Application

## App tag `<silk:App>`

```markup
<%@ taglib uri="/WEB-INF/silk.tld" prefix="silk" %>
<%@page contentType="text/html;charset=UTF-8" %>
<silk:App title="" tamplate="" timeout="" >
    ... HTML, Bootstrap styling, and Silk components
</silk:App>
```

```markup
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

```markup
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

