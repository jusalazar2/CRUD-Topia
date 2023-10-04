document.addEventListener("DOMContentLoaded", function () {
    const productos = document.querySelectorAll(".producto");
    const carritoLista = document.getElementById("carrito-lista");
    const carritoTotal = document.getElementById("carrito-total");
    const vaciarCarritoBtn = document.getElementById("vaciar-carrito");

    let carrito = [];

    // Función para agregar un producto al carrito
    function agregarAlCarrito(producto) {
        const productoId = producto.getAttribute("data-id");
        const productoNombre = producto.getAttribute("data-nombre");
        const productoPrecio = parseFloat(producto.getAttribute("data-precio"));

        const existente = carrito.find(item => item.id === productoId);

        if (existente) {
            existente.cantidad++;
        } else {
            carrito.push({ id: productoId, nombre: productoNombre, precio: productoPrecio, cantidad: 1 });
        }

        mostrarCarrito();
    }

    // Función para mostrar el contenido del carrito
    function mostrarCarrito() {
        carritoLista.innerHTML = "";
        let total = 0;

        carrito.forEach(item => {
            const li = document.createElement("li");
            li.innerHTML = `${item.nombre} x${item.cantidad} - $${(item.precio * item.cantidad).toFixed(2)}`;
            carritoLista.appendChild(li);
            total += item.precio * item.cantidad;
        });

        carritoTotal.textContent = total.toFixed(2);
    }

    // Evento para agregar al carrito cuando se hace clic en el botón
    productos.forEach(producto => {
        const botonAgregar = producto.querySelector(".agregar-carrito");
        botonAgregar.addEventListener("click", () => {
            agregarAlCarrito(producto);
        });
    });

    // Evento para vaciar el carrito
    vaciarCarritoBtn.addEventListener("click", () => {
        carrito = [];
        mostrarCarrito();
    });
});