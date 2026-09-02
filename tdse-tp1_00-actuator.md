# Modelo Actuator (Un solo LED) - Eventos y Acciones

**1. Descripción del Modelo**
El modelo **Actuator** describe el comportamiento del módulo de código C temporizado (`Update by Time Code`, con período = 1 ms) encargado de la tarea de **actuar** (*act*). Su función principal es recibir las señales enviadas por el módulo **System** para controlar la salida digital física (un LED). Utiliza variables de control como un temporizador (`tick` o `timer`) para gestionar comportamientos temporizados del LED, tales como encendido permanente, apagado o titilado/parpadeo (*blinking*).

---

**2. Convención de Identificadores**

* **Eventos recibidos (Triggers):** `EV_ACT_...` (provenientes del modelo System).


* **Estados del modelo:** `ST_LED_...`
* **Temporizador / Base de tiempo:** `tick` (variable de control incrementada cada 1 ms)
* **Tiempo de retardo / Tiempos de destello:** `DEL_LED_BLINK` (umbral de guarda para la frecuencia de titilado)

---

**3. Eventos del Modelo Actuator**
Son las señales/mensajes recibidos desde el modelo **System** que modifican el estado de activación del LED:

| Evento | Identificador | Descripción |
| --- | --- | --- |
| **Encender LED** | `EV_ACT_LED_ON` | Ordena la activación constante (encendido) del LED. |
| **Apagar LED** | `EV_ACT_LED_OFF` | Ordena la desactivación (apagado) del LED. |
| **Titilar LED** | `EV_ACT_LED_BLINK` | Ordena al LED conmutar periódicamente entre encendido y apagado usando el `timer`. |

---

**4. Acciones del Modelo Actuator**
Las acciones ejecutan funciones directas sobre la salida digital, inicializan variables de control o señalan estados a otros módulos:

| Tipo de Acción | Identificador / Función | Descripción |
| --- | --- | --- |
| **Escritura Hardware** | `led_turn_on()` | Ejecuta la función/macro que pone el pin de salida en nivel lógico alto (enciende el LED). |
| **Escritura Hardware** | `led_turn_off()` | Ejecuta la función/macro que pone el pin de salida en nivel lógico bajo (apaga el LED). |
| **Inicialización de Temporizador** | `tick = 0` | Resetea la variable de conteo para controlar el período de titilado o la duración del pulso. |
| **Conmutación** | `led_toggle()` | Invierte el estado físico actual de la salida digital. |

---

**5. Estados del Modelo Actuator**
Para cubrir los distintos comportamientos del LED se consideran los siguientes estados:

* `ST_LED_OFF`: Salida digital en nivel bajo (apagado).
* `ST_LED_ON`: Salida digital en nivel alto (encendido).
* `ST_LED_BLINK_ON`: Subestado de titilado activo en nivel alto.
* `ST_LED_BLINK_OFF`: Subestado de titilado activo en nivel bajo.
