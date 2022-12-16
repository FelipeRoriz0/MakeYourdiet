const $campoCel = document.querySelector('cel')


$campoCel.addEventListener('focusin', (event) => {
    $valorDoCel = event.target.value;
    $campoCel.value = $valorDoCel.replace(/[.-]/g, "")
    
})
$campoCel.addEventListener('focusout', () => {
    /*$valorDoCel = event.target.value;*/
    $campoCel.value = $valorDoCel.replace(/(\d{2})?(\d{5})?(\d{4})/, "($1) $2-$3")
})