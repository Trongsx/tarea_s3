#scripts/tarea_s3

## Autor: Tomas Troncoso Villa 
## Fecha: 2026-08-27
## Que hace: Este script fue diseñado para realizar la tarea de la semana 3. 


1. **Crea al menos 3 vectores** con datos económicos coherentes entre sí

###**Variables:** (salario, anios, bonos de navidad por tamaño familiar, ipc)

salario <- c(500000, 450000, 600000, 375000)
bonos_navidad_familia <- c(20000, 15000, 30000, 25000)
ipc <- c(1.000,  1.043,  1.087, 1.080)
anios <- 2022:2025

## Verficiacion de clase

class(salario) ## [1] "numeric"
class(bonos_navidad_familia) ## [1] "numeric"
class(ipc) ##[1] "numeric"
class(anios) ##[1] "integer"

## Verificacion de tamaños

length(salario) ## [1] 4
length(bonos_navidad_familia) ## [1] 4
length(ipc) ## [1] 4
length(anios) ## [1] 4


2. **Selecciona por posición:** extrae elementos específicos

ingreso_hogar <- (salario+bonos_navidad_familia)
ingreso_hogar ## [1] 520000 465000 630000 400000

ingreso_hogar[2] ##Seleccion del segundo elemento: [1] 465000
ingreso_hogar[c(1, 3, 4)] ##seleccion del primer, tercer y cuarto o todos menos el segundo: [1] 520000 630000 400000
ingreso_hogar[-3] ##Todos menos el tercero: [1] 520000 465000 400000


3. **Selecciona por condición:** filtra con una condición lógica y **cuenta** cuántos y qué **proporción** la cumplen

#¿En que anios, se cumple que los ingresos del hogar fueron mayores a 500000?

anios[ingreso_hogar > 500000]  ## [1] 2022 2024
sum(ingreso_hogar > 500000) ## [1] 2
mean(ingreso_hogar > 500000) ## [1] 0.5 or 50% del grupo


4. **Operación vectorizada:** calcula una variable derivada sobre todo el vector

ingreso_hogar_real <- (ingreso_hogar/ipc)
ingreso_hogar_real ## [1] 520000.0 445829.3 579576.8 370370.4
round(ingreso_hogar_real) ## [1] 520000 445829 579577 370370


5. **Estadísticas:** calcula `mean`, `median`, `sd` y `quantile` de un vector, y
**comenta** en una línea qué te dice cada una sobre los datos.


mean(ingreso_hogar_real) ## [1] 478944.1  **Interpretacion de la media:** el ingreso real de los hogares de este grupo de trabajadores durante el periodo 2022 a 2025 es de 478944.

median(ingreso_hogar_real) ## [1] 482914.7 **Interpretacion de la mediana:** en la primera mitad de los años del periodo observado, el ingreso real de los hogares fue menor a 482914.7, luego en la segunda mitad de este periodo observado el ingreso real fue mayor a esa cifra 

sd(ingreso_hogar_real) ## [1] 90732.89  **Interpretacion de la desviacion estandar: indica que los ingresos reales de los hogares durante el periodo observado, fluctuan en aproximadamente 90732.89 unidades monetarias respecto a la media.

quantile(ingreso_hogar_real) ## 0% 370370.4  **Interpretacion del cuartil 0:** valor minimo del conjunto de ingreso real por hogar fue de 370370.4.
                             ## 25% 426964.6 **Interpretacion del cuartil 1:** En una cuarta parte de los datos, el ingreso real por hogar fue igual o inferiro a 426964.6.
                             ## 50% 482914.7 **Interpretacion del cuartil 2:** Marca el corte central de la distribucion de ingresos
                             ## 75% 534894.2 **Interpretacion del cuartil 3:** en el 75% de los años, el ingreso real por hogar no supero los 534894.2, mientras que el 25% restante si.
                             ## 100% 579576.8 **Interpretacion del cuartil 4:** El maximo ingreso real obtenido por una familia fue de 579576.8

## como interpretacion general, se podria decir que al no haber una diferencia muy grande entre la media y la mediana, este grupo de hoagres no presenntan valores extremos a simple vista, pero gracias a la desviacion estandar, si podemos decir que hay una fluctuacion de 90733 respecto al ingreso real percibido por otros hoagres del mismo grupo de estudio.


6. **Comenta el porqué**, no el qué: cada bloque con un comentario que explique la
decisión, no que repita el código.

1. ## Se estructuraron los datos en vectores de igual cantidad de datos para garantizar sincronia con el periodo observado.
   ## Se verificaron tanto la clase como la longitud de cada variable, siendo todas vectores [1:4] para mantener la sincronia
   ## Los resultados estan puestos como comentarios (##) al lado derecho de donde se coloca la furmula para poder verificar si la respuesta esperada es igual a lo expuesto en la consola.
   ## En toda salida de comando a partir de las proximas preguntasl, se muestran los resultados esperados que estan descritos en comentarios (##)

2. ## Se consolida el salario y los bonos de navidad a traves de una suma y asi crear el vector ingreso real.
   ## De este se extraen los datos por posicion para poder aislar o excluir datos que pudieran tener comportamientos incorrectos en caso de querer evaluarse.

3. ## Se establece una pregunta para filtrar una condicion, en este caso estableciendo el vector de ingreso hogar > 50000.
   ## Pero que estos resultados ademas se filtren por anio, siendo un analisis mas especifico.
   ## igualmente se calculo cuantos y en que proporcion se cumplieron estas especificaciones a tarves de los comandos sum y mean.

4. ## Para que la operacion vectorizada tuviera un mejor sentido economico, se incorporo la variable ipc con un vector de igual longitud que la del ingreso_hoga
   ## esto para fines de crear un nuevo vector que represente el ingreso real por hogar durante los 4 anios observados.
   ## de igual forma se utilizo el comando round para entregar los resultados en numeros enteros.

5. ## se calculan las operaciones estadisticas solicitadas como media (mean), mediana (median), desviacion estandar (sd) y cuantiles (quantile)
   ## Esto acompañado de una serie de descripciones por resultado, para dar una mejor intrepetacion economica de las variables analizadas
   ## pudiendo asi identificar si los grupos familiares están tienen una alta volatilidad o si sus ingresos se distribuyen de manera simétrica.



