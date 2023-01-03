<cfif isDefined("fuseaction") AND fuseaction EQ "ViewCustomers">
    <cfif isDefined("showCustomers") AND showCustomers EQ "all">
        <!--- get all the customer records from the database by this query --->
        <!--- <cfquery name="getAllCustomersRecords" datasource="##"></cfquery> --->
    <cfelse>
        <!--- get single customer record by using the ID/CustomerID from the database by this query --->
        <!--- <cfquery name="getSingleCustomersRecord" datasource="##"></cfquery> --->
    </cfif>
<cfelseif isDefined("fuseaction") AND fuseaction EQ "AddNewCustomer">
    <!--- we might use this for getting some of the dropdown values --->
<cfelseif isDefined("fuseaction") AND fuseaction EQ "EditCustomer">
    <!--- get single customer record by using the ID/CustomerID from the database by this query --->
    <!--- <cfquery name="getSingleCustomersRecord" datasource="##"></cfquery> --->
</cfif>