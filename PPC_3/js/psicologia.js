document.addEventListener('DOMContentLoaded', function() {
    const apiUrl = 'http://127.0.0.1:3000'; // URL base para el API

    // Función para cargar la lista de citas
    function loadUserList() {
        axios.get(`${apiUrl}/getAll_psi`)
            .then(response => {
                console.log("Datos recibidos:", response.data); // Log de datos recibidos
                const tableBody = document.querySelector('#dataTable tbody');
                tableBody.innerHTML = ''; // Limpiar el contenido previo
                response.data.forEach(user => {
                    const row = document.createElement('tr');
                    row.innerHTML = `
                        <td>${user.nombre_apellidos}</td>
                        <td>${user.correo}</td>
                        <td>${user.genero}</td>
                        <td>${user.motivo}</td>
                        <td>${user.fecha_reserva}</td>
                        <td>${user.hora_reserva}</td> 
                        <td>${user.sede}</td>
                        <td>${user.user_id}</td>
                        <td>
                           <!-- <button class="btn btn-info btn-sm" onclick="redirectToRecommendation(${user.user_id})">Recomendación</button> -->
                            <button class="btn btn-danger btn-sm" onclick="deleteUser(${user.user_id})">Eliminar</button>
                        </td>
                    `;
                    tableBody.appendChild(row);
                });
            })
            .catch(error => {
                console.error('Error fetching user list:', error);
            });
    }

    // Función para redirigir a la página de recomendación
    window.redirectToRecommendation = function(userId) {
        console.log(`Redirigiendo a recomendación con userId: ${userId}`);
        // Corregir la ruta para que sea relativa desde la ubicación de los archivos JS
        window.location.href = `recom_psicologo.html`;
    };

    // Función para eliminar un usuario
    window.deleteUser = function(userId) {
        if (confirm('¿Estás seguro de que deseas eliminar este usuario?')) {
            axios.delete(`${apiUrl}/delete/${userId}`)
                .then(response => {
                    alert(response.data.informacion);
                    loadUserList(); // Actualizar la lista después de eliminar
                })
                .catch(error => {
                    console.error('Error eliminando usuario:', error);
                    alert('Error al eliminar el usuario');
                });
        }
    };

    // Cargar la lista de citas al iniciar la página
    loadUserList();

    // Opcional: Agregar un botón de recarga manual
    const reloadButton = document.getElementById('reloadButton');
    if (reloadButton) {
        reloadButton.addEventListener('click', loadUserList);
    }

    // Opcional: Configurar recarga automática cada cierto tiempo
    // setInterval(loadUserList, 60000); // Recarga cada 60 segundos
});

// Función para cerrar sesión
function cerrarSesion() {
    fetch(`${apiUrl}/api/cerrar-sesion`, {
        method: 'POST',
        credentials: 'include'
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            localStorage.clear();
            sessionStorage.clear();
            window.location.href = '../index.html';
        } else {
            console.error('Error al cerrar sesión');
        }
    })
    .catch(error => {
        console.error('Error:', error);
    });
}

// Asignar el evento de cierre de sesión al botón correspondiente
document.addEventListener('DOMContentLoaded', function() {
    const cerrarSesionBtn = document.getElementById('cerrarSesionBtn');
    if (cerrarSesionBtn) {
        cerrarSesionBtn.addEventListener('click', cerrarSesion);
    }

    // Prevenir navegación hacia atrás después de cerrar sesión
    history.pushState(null, null, location.href);
    window.onpopstate = function () {
        history.go(1);
    };
});
