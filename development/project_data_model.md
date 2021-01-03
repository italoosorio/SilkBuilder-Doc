# Project, Data Model, and ORM

## The Project

The *Project* primary objective is to host *Services*. Before creating *Services* a *Project* as to be first created. It is important to remember that multiple *Services* can be hosted in a *Project*. A *Project* is the best way to group *Services* sharing a common objective.

The project also host the *Data Model* and the *Conceptual Model* elements.

*Projects* are manage inside the Silk Builder IDE. To create on *Project* select the *System* being used, select the projects root element and click on the plus button located at the top right of the frame. Enter the project's name and click on the Submit button.

![Project Creation](../.gitbook/assets/sample_project.jpg)

## The Data Model

The *Data Model* hosts the *ORM* element which are use to configure the database access.

To access database objects using the *ORM* element the *Project* has to have at least one *Data Model*. Depending on the complexity of the task a *Project* can have multiple *Data Models* to properly organize and manage the *ORM* elements.

It is possible to create *Services* without a *Data Model*. However these services will not be able to access database objects using the *ORM* elements. On cases like these the developer has take the responsibility to develop its own database connectivity, or use external services to interact with data.

To create a *Data Model* select the *Project*, "Sample" in this case, and click on the plus button at the top right of the frame. For Type select "Data Model" and enter a name. This name helps to "categorize" the *ORM*s. For our sample we will use the name "Data Model" considering that this is a small project. After entering the name click on the Submit button and the *Data Model* element will be added.

![Data Model Creation](../.gitbook/assets/sample_data_model.jpg) 

## Creating the ORM Elements

The Object Relational Model (ORM) element defines the interaction with database Tables. Each ORM is connected to one table to apply insert, updates, and deletes. However the ORM allow to defines selects, triggers, and operations which can affect any table. It is the data modeler responsibility to limit the ORM interaction around the table it represent.

To create a ORM element select a *Data Model* and click in the plus button at the top right of the frame. Select Type "ORM Element" and enter the name which is recommended to be the same as the table the ORM connects. After this click on the "Submit" button.

Four our sample we need to create an ORM for the Person and Category tables.

![Person ORM Creation](../.gitbook/assets/sample_orm_person.jpg)

![Category ORM Creation](../.gitbook/assets/sample_orm_category.jpg)

## ORM Configuration

To configure an ORM Element click on the arrow circle located at the right of the ORM element row (a). This will open the ORM Editor in a new Tab (b). Select the "TABLE>" row (c) and click on the edit button located a the top right of the "Table Info" frame (d). This will open the Table editor.

![ORM Editor](../.gitbook/assets/sample_orm_person_1.jpg)

In the Table editor we configure the table which is going to received the ORM action. First you have to enter the "Table Name" as it is in the database (a). Then select the "Primary Key Mode" (b). For our sample this is set to "Auto increment by database". The other options are "SQL Query", "Value Provided", and "UUID auto generated". The next option is  to enter the "Database Scheme" (c). This is use to properly locate the table in the database server.

The ORM can be configured to target multiple database servers (d). This is configured when a *System* gets created. If that is the case an extra tab will be displayed for each targeted database. The first tab will have the database used for testing purposes. On this scenario the data modeler will have to enter the "Database Schema" for each database.

The ORM provides fields to document the data model. The field "Table Description" (e) is used for this purpose. This text will be later combine when the  ORM documentation gets generated.

After the table's information has been entered click on the "Submit" button (f) to save this into the ORM structure.

![Table Editor](../.gitbook/assets/sample_orm_person_2.jpg)

It is important to remember that any "Submit" action only saves the changes in the ORM structure. You have to click on the ORM save button to permanently save the ORM structure into the project.

![ORM Save Button](../.gitbook/assets/sample_orm_person_3.jpg)

