# silk:Module Tag
The *silk:Module* tag is used to organize the code in different files which will later be referensed by a parent application. A module could be used by multiple applications. The module can hold application and component tags.

Check the documentation on how to use modules for a detail explanation.

## Tag Use
Used as a container:
```xml
<silk:Module>
   Contains: Silk page tags.
</silk:Module>
```
The module can hold application and component tags.
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
