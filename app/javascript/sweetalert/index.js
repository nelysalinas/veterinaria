import swal from 'sweetalert2'
import Rails from '@rails/ujs'
// document.addEventListener('turbolinks:load', function(){
//     swal.fire('hello world')
// })

Rails.confirm = function(message, element){
    const swalWithBoostrap = swal.mixin({
        customClass: {
            confirmButton: 'btn btn-primary',
            cancelButton: 'btn btn-warning'
        },
        buttonsStyling: false
    })
    console.log('alert starting')

    swalWithBoostrap.fire({
        html: message,
        showCancelButton: true,
        confirmButtonText: 'Confirmar',
        cancelButtonText: 'Cancelar'
    })
    .then((result) => {
        if (result.value) {
            console.log('Sweetalert Finished')
            element.removeAttribute('data-confirm')
            element.click()
        }
    })
    console.log('alert ended')
}