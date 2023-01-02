<cfinclude template="/common/dsp_header.cfm" >

<cfif isDefined(fuseaction) AND fuseaction EQ "ViewCustomers">
    <cfinclude template="qry_customers.cfm">
    <cfinclude template="dsp_customers_view.cfm">

<cfelseif isDefined(fuseaction) AND fuseaction EQ "AddNewCustomer">
    <cfinclude template="dsp_customers_new.cfm">

<cfelseif isDefined(fuseaction) AND fuseaction EQ "DeleteCustomer">
    <cfinclude template="act_customers_delete.cfm">
    <cfinclude template="qry_customers.cfm">
    <cfinclude template="dsp_customers_view.cfm">

<cfelseif isDefined(fuseaction) AND fuseaction EQ "EditCustomer">
    <cfinclude template="dsp_customers_edit.cfm">

<cfelseif isDefined(fuseaction) AND fuseaction EQ "SaveCustomer">
    <cfinclude template="act_customers_save.cfm">
    <cfinclude template="qry_customers.cfm">
    <cfinclude template="dsp_customers_view.cfm">
</cfif>

<cfinclude template="/common/dsp_footer.cfm" >