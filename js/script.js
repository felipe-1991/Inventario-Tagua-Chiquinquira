document.addEventListener('DOMContentLoaded', () => {
    const boton = document.querySelector('button');
    boton.addEventListener('click', () => {
        const inputs = document.querySelectorAll('input');
        const nombre = inputs[0].value;
        const cantidad = inputs[1].value;

        if (nombre === "" || cantidad === "") {
            alert("⚠️ Por favor, ingresa el nombre y la cantidad.");
        } else {
            alert("✅ ¡Registro Exitoso!\nProducto: " + nombre + "\nCantidad: " + cantidad);
        }
    });
});
