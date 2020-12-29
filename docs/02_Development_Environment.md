# Development Environment

Development happens in the SilkBuilder web application. To access it you have to have the SilkBuilder url and the account credentials. All this has to be installed and setup by the SILK System Administrator.

![Index_App](/Users/italo/Silk/GitHub/Documentation/SilkBuilder-Doc/docs/assets/SilkBuilder_login.png)

## Dashboard

After login in the the SilkBuilder dashboard is displayed. This screen layout changes based on the user's role. The example below show the admin layout.

![Index_App](/Users/italo/Silk/GitHub/Documentation/SilkBuilder-Doc/docs/assets/SilkBuilder_dashboard.png)

## Systems

Before start developing applications using SilkBuilder a *System Holder* has to be created. SilkBuilder is designed to support multiple "Systems". Each "System" works as an applications holder or repository. 

Use the "Systems" button located in the SilkBuilder dashboard to setup the systems.

![Index_App](/Users/italo/Silk/GitHub/Documentation/SilkBuilder-Doc/docs/assets/SilkBuilder_systems.png)

Clicking in the "+" button will open the system editor to add a new system, and clicking the three-dots icon in the extreme left of a row will to edit the information.

 A system has the following information:

* **System Name**: The name you want to call your system.
* **Test Database**: This is the database used by SilkBuilder to test the application functionality. Ideally this database should be similar to the SilkClient database. However SilkBuilder support having different databases for the development and productions environment.
* **Template**: The name of the template use for the system. Templates are setup by the SilkBuilder admin. If not entered the system will use the SIlkBuilder template.
* **User ID**: The unique identifier for the *silkUserID* which will be use a part of the simulated testing process.
* **Menu Link**: If required here goes the URL to the system's menu which is another application.
* **Role List**: A comma separated list of role-name use for the simulated testing process.

![Index_App](/Users/italo/Silk/GitHub/Documentation/SilkBuilder-Doc/docs/assets/SilkBuilder_Systems_edit.png)

## Target Host

A "System" is connected to "Target Hosts" which are web application servers containing the SilkClients environment. Silk builder uses the "Target Host" to deliver a "System" to multiple servers.

After the "System" has been setup the next step is to create a Target Host. A minimal of one Target Host is necessary because SilkBuilder needs to know the target's "Host Database" to properly define the ORM.

A Target Host has the following information:

* **Host URL**: The URL pointing to the SilkClient application server.
* **Host Database**: The database use by the SilkClient.
* **Variables**: To be used to create ORM variable modifications (Not implemented yet).
* **Private Key**: Use as authentication token during code upload from SilkBuilder to SilkClient.  

![Index_App](/Users/italo/Silk/GitHub/Documentation/SilkBuilder-Doc/docs/assets/SilkBuilder_Systems_target.png)

# System's Elements

Once the "System" and the "Target Hosts" has been configured then we are ready to start the *Silk Development* process. This starts by clicking the *Project* button in the *Dashboard* screen which provide access to the **Silk Builder IDE** application.

![Index_App](/Users/italo/Silk/GitHub/Documentation/SilkBuilder-Doc/docs/assets/SilkBuilder_IDE.png)

The screen is divided in two panels. The first one shows the system's elements and the second one is the code container. The "System" combo box allows to move between the different systems and load its elements.

A *System* hosts *Elements*. An *Element* is a container of other elements. To add a new *Element* click on the "**+**" button located in the top-left of the *Silk Builder IDE* panel. The "**i**" icon allow to open the element editor. Each *Element* has a UUID which will represent it when it gets deployed to *Silk Clients*.

![SilkBuilder_IDE_element](/Users/italo/Silk/GitHub/Documentation/SilkBuilder-Doc/docs/assets/SilkBuilder_IDE_element.png)

## Elements

The *System's Elements* are organized in a pre-define structure which defines how a system and its application gets configured.

### 1. Project

The *Project* is the top element on the elements hierarchy. The Project should group applications with similar objective.

The *Project* hosts the elements: Data Model, Service Poll, and Conceptual Model.

### 1.1 Data Model

The *Data Model* element's objective is to define the database model. This can be used to define the interaction with and existing database, or use to create a new database model.

The *Data Model* elements provide tools to define, setup and document the database. However, the developer could decide to only use it for database communication.

The *Data Model* hosts the elements: ORM Object, Data Diagram, View Object, Operation Object.

### 1.1.1 ORM Object

The *ORM Object* is responsible for the data interaction between the application and the database. The component's long name is "Object Relational Mapping Object". As the name describes the *ORM Object* objective is to map the relational database table and queries into an object with properties and methods.

### 1.1.2 Data Diagram

This is not implemented yet but it is planning to show the ORM Objects relationship in a visual diagram.

### 1.1.3 View Object

 The *View Object* is a code holder for the SQL Create View command. It does not have any operational purpose. This is only necessary for database documentations purposes.

### 1.1.4 Operational Object

The *Operational Object* is a code holder for the SQL code which generates triggers, functions, and store procedures. It does not have any operational purpose. This is only necessary for database documentations purposes.

### 1.2 Service Poll

The *Service Poll* element's objective is to hosts the applications which will interact with the end user. These could be private application which required user authentication, or public applications which do not require authentication.

The *Service Poll* hosts the elements: Private App, Private Service, Private Data Outlet, Public App, Public Service, Public Data Outlet, and Email Template.

### 1.2.1 Private App and Public App

The *Private App* and the *Public App* are the code holders of the application displayed to the user. These is where the developer will put the code to design the interaction with the end user.

A *Private App* will requires user authentication before accessing the application. The *Public App* will not require authentication.

### 1.2.1.1 App Module

The *App Module* helps to fraction the code in small modules for easy code management. These are called from the App using the JSP Include tag: `<jsp:include page="relative URL" flush="true" />` The file URL has to include the .jsp extension.

### 1.2.3 Private Data Outlet and Public Data Outlet

The *Private Data Outlet* and *Public Data Outlet* exist provide configured access to the ORM. The functionality of a *Data Outlet* is to shield the ORM.  the *Data Outlet*  provides an extra layer of security by configuring what an application can or can't access from the ORM.

A "Private Data Outlet" requires user authentication to operate. The *Public Data Access* does not requires authentication.

At execution time the  *Data Outlet* becomes a REST services. This service can be directly accessed by the user, a mobile app, desktop application, or by a web application. By sending the proper JSON structure to the *Data Outlet*, the REST service, the ORM will operate actions in the database. This makes the *Data Outlet* a dangerous service if not configured properly.

By properly creating and configuring multiple *Data Outlet* the developer can shield the ORM's functionality and only provide what each user requires. The ORM structure can be very complex but this will never be directly accessible to the end user except by using a *Data Outlet*. 

### 1.2.5 Private Service and Public Service

These are very similar to an App with the difference that these should not provided a user interface but behave like REST service communicating using POST or GET request and returning RAW data like JSON. The *Service* usually uses JAVA code and will direct access to the ORM file.

A *Private Service* will require authentication. The *Public Service* doesn't requires authentication.

### 1.2.7 Email Template. 

An XML structure which defines email content which will be use to communicate with the end user.

### 1.3 Conceptual Model and Document

These elements are used to create the documentation for the application being developed.

