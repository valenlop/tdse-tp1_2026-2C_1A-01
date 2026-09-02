# Solución de COMA Electronics - Intelligent Parking Management System

El sistema "Intelligent Parking Management System" propuesto consiste en un servidor de estacionamiento, máquinas de entrada y salida, y estaciones de pago automático[cite: 2]. En el sistema automatizado, la operatoria es la siguiente: un vehículo llega a la terminal de entrada, donde el conductor presiona un botón para que se emita un ticket con número de serie, fecha y hora[cite: 2]. Esto envía una señal para abrir la barrera y permitir que el vehículo se estacione[cite: 2]. Posteriormente, el cliente paga, el ticket se valida y, al llegar a la terminal de salida, se lee el ticket para abrir la barrera y que el auto se retire[cite: 2].

Específicamente, la máquina de entrada (Parking Ticket Dispenser Machine) cuenta con una pantalla LCD de 7", intercomunicador opcional, lector de tarjetas, botón de ayuda, ranura para tickets, botón para solicitar el ticket, indicaciones de voz, cámara motorizada, barrera de alta velocidad y un display LED para mostrar los lugares vacantes[cite: 2].

# Implementación de Parking Ticket Dispenser Machine (Entry)

La implementación se basa en una arquitectura de aplicación modular dividida en tres etapas que se comunican y sincronizan mediante el envío de mensajes[cite: 2]: 
1. **Escrutar (Scrutinize):** Módulo encargado de leer las señales de la cámara, el botón y la bobina sensora (Sensor Coil)[cite: 2].
2. **Procesar (Process):** El núcleo del sistema que maneja la lógica[cite: 2]. 
3. **Actuar (Act):** Módulo encargado de activar el display, la impresora, la barrera y de comunicarse con el servidor[cite: 2].

El flujo lógico es: el auto llega -> se da la bienvenida en el display -> se presiona el botón -> se imprime el ticket -> se abre la barrera -> el auto avanza (detectado por la bobina) -> se cierra la barrera -> se notifica al servidor que el auto está adentro[cite: 2]. Todos estos módulos se deben ejecutar cíclicamente mediante tareas no bloqueantes cada 1mS para garantizar un comportamiento comunitario del procesador[cite: 2].

# Modelos de comportamiento (Módulos de código C temporizado)

Para describir el comportamiento cíclico (Update by Time Code, period = 1mS) se enuncian los siguientes modelos:

* **Modelo Sensor:** Encargado de *escrutar* las señales físicas y convertirlas en eventos o mensajes para el sistema[cite: 1].
* **Modelo System:** Encargado de *procesar* los eventos recibidos de los sensores y generar nuevos eventos dirigidos a los actuadores según la lógica de la máquina[cite: 1].
* **Modelo Actuator:** Encargado de *actuar*, recibiendo los eventos del sistema para controlar las salidas físicas del equipo[cite: 1].

# Reemplazo de hardware (Sensores y Actuadores)

Para poder probar e implementar este diseño sin el hardware real, se realizarán los siguientes reemplazos de componentes[cite: 1, 2]:

* **Sensores (Digital Inputs):** 
  * La **Camera** se reemplaza por un interruptor dip switch (llaves_On_Off)[cite: 1, 2].
  * El **Button** se reemplaza por un pulsador[cite: 1, 2].
  * El **Sensor Coil** se reemplaza por un interruptor dip switch (llaves_On_Off)[cite: 1, 2].
* **Actuadores (Digital Outputs):**
  * Tanto el **Display**, la **Printer**, la **Barrier** y la conexión con el **Server** se reemplazarán utilizando Leds[cite: 1, 2].