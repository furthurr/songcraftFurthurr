# 15 · Suno Pro v5.5: referencia actual

Referencia operativa de **Suno Pro con v5.5**, basada en documentación oficial consultada el
**16 de julio de 2026**. No asume que las funciones, precios, créditos o límites sean permanentes:
confírmalos en la interfaz y en las páginas oficiales antes de tomar decisiones de producción o
publicación.

## 1. Resumen ejecutivo

Suno v5.5 se lanzó el 26 de marzo de 2026. Además de mejoras generales de arreglo, voz y dinamismo,
su propuesta central es la **personalización** mediante:

- **Voices:** generar usando una voz propia verificada.
- **Custom Models:** ajustar v5.5 con un catálogo propio para acercar los resultados a una estética.
- **My Taste:** ampliar una descripción de estilo según preferencias de escucha y creación.

Para una persona con plan **Pro**, el objetivo no es generar más canciones indiscriminadamente: es
usar v5.5 para crear candidatos rápidos y después controlar las mejores tomas con letra, edición,
extensión y stems.

## 2. Instantánea del plan Pro

Según la página oficial de precios consultada en la fecha de corte, Pro incluye:

| Área | Incluido en Pro |
|---|---|
| Modelo | Acceso a v5.5 y a modelos avanzados indicados por Suno |
| Créditos | 2.500 créditos que se renuevan mensualmente |
| Cola | Prioritaria; hasta 10 canciones simultáneas |
| Uso comercial | Derechos comerciales para canciones nuevas generadas durante la suscripción de pago, sujetos a los términos |
| Cargas | Audio de hasta 30 minutos |
| Personalización | Voices y Custom Models |
| Edición | Personas y edición avanzada: crop, replace section, extend, etc. según la interfaz |
| Stems | Auto Split y Split from Mix; no Advanced Split |
| Créditos extra | Compra de add-ons disponible |

### Qué **no** incluye Pro actualmente

- **Suno Studio** es una capacidad de **Premier**, no de Pro.
- **Advanced Split** (selección granular entre casi 100 instrumentos) es de **Premier**.

Esto cambia el flujo recomendado: con Pro, edita la canción y separa stems en Suno; para edición
multitrack detallada, exporta y termina en un DAW externo o sube a Premier si Studio es necesario.

## 3. Qué aporta v5.5 a la creación de canciones

La comunicación oficial atribuye a v5.5 arreglos más ricos, voces más nítidas y mayor dinamismo entre

La mejora práctica más importante es que v5.5 permite separar tres problemas distintos:

| Problema creativo | Herramienta v5.5 | Cuándo usarla |
|---|---|---|
| Quiero una voz reconocible propia | **Voice** | Demo, identidad vocal, pruebas de canción |
| Quiero una estética de catálogo coherente | **Custom Model** | Proyecto/artista con material propio consistente |
| Quiero que el asistente sugiera estilos afines a mis gustos | **My Taste** | Exploración inicial; no sustituye el prompt intencional |

No actives las tres capas a la vez sin una razón. Crea primero una línea base con v5.5 y prompt
propio; luego mide qué personalización mejora el resultado.

## 4. Voices: uso correcto y recomendaciones oficiales

**Voices** permite usar solo tu propia voz. Suno exige una verificación: compara el audio de canto o
habla cargado con una frase aleatoria que debes leer. No está permitido crear un modelo de voz de otra
persona.

### Requisitos operativos actuales

- Plan de pago y v5.5 seleccionado.
- Usuario de 18 años o más; la disponibilidad puede depender de la ubicación.
- Audio propio entre **15 segundos y 4 minutos**; se puede escoger el mejor fragmento de hasta dos
  minutos.
- Confirmación de que tienes derecho a usar la voz.

### Mejor práctica de captura

1. Graba o carga **acapella limpia** cuando sea posible.
2. Busca un entorno quieto y sin reverberación notable; evita tráfico, TV, ventiladores, baño o
   pasillos reflectantes.
3. Incluye un rango y una entrega parecidos a lo que pretendes generar.
4. Graba más material útil en vez de perseguir una toma "perfecta"; Suno recomienda apuntar a al
   menos un minuto si se puede.
5. Verifica la frase con voz clara y en un entorno silencioso.
6. Al generar, selecciona v5.5, carga la letra y el estilo; aumenta **Audio Influence** si quieres
   que el resultado conserve más el carácter de tu voz.

