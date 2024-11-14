// Listas de columnas y datos para cada opción del select
const tablas = {
    1: {
        "columnas": ["Cliente", "CantidadTickets"],
        "datos": [
            ["Adrian Hernandez", 1],
            ["Alejandro Perez", 2],
            ["Ana Lopez", 2],
            ["Ana Maria Flores", 1],
            ["Ana Rodriguez", 1],
            ["Carlos Rodriguez", 1],
            ["Diego Lopez", 6],
            ["Diego Sanchez", 1],
            ["Elena Torres", 1],
            ["Isabel Luna", 1],
            ["Javier Jimenez", 2],
            ["Juan Gomez", 1],
            ["Laura Garcia", 1],
            ["Luis Torres", 1],
            ["Maria Gonzalez", 51],
            ["Maria Martinez", 1],
            ["Pablo Fernandez", 2],
            ["Pedro Alvarez", 2],
            ["Roberto Ortega", 1],
            ["Sofia Diaz", 1]
        ]
    },
    2: {
        "columnas": ["Pelicula", "CantidadFunciones"],
        "datos": [
            ["Aventuras Explosivas", 3],
            ["Cita a Ciegas", 2],
            ["Historia de Amor Prohibido", 2],
            ["Intr pidos", 2],
            ["La Guerra de las Galaxias", 2],
            ["M s All de la Esperanza", 2],
            ["Mision Imposible", 2],
            ["Secretos Familiares", 2],
            ["Viaje a las Estrellas", 2],
            ["Vidas Entrelazadas", 1],
            ["Qu  Desastre!", 1],
            ["Mision Imposible: Protocolo Fantasma", 1],
            ["Risas y M s Risas", 1],
            ["Locuras de Verano", 1],
            ["M quinas Conscientes", 1],
            ["La Boda del A o", 1],
            ["El ltimo Baile", 1],
            ["El Futuro Desconocido", 1],
            ["El Peso del Pasado", 1],
            ["El Renacer del Drag n", 1],
            ["El ltimo Guerrero", 1],
            ["Enamorados en Par s", 1]
        ]
    },
    3: {
        "columnas": ["Nombre", "Apellido", "Nro De Ventas"],
        "datos": [
            ["Maria", "Martinez", 61],
            ["David", "Alonso", 11],
            ["Guillermo", "Diaz", 9],
            ["Sofia", "Hernandez", 6],
            ["Martin", "Polliotto", 5]
        ]
    },
    4: {
        "columnas": ["Codigo Promo", "Inicio Promo", "Fin Promo", "Nro De Usos"],
        "datos": [
            [5, "2024-01-01 00:00:00.000", "2024-01-15 00:00:00.000", 4]
        ]
    },
    5: {
        "columnas": ["Cliente"],
        "datos": [
            ["Juan Perez"],
            ["Victor Ruiz"],
            ["Carmen Navarro"],
            ["Lucia Gutierrez"],
            ["Marcos Molina"],
            ["Natalia Castro"],
            ["Hugo Vargas"],
            ["Clara Romero"],
            ["Luisa Serrano"]
        ]
    },
    6: {
        columnas: ["Cliente", "Nro de tikets", "Horario", "CantidadFunciones"],
        datos: [
            ["Adrian Hernandez", 1, "10:00", 20],
            ["Alejandro Perez", 2, "12:00", 6],
            ["Ana Lopez", 2, "12:30", 4],
            ["Carlos Rodriguez", 1, "14:00", 3],
            ["Diego Lopez", 2, "15:30", 3],
            ["Diego Sanchez", 1, "16:00", 3],
            ["Elena Torres", 1, "17:00", 3],
            ["Isabel Luna", 1, "18:30", 3],
            ["Javier Jimenez", 2, "20:30", 3],
            ["Juan Gomez", 1, "10:00", 20],
            ["Laura Garcia", 1, "12:00", 6],
            ["Maria Gonzalez", 18, "12:30", 4],
            ["Maria Martinez", 1, "14:00", 3],
            ["Pablo Fernandez", 2, "15:30", 3],
            ["Sofia Diaz", 1, "16:00", 3]
        ]
    },
    7: {
        columnas: ["Horario", "CantidadFunciones"],
        datos: [
            ["10:00", 20],
            ["12:00", 6],
            ["12:30", 4],
            ["14:00", 3],
            ["15:30", 3],
            ["16:00", 3],
            ["17:00", 3],
            ["18:30", 3],
            ["20:30", 3],
            ["10:00", 20],
            ["12:00", 6],
            ["12:30", 4],
            ["14:00", 3],
            ["15:30", 3],
            ["16:00", 3]
        ]
    }
    ,
    8: {
        columnas: ["Pelicula", "Nro De Ventas"],
        datos: [
            ["Aventuras", 50],
            ["Mision Imposible", 12],
            ["El Renacer del Dragón", 9],
            ["Pelicula editada", 6],
            ["Risas y Más Risas", 6],
            ["Historia de Amor Prohibido", 5],
            ["Secretos Familiares", 3],
            ["Cita a Ciegas", 2],
            ["Máquinas Conscientes", 1]
        ]
    },
    9: {
        columnas: ["Cliente", "Total Gastado"],
        datos: [
            ["Maria Gonzalez", 4951582756],
            ["Luis Torres", 10408],
            ["Diego Lopez", 8620]
        ]
    },
    10: {
        columnas: ["id_sala", "Numero Sala", "Nro de butaca reservada"],
        datos: [
            [1, 1, 14],
            [2, 2, 8],
            [5, 5, 5],
            [3, 3, 4]
        ]
    }
    
    
    
    
    
    

    
    // Agregar más opciones según sea necesario
};

