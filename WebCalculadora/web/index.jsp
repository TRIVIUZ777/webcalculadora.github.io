<%-- 
    Documento   : calculadora
    Creado en : 5 nov 2023, 23:29:50
    Autor     : TRIVIUZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
    </head>
    <body>
        <h1>Calculadora Simple</h1>
        
        <form method="post">
            <!-- Formulario para ingresar números y seleccionar operación -->
            Ingresa el primer número: <input type="number" name="num1" /><br>
            Ingresa el segundo número: <input type="number" name="num2" /><br>
            Selecciona la operación:
            <select name="operacion">
                <option value="sumar">Suma (+)</option>
                <option value="restar">Resta (-)</option>
                <option value="multiplicar">Multiplicación (*)</option>
                <option value="dividir">División (/)</option>
            </select><br>
            <input type="submit" value="Calcular">
        </form>
        
        <%
            // Obtener los parámetros del formulario
            String num1Str = request.getParameter("num1");
            String num2Str = request.getParameter("num2");
            String operacion = request.getParameter("operacion");
            
            // Realizar el cálculo
            if (num1Str != null && num2Str != null) {
                try {
                    // Convertir los números ingresados a valores numéricos
                    double num1 = Double.parseDouble(num1Str);
                    double num2 = Double.parseDouble(num2Str);
                    double resultado = 0;

                    // Realizar la operación matemática seleccionada
                    if (operacion.equals("sumar")) {
                        resultado = num1 + num2;
                    } else if (operacion.equals("restar")) {
                        resultado = num1 - num2;
                    } else if (operacion.equals("multiplicar")) {
                        resultado = num1 * num2;
                    } else if (operacion.equals("dividir")) {
                        // Manejar la división por cero
                        if (num2 != 0) {
                            resultado = num1 / num2;
                        } else {
                            out.println("Error: División por cero");
                        }
                    }
                    
                    // Mostrar el resultado en la página
                    out.println("Resultado: " + resultado);
                } catch (NumberFormatException e) {
                    // Manejar la entrada no válida
                    out.println("Entrada no válida. Por favor, ingresa números válidos.");
                }
            }
        %>
    </body>
</html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <!-- Resto del contenido de tu archivo JSP -->
    </body>
</html>