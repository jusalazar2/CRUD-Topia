<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrito de Compras</title>
    <link rel="stylesheet" href="carrito.css">
       <script src="carrito.js"></script>
</head>
<body>
    <header>
        <h1>Carrito de Compras</h1>
    </header>
    <main>
        <section class="producto" data-id="1" data-nombre="Producto 1" data-precio="120.00">
            <img src="https://i.pinimg.com/236x/9f/52/01/9f52012882384f7e8d50c43dcb773084--bear-doll-teddy-bears.jpg" alt="Producto 1">
            <h2>Peluches</h2>
            <p>Precio: $120.00</p>
            <button class="agregar-carrito">Agregar al carrito</button>
        </section>
     
        <section class="producto" data-id="2" data-nombre="Producto 2" data-precio="25.00">
            <img src="https://tumakeup.tv/wp-content/uploads/2017/07/bigstock-196256578.jpg" alt="Producto 2">
            <h2>Producto 2</h2>
            <p>Precio: $25.00</p>
            <button class="agregar-carrito">Agregar al carrito</button>
        </section>
    
           <section class="producto" data-id="3" data-nombre="Producto 4" data-precio="30.00">
         
            <img src="https://flormiel.com/floristeria/wp-content/uploads/2019/04/Peluche-Stich-Az%C3%BAl.jpg"  align='right'  alt="Producto 2">
            <h3>Peluches</h3>
            <p>Precio: $30.00</p>
             <button class="agregar-carrito">Agregar al carrito</button>
   </section>
              <section class="producto" data-id="4" data-nombre="Producto 5" data-precio="30.00">
         
            <img src="https://img.freepik.com/foto-gratis/vista-frontal-lindo-bebe-nino-cupcake-osito-peluche_23-2148415544.jpg?w=2000"  align='right' alt="Producto 2">
            <h3>Peluches</h3>
            <p>Precio: $30.00</p>
            <button class="agregar-carrito">Agregar al carrito</button>
   </section>
             <section class="producto" data-id="5" data-nombre="Producto 6" data-precio="30.00">
         
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0WRo_0OB9uBKPVcqJ-hJ12ZBxRgxjRwtGK5cpJqZI_D8XksaQ98gfaN6XFVYUPibHDDw&usqp=CAU" height="260"alt="Producto 2">
            <h3>Materiales</h3>
            <p>Precio: $30.00</p>
                <button class="agregar-carrito">Agregar al carrito</button>
   </section>
            <section class="producto" data-id="6" data-nombre="Producto 7" data-precio="30.00">
         
                <img src="https://caracol.com.co/resizer/VFokVQN3jWofVGLXlVxtIz1Mbnw=/650x488/filters:format(png):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/prisaradioco/MUUVYQPCPRB3XM4PU5YCRXLGCY.png" width="" height="300" alt="Producto 2">
            <h3>Materiales</h3>
            <p>Precio: $30.00</p>
               <button class="agregar-carrito">Agregar al carrito</button>
        
</section>        
     <section class="producto" data-id="7" data-nombre="Producto 8" data-precio="30.00">
         
            <img src="https://i.pinimg.com/550x/67/28/9f/67289f053c945cfe74da885bae30b95e.jpg"height="300" alt="Producto 2">
            <h3>Materiales</h3>
            <p>Precio: $30.00</p>
                        <button class="agregar-carrito">Agregar al carrito</button>

</section>
     <section class="producto" data-id="8" data-nombre="Producto 9" data-precio="30.00">
         
            <img src="https://tumakeup.tv/wp-content/uploads/2017/07/bigstock-196256578.jpg" height="300"alt="Producto 2">
            <h3>Maquillaje</h3>
            <p>Precio: $30.00</p>
                         <button class="agregar-carrito">Agregar al carrito</button>

      </section> 
              <section class="producto" data-id="9" data-nombre="Producto 10" data-precio="30.00">
           <img src="https://tiendaellas.com/cdn/shop/articles/Blog_Maybelline_800x.png?v=1632321223"height="300" alt="Producto 2">
            <h3>Maquillaje</h3>
            <p>Precio: $30.00</p>
                        <button class="agregar-carrito">Agregar al carrito</button>

            </section>    
          <section class="producto" data-id="10" data-nombre="Producto 11" data-precio="30.00">
           
            <img src="https://previews.123rf.com/images/loonara/loonara1607/loonara160700012/60728838-maquillaje-profesional-pinceles-y-herramientas-de-recolecci%C3%B3n-maquillaje-productos-que-figuran-en.jpg" height="300" alt="Producto 2">
            <h3>Peluches</h3>
            <p>Precio: $30.00</p>
                        <button class="agregar-carrito">Agregar al carrito</button>

        </section>
    </main>
    <aside class="carrito">
        <h2>Carrito de Compras</h2>
        <ul id="carrito-lista">
            <!-- Los elementos del carrito se agregarán dinámicamente aquí -->
        </ul>
        <p>Total: $<span id="carrito-total">0.00</span></p>
        <button class="vaciar-carrito" id="vaciar-carrito">Vaciar Carrito</button>
    </aside>
    <script src="script.js"></script>
</body>
</html>