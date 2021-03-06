
<%@ page import="com.demo.Car" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Car</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Car List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Car</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Car</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${carInstance}">
            <div class="errors">
                <g:renderErrors bean="${carInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${carInstance?.id}" />
                <input type="hidden" name="version" value="${carInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="make">Make:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'make','errors')}">
                                    <input type="text" name="make" id="make" value="${fieldValue(bean:carInstance,field:'make')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="model">Model:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'model','errors')}">
                                    <input type="text" name="model" id="model" value="${fieldValue(bean:carInstance,field:'model')}" />
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