### Regla de compatibilidad

La documentación oficial recomienda emparejar la voz con un género y tempo donde funcione de manera
natural. Una voz íntima de folk puede dar un resultado menos convincente sobre un pop de alta energía.
Antes de culpar al prompt, prueba la misma letra en el rango/tempo donde tu voz se sostiene mejor.

## 5. Custom Models: identidad de catálogo, no botón mágico

Un **Custom Model** ajusta v5.5 con canciones de las que posees los derechos. Pro y Premier pueden
mantener hasta **tres** modelos; se requieren **al menos seis pistas** y la creación suele tardar unos
minutos según la base oficial.

### Selección del material de entrenamiento

Incluye pistas que compartan:

- Familia de género y paleta instrumental.
- Carácter vocal o enfoque instrumental.
- Nivel de energía y estética de producción.
- Calidad de audio suficiente para representar tu objetivo.

No mezcles seis canciones inconexas solo para alcanzar el mínimo. El modelo aprende señales comunes;
si la colección es caótica, la identidad que le das también lo será.

### Flujo recomendado

1. Define el propósito: `balada cinematográfica`, `catálogo de pop íntimo`, `beats de rap jazz`.
2. Reúne seis o más obras propias consistentes y con derechos claros.
3. Crea el modelo desde el selector de modelo.
4. Mantén el prompt de estilo: el Custom Model **complementa**, no reemplaza, la intención escrita.
5. Compara el mismo prompt y letra con v5.5 base frente al modelo personalizado.
6. Conserva el modelo solo si mejora la coherencia sin borrar la capacidad de variación.

Los Custom Models son privados y no se comparten entre usuarios según la documentación actual.

## 6. My Taste: apoyo, no piloto automático

**My Taste** está disponible para todos los usuarios y aprende de géneros, moods y hábitos de creación
y escucha. Al escribir un estilo, la varita mágica puede generar una descripción más detallada y
personalizada.

Uso recomendado:

1. Escribe primero tus propios anclajes: género, mood, voz o instrumentos.
2. Usa la varita para obtener una variante de estilo.
3. **Lee y edita** el resultado; no lo aceptes como autoridad.
4. Prueba tu prompt manual contra la versión aumentada con la misma letra.

Puedes revisar, editar o desactivar My Taste desde tu perfil. Desactívalo temporalmente cuando hagas
pruebas controladas: de otra forma, una personalización oculta puede contaminar la comparación.

## 7. Herramientas recientes que importan al letrista

La actualización web del 9 de julio de 2026 añade un editor de letras con:

- **Lyricist:** ejemplos de letras para guardar un estilo de escritura.
- Edición en lenguaje natural de líneas y esquemas de rima.
- Variaciones y referencias sobre una palabra o una línea seleccionada.
- Etiquetas de estructura como Verse y Outro.
- Guardado automático.

Úsalo para iterar la **letra antes de generar**, no para abandonar los fundamentos de métrica,
prosodia, hook y estructura de `00`–`10`.

## 8. Derechos y responsabilidades esenciales

Esto no es asesoramiento jurídico. Según los términos revisados el 26 de marzo de 2026:

- Debes tener todos los derechos, permisos y consentimientos para cualquier audio, letra u otro
  material que subas.
- Solo puedes crear una Voice Model de tu propia voz.
- Para usuarios Pro/Premier, Suno asigna los derechos que posea sobre outputs generados durante la
  suscripción de pago, pero **no garantiza que exista copyright** sobre el resultado.
- Los outputs pueden no ser únicos y otros usuarios pueden recibir resultados iguales o similares.
- Revisa siempre los términos actuales antes de distribución comercial.

## Resumen accionable

- Pro v5.5 es suficiente para crear, personalizar, editar y extraer stems básicos; Studio y Advanced
  Split requieren Premier.
- Para Voices: acapella limpia, entorno seco, muestra larga y género compatible; usa Audio Influence
  alto si necesitas mayor identidad vocal.
- Para Custom Models: usa seis o más obras propias **consistentes**, no una colección aleatoria.
- My Taste sirve para explorar; edita su propuesta y apágalo en pruebas controladas.
- Guarda fecha, modelo, prompt, letra y configuración: v5.5 es un sistema cambiante.
