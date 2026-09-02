# Modelo Sensor (Un solo botón) - Eventos y Acciones

## 1. Descripción del Modelo
El modelo **Sensor** describe el comportamiento del módulo de código C temporizado (`Update by Time Code`, con período = 1 ms) encargado de la tarea de **escrutar** (*scrutinize*). 
Su función principal es monitorear el estado físico de un pulsador (entrada digital), filtrar los transitorios no deseados producidos por el rebote mecánico (*switch bounce* o glitches) mediante un temporizador (`timer`), e informar al sistema de los cambios de posición confirmados[cite: 1].

---

## 2. Convención de Identificadores
Siguiendo las pautas de nomenclatura del taller:
* **Eventos del botón / Posición física (Triggers):** `EV_BTN_...`[cite: 1]
* **Señales / Eventos generados hacia el System:** `EV_SYS_...`[cite: 1]
* **Estados del modelo:** `ST_BTN_...`[cite: 1]
* **Temporizador / Base de tiempo:** `tick` (variable de control incrementada cada 1 ms)[cite: 1]
* **Tiempo de retardo / Debounce:** `DEL_BTN_XX` (umbral de guarda)[cite: 1]

---

## 3. Eventos del Modelo Sensor
Un sensor binario (pulsador) genera 2 (dos) eventos asociados a su posición física en la lectura digital periódica[cite: 1]:

| Evento | Identificador | Descripción |
| :--- | :--- | :--- |
| **Botón no presionado** | `EV_BTN_UP` | Indica que la entrada digital se detecta en nivel lógico alto / reposo (sin presionar)[cite: 1]. |
| **Botón presionado** | `EV_BTN_DOWN` | Indica que la entrada digital se detecta en nivel lógico bajo / activo (presionado)[cite: 1]. |

---

## 4. Acciones del Modelo Sensor
El modelo ejecuta acciones al producirse cambios de estado validados. Estas acciones consisten en inicializar variables de control (`timer` para las guardas de debounce) o emitir señales/mensajes dirigidos al modelo `System`[cite: 1]:

| Tipo de Acción | Identificador / Función | Descripción |
| :--- | :--- | :--- |
| **Inicialización de Temporizador** | `tick = 0` | Resetea la variable de conteo al detectar un flanco para comenzar el conteo del período de inmunidad al rebote[cite: 1]. |
| **Acción de Flanco Descendente (Pulsado confirmado)** | `EV_SYS_BTN_PRESSED` | Señal (*signal/message*) enviada al modelo **System** indicando que el botón fue efectivamente presionado y se ha superado el tiempo de debounce (`DEL_BTN_DOWN`)[cite: 1, 2]. |
| **Acción de Flanco Ascendente (Liberación confirmada)** | `EV_SYS_BTN_RELEASED` | Señal (*signal/message*) enviada al modelo **System** indicando que el botón fue liberado y se ha superado el tiempo de debounce (`DEL_BTN_UP`)[cite: 1, 2]. |

---

## 5. Estados y Dinámica Temporal
Para garantizar un filtrado correcto de ruidos e integrar el debouncing, el modelo recorre 4 estados dinámicos[cite: 1]:
* `ST_BTN_UP`: Botón en reposo (estable, no presionado)[cite: 1].
* `ST_BTN_FALLING`: Transición en curso hacia abajo; cuenta el tiempo de guarda `[tick >= DEL_BTN_DOWN]` para confirmar la pulsación evitando rebotes[cite: 1].
* `ST_BTN_DOWN`: Botón presionado (estable)[cite: 1].
* `ST_BTN_RISING`: Transición en curso hacia arriba; cuenta el tiempo de guarda `[tick >= DEL_BTN_UP]` para confirmar la liberación y estabilización del contacto[cite: 1].