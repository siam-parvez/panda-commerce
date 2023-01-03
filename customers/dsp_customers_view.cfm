<div class="container">
    <div class="border border-secondary text-center rounded p-3">
        <h1 class="title mb-0 fw-bold">Customers</h1>
    </div>
    <div class="my-4">
        <form action="index.cfm" method="POST" name="AddNewCustomerForm" class="text-end">
            <input type="hidden" name="fuseaction" value="AddNewCustomer">
            <button type="submit" class="btn btn-primary">Add New Customer</button>
        </form>
    </div>
    <div class="table-responsive rounded">
        <table class="table border">
            <cfif isDefined("showCustomers") AND showCustomers EQ "all">
                <thead class="table-custom">
                    <tr>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Actions</th>
                    </tr>
                </thead> 
                <tbody>
                    <tr>
                        <!--- <cfoutput query="getAllCustomersRecords"> --->
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

                                <div class="d-inline-block">
                                    <div class="action-btn delete-btn" for="deleteCustomerSubmit" id="delete-btn">
                                        <svg class="inline-block" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                        </svg>
                                    </div>
                                    <script>
                                        const deleteBtn = document.getElementById("delete-btn");
                                        deleteBtn.onclick = () => {
                                            Swal.fire({
                                            position: 'center',
                                            allowEscapeKey: false,
                                            allowOutsideClick: false,
                                            icon: 'warning',
                                            title: '<span style="color:##000">Are you sure you want to delete this customer?</span>',
                                            showConfirmButton: true,
                                            confirmButtonColor: "#ff6358",
                                            confirmButtonText: 'Confirm',
                                            focusConfirm: false,
                                            showCancelButton: true,
                                            cancelButtonText: 'Cancel',
                                            focusCancel: true,
                                            }).then((result) => {
                                                if (result.isConfirmed){
                                                    document.location.replace('/index.cfm?fuseaction=DeleteCustomer&CustomerID=#CustomerID#')
                                                } else if (result.isDismissed){
                                                    Swal.close();
                                                }
                                            })
                                        }
                                    </script>
                                </div>
                            </td>
                        <!--- </cfoutput> --->
                    </tr>
                </tbody>
            <cfelse>
                <!--- <cfoutput query="getSingleCustomersRecord"> --->

                <!--- </cfoutput> --->
            </cfif>
        </table>
    </div>
</div>