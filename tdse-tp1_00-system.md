# Modelo System - Eventos y Acciones

**1. Descripción del Modelo**
El modelo **System** describe el comportamiento del módulo de código C temporizado (`Update by Time Code`, con período = 1 ms) encargado de la tarea de **procesar** (*process*). Su función principal es recibir eventos desde los módulos sensores, evaluar la lógica de control del estacionamiento y generar eventos/señales dirigidos al módulo **Actuator** o modificar variables de control internas (como temporizadores/guardas).

---

**2. Convención de Identificadores**

* **Eventos recibidos (Triggers):** `EV_SYS_...` (provenientes de los modelos Sensor).


* **Eventos enviados / Signals hacia Actuators:** `EV_ACT_...`.


* **Estados del modelo:** `ST_SYS_...`.


* **Temporizador / Base de tiempo:** `tick` o `timer` (variable de control incrementada cada 1 ms).


* **Tiempo de retardo / Tiempos de espera:** `DEL_SYS_XX` (umbrales de guarda).



---

**3. Eventos del Modelo System**
Son las señales/mensajes que el modelo recibe desde los módulos de escrutinio (**Sensor**) para desencadenar transiciones o acciones:

| Evento | Identificador | Descripción |
| --- | --- | --- |
| **Botón presionado** | `EV_SYS_BTN_PRESSED` | Señal recibida desde el módulo Sensor que indica que el botón de solicitud de ticket fue presionado|
| **Botón liberado** | `EV_SYS_BTN_RELEASED` | Señal recibida desde el módulo Sensor que indica que el botón de solicitud de ticket fue liberado|

---

**4. Acciones del Modelo System**
Las acciones del modelo **System** ejecutan funciones, modifican/inicializan variables de control (`timer`) para su uso como guardas (`[guard]`), o emiten señales (*signals/events*) hacia el modelo **Actuator**:

| Tipo de Acción | Identificador / Función | Descripción |
| --- | --- | --- |
| **Inicialización de Temporizador** | `timer = 0` | Resetea/inicializa la variable de control de tiempo al cambiar de estado|
| **Señal hacia Actuador (Impresión)** | `EV_ACT_PRINT_TICKET` | Envía una señal al modelo Actuator para imprimir el ticket|
| **Señal hacia Actuador (Barrera)** | `EV_ACT_OPEN_BARRIER` | Envía una señal al modelo Actuator para abrir la barrera de entrada|
| **Señal hacia Actuador (Display)** | `EV_ACT_UPDATE_DISPLAY` | Envía una señal al modelo Actuator para actualizar la pantalla o los LEDs de indicación|

