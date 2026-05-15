/**
 * Carga el archivo datos.json y muestra su contenido en la página.
 */

async function cargarSapos() {

    // Contenedor donde aparecerán las tarjetas
    const contenedor = document.getElementById("contenedor-sapos");

    try {

        // Solicita el archivo JSON
        const respuesta = await fetch("datos.json");

        // Comprueba si la respuesta es correcta
        if (!respuesta.ok) {
            throw new Error("No se pudo cargar el archivo JSON.");
        }

        // Convierte la respuesta a objeto JavaScript
        const datos = await respuesta.json();

        // Borra el mensaje inicial
        contenedor.innerHTML = "";

        // Recorre todos los sapos
        datos.sapos.sapo.forEach((sapo) => {

            // Crear tarjeta
            const tarjeta = document.createElement("article");

            tarjeta.className = "tarjeta-sapo";

            // Contenido HTML de la tarjeta
            tarjeta.innerHTML = `
                <h2>${sapo.nombre}</h2>

                <p><strong>Especie:</strong> ${sapo.especie}</p>

                <p><strong>Edad:</strong> ${sapo.edad} años</p>

                <p><strong>Peso:</strong> ${sapo.peso} g</p>

                <p><strong>Longitud:</strong> ${sapo.longitud} cm</p>

                <p><strong>Color:</strong> ${sapo.color}</p>

                <p><strong>Hábitat:</strong> ${sapo.habitat}</p>

                <p><strong>Dieta:</strong> ${sapo.dieta}</p>

                <p><strong>Esperanza de vida:</strong> ${sapo.esperanza_vida} años</p>

                <p><strong>Velocidad:</strong> ${sapo.velocidad} km/h</p>
            `;

            // Añadir tarjeta al contenedor
            contenedor.appendChild(tarjeta);
        });

    } catch (error) {

        // Mostrar error en pantalla
        contenedor.innerHTML = `
            <p class="error">
                Error: ${error.message}
            </p>
        `;
    }
}

// Ejecutar función
cargarSapos();