# Plain Application

Before starting the process of building applications using SilkBuilder the development environment should be ready.

* The *System* and the *Project* hosting the application has to be created. Check here for this process [here](development_environment.md).
* If ORM are going to be used to interact with data, these had to be created as well. Check here for this process [here](project_data_model.md).

## The Service Pool

A *Service Pool* is the container for web services. These services can be private or public. A private service is accessible  after authentication. A public service does not requires authentication.

A *Service Pool* can have multiple services which can be private and/or public. It is a good development practice to group related applications under a common *Service Pool*. It is not a advisable to create a *Service Pool* for each application the system needs.

To learn about the different kinds of services check [System Elements](system_elements.md#service-poll) chapter.

To create a *Service Pool* select the *Project* and click on the Plus button at the top right of the frame. Select the type "service Pool", enter the name and click on the Submit button. This service will host the applications related to Person operations.

![Service Pool](../.gitbook/assets/sample_plain_1.jpg)

## Naming Convention

It is recommended to used single words when naming *Service Pools* and *Services*. In the of using multiple words the use of *PascalCase* format is advisable. If multiple words are separated by spaces then the spaces will be replaced by underscore "_" in the service URL.

## The Service URL 

Any service created in SilkBuilder is accessible using URLs which are generated using these formats:

**Private Service**

```
https://[Tomcat_context_path]/service/[Project_Name]/[Service_Pool_Name]/[Service_Name]
```
**Public Service**

```
https://[Tomcat_context_path]/link/[Project Name]/[Service Pool Name]/[Service Name]
```

### The "index" service

If the *Service Pool* has a *Service* named "index" this will be called by default if the [Service_Name] is not included. In this case the URLs would be.

```
https://[Tomcat_context_path]/service/[Project_Name]/[Service_Pool_Name]
https://[Tomcat_context_path]/link/[Project Name]/[Service Pool Name]
```

### Sample URLs

For the "Sample" project the URL to accesses its services will follow this pattern. 

```
https://hostname.com/Sample/Person/[Service_Name]
```

*[Service_Name] no required if the service is named "index".

## The Private App Service

To create a *Private App* select the *Service Pool* and click in the Plus button at the top right of the frame. Select the type "Private App", add the name "Plain" for our sample and click on the "Submit" button. To edit the app click on the arrow-circle icon located at the extreme right of the row. This will open the App Editor.

![App Service](../.gitbook/assets/sample_plain_2.jpg)

When the  App Editor tab open you will see these elements: 

1. The editor tab. This will be among other open tabs.
2. The Save button. This button will change to red color when changes had been applied to the code. Clicking on it will save the code into the project.
3. The Run button. This button will execute the application in a new tab. Once the application is open in a new tab refreshing the page will re-run the application.

The first time an *app* is open it will load the default "basic code" to frame an SilkBuilder application. This code contains the following:

4. Calls the *taglib* library. This loads the Silk JSP customs tags used to build SilkBuilder based applications.
5. Sets the page content type to UTF-8 for code text compatibility.
6. The *silk:App* tag which creates the SilkBuilder application wrapper.
7. The *silk:Screen* tag which activates the use pages to layout application.

![App Editor](../.gitbook/assets/sample_plain_3.jpg)

To create a **plain** application remove the ```<silk:Screen/>``` and add the line ```<h1>Hello World....</h1>``` under the ```<silk:App``` tag. 

![App Code](../.gitbook/assets/sample_plain_4.jpg)

After this click on the Run button and it will open new tab in the navigator with the URL https://mydomain/service/Sample/Person/Plain.

![App Running](../.gitbook/assets/sample_plain_5.jpg)

At this level the developer can add more HTML code, stylize using Bootstrap, and use JQuery to modify the DOM.