// Función para cargar las cabeceras en la tabla con ID 'idTabla'
function cargarCabeceras(listaColumnas) {
    const tabla = document.getElementById("idTabla");
    let thead = tabla.querySelector("thead");
    if (!thead) {
        thead = document.createElement("thead");
        tabla.appendChild(thead);
    }
    thead.innerHTML = "";
    const filaCabecera = document.createElement("tr");
    listaColumnas.forEach(columna => {
        const th = document.createElement("th");
        th.textContent = columna;
        filaCabecera.appendChild(th);
    });
    thead.appendChild(filaCabecera);
}

// Función para cargar las filas de datos en la tabla con ID 'idTabla'
function cargarFilas(datosFilas) {
    const tabla = document.getElementById("idTabla");
    let tbody = tabla.querySelector("tbody");
    if (!tbody) {
        tbody = document.createElement("tbody");
        tabla.appendChild(tbody);
    }
    tbody.innerHTML = "";
    datosFilas.forEach(fila => {
        const tr = document.createElement("tr");
        fila.forEach(celda => {
            const td = document.createElement("td");
            td.classList.add('centrado');
            td.textContent = celda;
            tr.appendChild(td);
        });
        tbody.appendChild(tr);
    });
}

// Event listener para el select con ID 'selectConsulta'
const selectConsulta = document.getElementById("idSelectSp");
selectConsulta.addEventListener("change", (event) => {
    const opcionSeleccionada = event.target.value;
    if (tablas[opcionSeleccionada]) {
        const { columnas, datos } = tablas[opcionSeleccionada];
        cargarCabeceras(columnas);
        cargarFilas(datos);
    } else {
        console.warn("No se encontró una tabla para la opción seleccionada");
    }
});











// const listaColumnas = ["Cliente", "Nro Tickets"];
// const datosFilas = [
//     ["Adrian Hernandez", 1],
//     ["Alejandro Perez", 2],
//     ["Ana Lopez", 2],
//     ["Carlos Rodriguez", 1],
//     ["Diego L pez", 2],
//     ["Diego Sanchez", 1],
//     ["Elena Torres ", 1],
//     ["Isabel Luna ", 1],
//     ["Javier Jimenez ", 2],
//     ["Juan Gomez ", 1],
//     ["Laura Garcia ", 1],
//     ["Maria Gonz lez ", 18],
//     ["Maria Martinez ", 1],
//     ["Pablo Fernandez ", 2],
//     ["Sofia Diaz ", 1]
// ];

// const sp01 = {
//     columas : listaColumnas,
//     filas : datosFilas
// }





// const selectConsulta = document.getElementById('idSelectSp')


// selectConsulta.addEventListener('change', async function(event) {
//     console.log("change");
//     function cargarCabeceras(listaColumnas) {
//         // Seleccionar la tabla por ID
//         const tabla = document.getElementById("idTabla");
        
//         // Asegurarse de que exista la etiqueta <thead>, si no, crearla
//         let thead = tabla.querySelector("thead");
//         if (!thead) {
//             thead = document.createElement("thead");
//             tabla.appendChild(thead);
//         }
    
//         // Limpiar cualquier contenido previo en <thead>
//         thead.innerHTML = "";
    
//         // Crear la fila de cabecera
//         const filaCabecera = document.createElement("tr");
    
//         // Agregar las celdas <th> basadas en 'listaColumnas'
//         listaColumnas.forEach(columna => {
//             const th = document.createElement("th");
//             th.textContent = columna;
//             filaCabecera.appendChild(th);
//         });
    
//         // Agregar la fila de cabecera al <thead>
//         thead.appendChild(filaCabecera);
//     }
    
//     // Función para cargar las filas de datos en la tabla con ID 'idTabla'
//     function cargarFilas(datosFilas) {
//         // Seleccionar la tabla por ID
//         const tabla = document.getElementById("idTabla");
    
//         // Asegurarse de que exista la etiqueta <tbody>, si no, crearla
//         let tbody = tabla.querySelector("tbody");
//         if (!tbody) {
//             tbody = document.createElement("tbody");
//             tabla.appendChild(tbody);
//         }
    
//         // Limpiar cualquier contenido previo en <tbody>
//         tbody.innerHTML = "";
    
//         // Crear las filas de datos
//         datosFilas.forEach(fila => {
//             const tr = document.createElement("tr");
//             fila.forEach(celda => {
//                 const td = document.createElement("td");
//                 td.classList.add('centrado');
//                 td.textContent = celda;
//                 tr.appendChild(td);
//             });
//             tbody.appendChild(tr);
//         });
//     }
    
//     // Llamar a las funciones para cargar las cabeceras y filas en la tabla
//     cargarCabeceras(listaColumnas);
//     cargarFilas(datosFilas);
    

//     });