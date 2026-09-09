# Modelo Actuator (Un solo LED) - Eventos y Acciones

**1. Descripción del Modelo**
El modelo **Actuator** describe el comportamiento del módulo encargado de la tarea de **actuar** (*act*). Su función principal es recibir las señales enviadas por el módulo **System** para controlar la salida digital física (un LED), alternando directamente entre los estados de encendido y apagado.

---

**2. Convención de Identificadores**

* **Eventos recibidos (Triggers):** `EV_ACT_...` (provenientes del modelo System).
* **Estados del modelo:** `ST_LED_...`

---

**3. Eventos del Modelo Actuator**
Son las señales/mensajes recibidos desde el modelo **System** que modifican el estado de activación del LED:

| Evento | Identificador | Descripción |
| --- | --- | --- |
| **Encender LED** | `EV_ACT_LED_ON` | Ordena la activación constante (encendido) del LED. |
| **Apagar LED** | `EV_ACT_LED_OFF` | Ordena la desactivación (apagado) del LED. |

---

**4. Acciones del Modelo Actuator**
Las acciones ejecutan funciones directas sobre la salida digital:

| Tipo de Acción | Identificador / Función | Descripción |
| --- | --- | --- |
| **Escritura Hardware** | `led_turn_on()` | Pone el pin de salida en nivel lógico alto (enciende el LED). |
| **Escritura Hardware** | `led_turn_off()` | Pone el pin de salida en nivel lógico bajo (apaga el LED). |

---

**5. Estados del Modelo Actuator**
Para cubrir el comportamiento del diagrama simplificado se consideran únicamente dos estados:

* `ST_LED_OFF`: Salida digital en nivel bajo (apagado). Estado inicial del sistema.
* `ST_LED_ON`: Salida digital en nivel alto (encendido).

**Actuator Statechart - State Transition Table**

| Current State | Event | [Guard] | Next State | Actions |
| --- | --- | --- | --- | --- |
| **ST_LED_OFF** | `EV_ACT_LED_OFF` | — | **ST_LED_OFF** | `led_turn_off()` |
| **ST_LED_OFF** | `EV_ACT_LED_ON` | — | **ST_LED_ON** | `led_turn_on()` |
| **ST_LED_ON** | `EV_ACT_LED_ON` | — | **ST_LED_ON** | `led_turn_on()` |
| **ST_LED_ON** | `EV_ACT_LED_OFF` | — | **ST_LED_OFF** | `led_turn_off()` |
