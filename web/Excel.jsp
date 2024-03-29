<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Convirtiendo Tablas a Excel</title>

    <link rel="stylesheet" href="./bootstrap 5/css/bootstrap5.min.css" />
  </head>
  <body>
    <header>
      <!-- As a heading -->
      <nav class="navbar navbar-dark bg-dark">
        <div class="container-fluid">
          <span class="navbar-brand mb-0 h1">Exportar Tabla html a Excel</span>
        </div>
      </nav>
    </header>
    <div id="app" class="container mt-5">
      <div class="row">
        <div class="col-md-4 mb-3">
          <div class="card card-body p-3">
            <h5>Agrega otra persona</h5>
            <div class="form-group mb-1">
              <label>Id de la persona</label>
              <input
                v-model="formCrearPersona.id"
                type="number"
                class="form-control"
              />
            </div>
            <div class="form-group mb-1">
              <label>nombre de la persona</label>
              <input
                v-model="formCrearPersona.nombre"
                type="text"
                class="form-control"
              />
            </div>
            <div class="form-group mb-1">
              <label>edad de la persona</label>
              <input
                v-model="formCrearPersona.edad"
                type="number"
                class="form-control"
              />
            </div>
            <div class="w-100 d-flex mt-2">
              <button
                v-on:click="agregarUsuario"
                class="btn btn-outline-primary mx-auto"
              >
                Agregar Persona
              </button>
            </div>
            <div
              v-if="meensajeCrearPersona.cuerpoMensaje != ''"
              :class="'alert mt-2 alert-'+meensajeCrearPersona.tipoMensaje"
              role="alert"
            >
              {{meensajeCrearPersona.cuerpoMensaje}}
            </div>
          </div>
        </div>
        <div class="col-md-8 container-fluid">
          <div class="border row">
            <div class="col-9">
              <table id="tableToExport1" class="table-light text-center w-100">
                <tr class="table-light">
                  <th class="table-light">Id</th>
                  <th class="table-light">Nombre</th>
                  <th class="table-light">Edad</th>
                </tr>

                <tr v-for="item in personas" class="table-light">
                  <td class="table-light">{{item.id}}</td>
                  <td class="table-light">{{item.nombre}}</td>
                  <td class="table-light">{{item.edad}}</td>
                </tr>
              </table>
            </div>
            <div class="col-3">
              <table class="table-light text-center">
                <tr class="table-light">
                  <th class="table-light">opciones</th>
                </tr>

                <tr v-for="(item, index) in personas" class="table-light">
                  <td class="table-light">
                    <div
                      class="d-flex"
                      role="group"
                      aria-label="Basic mixed styles example"
                    >
                      <a
                        v-on:click="actualizaFormEditaPersona(index, item.id, item.nombre, item.edad)"
                        href="#"
                        data-bs-toggle="modal"
                        data-bs-target="#exampleModal"
                        class="link-warning p-0"
                        >editar</a
                      >
                      <a
                        v-on:click="personas.splice( index, 1 )"
                        style="margin-left: 10px !important;"
                        href="#"
                        class="link-danger p-0"
                        >eliminar</a
                      >
                    </div>
                  </td>
                </tr>
              </table>
            </div>
          </div>

          <div class="w-100 d-flex mt-2">
            <button
              v-on:click="exportarExcel('tableToExport1', 'Usuarios')"
              class="btn btn-outline-success mx-auto"
            >
              Exportar tabla a Excel
            </button>
          </div>

          <div
            class="modal fade"
            id="exampleModal"
            tabindex="-1"
            aria-labelledby="exampleModalLabel"
            aria-hidden="true"
          >
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">
                    Edita la persona
                  </h5>
                  <button
                    id="btn-close-modal"
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="modal"
                    aria-label="Close"
                  ></button>
                </div>
                <div class="modal-body">
                  <div class="form-group mb-1">
                    <label>Id de la persona</label>
                    <input
                      v-model="formEditaPersona.id"
                      type="number"
                      class="form-control"
                    />
                  </div>
                  <div class="form-group mb-1">
                    <label>nombre de la persona</label>
                    <input
                      v-model="formEditaPersona.nombre"
                      type="text"
                      class="form-control"
                    />
                  </div>
                  <div class="form-group mb-1">
                    <label>edad de la persona</label>
                    <input
                      v-model="formEditaPersona.edad"
                      type="number"
                      class="form-control"
                    />
                  </div>
                  <div class="w-100 d-flex mt-2">
                    <button
                      v-on:click="editaElUsuario"
                      class="btn btn-outline-primary mx-auto"
                    >
                      Actualizar Persona
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="./bootstrap 5/js/bootstrap.bundle.min.js"></script>
    <script src="./vue/vue.js"></script>
    <script src="./vue/axios.min.js"></script>
    <script src="./app/app.js"></script>
  </body>
</html>