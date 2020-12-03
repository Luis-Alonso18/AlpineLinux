@@
@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computación
@@ Ing. En Sistemas Computacionales
@@   
@@ Autor : Alonso Villegas Luis Antonio @nickname Luis-Alonso18
@@ Repositorio: https://github.com/Luis-Alonso18/AlpineLinux
@@ Fecha de revisión: 02/12/2020
@@ 
@
@ Objetivo del programa:
@    Desplegar en la pantalla el mensaje "Hello, ARM64!".
.data

/* Segmento de Datos: define el mensaje y calcula el tramaño de la cadena. */
msg:
    .ascii        "Hello, ARM64!\n"
len = . - msg

.text

/* Cuerpo del programa para desplegar la variable anterior. */
.globl _start
_start:
    /* syscall write(int fd, const void *buf, size_t count) */
    mov     x0, #1      /* fd := STDOUT_FILENO */
    ldr     x1, =msg    /* buf := msg */
    ldr     x2, =len    /* count := len */
    mov     w8, #64     /* write is syscall #64 */
    svc     #0          /* invoke syscall */

    /* syscall exit(int status) */
    mov     x0, #0      /* status := 0 */
    mov     w8, #93     /* exit is syscall #1 */
    svc     #0          /* invoke syscall */
