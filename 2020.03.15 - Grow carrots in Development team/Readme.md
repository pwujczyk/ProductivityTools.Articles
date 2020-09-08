<!--Category:Article--> 
 <p align="right">
    <a href="http://productivitytools.tech/the-most-expensive-t-shirts-in-the-world/"><img src="Images/Header/ProductivityTools_green_40px_2.png" /><a> 
           <a href="https://github.com/pwujczyk/ProductivityTools.Articles"><img src="Images/Header/Github_border_40px.png" /></a>
</p>
<p align="center">
    <a href="http://productivitytools.tech/">
        <img src="Images/Header/LogoTitle_green_500px.png" />
    </a>
</p>

![](Images/Title.jpg)

# Grow carrots in Development team

Every time visitors (employee from other sites) come to Warsaw office they are guided through open space to better get to know coworkers.  Once, one of my colleagues from different department had a guest. Of course, standard round was made and when she stopped ahead of development teams, she introduced us and, in the moment, asked question: 

- And those are developers. So, Pawel what are you actually do?

As we know each other for some time, question shocked me a lot. I cannot imagine she doesn’t know anything about my team work. I answered:

- Most of the time we grow carrots.

## So, what developers generally do?

Let’s take one some example which will help us to understood developers work. Let’s imagine we are team responsible for creating payments module in the internet banking website. From the user perspective performing transfer is simple operation. Users fills required data and after clicking Send button, transfer is made. 

It seems simple, but to provide clear interface and good user experience we need to perform a lot of tasks. 

## Monthly routine

Every couple of months to the development team, specification of new functionality is sent. Let’s assume that new expectation is to have search field on the money transfer page. Search will help to input required data into the form. The people responsible for transfer page, meet with IT representative and they start describing the functionality. At the beginning it looks very simple: just text field which will autocomplete the recipient of the transfer. 

Of course, nothing is easy. During the analysis we are asking questions like:
- Does the search should look at the history or only in the address book?
- How many items in autocomplete box should be shown?
- Do we accept the mouse click or enter button?
- What set of data will we show in the autocomplete?
- Should we show additional data if we have more than one recipient with the same name (our friend has two accounts)?
- How autocomplete should look like?
- And others…

When all questions will be answered and visualization of the screens will be prepared, “developers” can start working.  It means that development team takes functional specification, graphics and split feature into small tasks which can be distributed across team members. 

Developers is very general term. Usually development teams consist of:

- Frontend developers – responsible for the final webpage view
- Backend developers – responsible for the application business logic
- Testers – responsible for validating if everything is working correctly
- Analysts – responsible for validating if functionality meet business expectations

### Frontend developers

This group is responsible for the visible part of the application so for the icons, colors, nice behavior of the components, pop-ups. They also need to integrate with the services which are exposed by backend developers.

### Backend developers

They are responsible for exposing services. Service is a small functionality which is created to perform task. For example, in our case we could have service which will return list of contacts. 

### Testers 

Everything which will be created by Frontend and Backend developers need to be checked. Testers or Quality Assurance team checks the solution before sharing with the users. They are trying to break the new functionality simulating different users’ behavior. 

### Analysts 

This is supportive role which should find an answer for the topics which are not precise described in the documentation. They also prepare documentation which describes final solution. 

## The process 

Delivery of the functionality can take couple days or even couple months. Development team during this time make repeatable interactions. Backend expose services which frontend uses, and testers validate. 

The process continues until all tasks in given functionality will be finished. All actions overlap so when one functionality is tested another is created at the same time.

![Development process](Images/process.png)         
             
When all requirements are implemented and tested, functionality is treated as finished, and we can share it with end users.

## You grow carrots so probably you also can setup a printer?

Usually we know how things around us are made. We have basic knowledge how houses are built, we know how food is cooked, we know how our cars are assembled. It will be also good to have very basic idea how applications which currently are around us are build.
