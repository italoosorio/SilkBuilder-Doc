# Silk Application



## The App tag ```<silk:App>```

```xml
<%@ taglib uri="/WEB-INF/silk.tld" prefix="silk" %>
<%@page contentType="text/html;charset=UTF-8" %>
<silk:App title="" tamplate="" timeout="" >
	... HTML, Bootstrap styling, and Silk components
</silk:App>
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



## The Module tag ```<silk:Module```

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

## The SILK tag ```<silk:Page>```

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

## The Head tag ```silk:Head```

```xml
<silk:Head homeButton="" logoutButton="true" cssClass="" >
	Title
</silk:Head>
```

## The HeadContent tag ```silk:HeadContent```

```xml
<silk:HeadContent></silk:HeadContent>
```

## The Content tag ```silk:Content```

```xml
<silk:Content>
</silk:Content>
```



