<div class="container">
    <div class="border border-secondary text-center rounded p-3">
        <h1 class="title mb-0 fw-bold">Add New Customer</h1>
    </div>
    <div class="table-responsive rounded mt-4">
        <table class="table border">
            <thead class="table-custom">
                <tr>
                    <th>Title</th>
                    <th>First Name</th>
                    <th>Middle Name</th>
                    <th>Last Name</th>
                    <th>Actions</th>
                </tr>
            </thead> 
            <tbody>
                <tr>
                    <td>#FisrtName# #LastName#</td>
                    <td>#PhoneNumber#</td>
                    <td>#EmailAddress#</td>
                    <td>#City#, #State#</td>
                    <td class="flex">
                        <form action="index.cfm" method="POST" name="ViewCustomerForm" class="d-inline">
                            <input type="hidden" name="fuseaction" value="ViewCustomers">
                            <input type="hidden" name="CustomerID" value="#CustomerID#">
                            <input type="hidden" name="showCustomers" value="single">
                            <input type="submit" class="d-none" id="viewCustomerSubmit">
                            <label class="action-btn view-btn" for="viewCustomerSubmit">
                                <svg class="inline-block" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
                                </svg>
                            </label>
                        </form>

                        <form action="index.cfm" method="POST" name="EditCustomerForm" class="d-inline">
                            <input type="hidden" name="fuseaction" value="EditCustomer">
                            <input type="hidden" name="CustomerID" value="#CustomerID#">
                            <input type="submit" class="d-none" id="editCustomerSubmit">
                            <label class="action-btn edit-btn" for="editCustomerSubmit">
                                <svg class="inline-block" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z"></path>
                                </svg>
                            </label>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>