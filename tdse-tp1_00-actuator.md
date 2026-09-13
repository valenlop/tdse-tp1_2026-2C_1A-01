# Modelo Actuator (Un solo LED) - Eventos y Acciones

**Descripción del Modelo**
El modelo **Actuator** describe el comportamiento del módulo encargado de la tarea de **actuar** (*act*). Su función principal es recibir las señales enviadas por el módulo **System** para controlar la salida digital física (un LED). Incorpora un estado intermedio de parpadeo (**ST_LED_BLINK**) que representa un estado de transición temporal antes de pasar al estado final de encendido o apagado.

---

**Convención de Identificadores**

* **Eventos recibidos (Triggers):** `EV_ACT_...` (provenientes del modelo System).
* **Estados del modelo:** `ST_LED_...`
* **Variables internas:** `target_on` (Booleano utilizado para determinar la dirección del estado destino al finalizar el temporizador).

---

**Eventos del Modelo Actuador**
Son las señales/mensajes recibidos desde el modelo **System** que inician la secuencia de cambio de estado del LED:

| Evento | Identificador | Descripción |
| --- | --- | --- |
| **Encender LED** | `EV_ACT_LED_ON` | Solicita la secuencia de encendido del LED (ingresa a parpadeo antes de encender). |
| **Apagar LED** | `EV_ACT_LED_OFF` | Solicita la secuencia de apagado del LED (ingresa a parpadeo antes de apagar). |

---

**Acciones del Modelo Actuador**
Las acciones ejecutan funciones directas sobre la salida digital:

| Tipo de Acción | Identificador / Función | Descripción |
| --- | --- | --- |
| **Escritura Hardware** | `led_turn_on()` | Pone el pin de salida en nivel lógico alto (enciende el LED). |
| **Escritura Hardware** | `led_turn_off()` | Pone el pin de salida en nivel lógico bajo (apaga el LED). |

---

**Actuator Statechart - State Transition Table**

| Current State | Event / Trigger | [Guard] | Next State | Actions |
| --- | --- | --- | --- | --- |
| **ST_LED_OFF** | `EV_ACT_LED_OFF` | — | **ST_LED_OFF** | `led_turn_off()` |
| **ST_LED_OFF** | `EV_ACT_LED_ON` | — | **ST_LED_BLINK** | `target_on = true` |
| **ST_LED_BLINK** | `after 3 s` | `[target_on]` | **ST_LED_ON** | `led_turn_on()` |
| **ST_LED_BLINK** | `after 3 s` | `[!target_on]` | **ST_LED_OFF** | `led_turn_off()` |
| **ST_LED_ON** | `EV_ACT_LED_ON` | — | **ST_LED_ON** | `led_turn_on()` |
| **ST_LED_ON** | `EV_ACT_LED_OFF` | — | **ST_LED_BLINK** | `target_on = false` |
