# Modelo Actuator (Un solo LED) - Eventos y Acciones

**1. Descripción del Modelo**
El modelo **Actuator** describe el comportamiento del módulo encargado de la tarea de **actuar** (*act*). Su función principal es recibir las señales enviadas por el módulo **System** para controlar la salida digital física (un LED). Incorpora un estado intermedio (**ST_LED_BLINK**) que representa la transición temporal (por ejemplo, el movimiento de una barrera) antes de pasar al estado final de encendido o apagado.

---

**2. Convención de Identificadores y Variables**

* **Eventos recibidos (Triggers):** `EV_ACT_...` (provenientes del modelo System).
* **Estados del modelo:** `ST_LED_...`
* **Variables internas:** `target_on` (Booleano utilizado para recordar el estado objetivo al finalizar el temporizador).

---

**3. Eventos del Modelo Actuator**
Son las señales/mensajes recibidos desde el modelo **System** que inician la secuencia de cambio de estado del LED:

| Evento | Identificador | Descripción |
| --- | --- | --- |
| **Encender LED** | `EV_ACT_LED_ON` | Solicita la secuencia de encendido del LED (pasa a parpadeo antes de encender). |
| **Apagar LED** | `EV_ACT_LED_OFF` | Solicita la secuencia de apagado del LED (pasa a parpadeo antes de apagar). |

---

**4. Acciones y Operaciones Hardware**
Las acciones ejecutan funciones directas sobre la salida digital:

| Tipo de Acción | Identificador / Función | Descripción |
| --- | --- | --- |
| **Escritura Hardware** | `led_turn_on()` | Pone el pin de salida en nivel lógico alto (enciende el LED). |
| **Escritura Hardware** | `led_turn_off()` | Pone el pin de salida en nivel lógico bajo (apaga el LED). |

---

**5. Variables Internas**

| Variable | Tipo | Descripción |
| --- | --- | --- |
| `target_on` | `boolean` | `true` si el estado destino final es `ST_LED_ON`; `false` si el destino final es `ST_LED_OFF`. |

---

**6. Definiciones del Statechart (Itemis CREATE)**

```sct
@EventDriven
interface:
    in event EV_ACT_LED_ON
    in event EV_ACT_LED_OFF
    
    var target_on : boolean
    
    operation led_turn_on()
    operation led_turn_off()
