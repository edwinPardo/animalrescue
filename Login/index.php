<!DOCTYPE html><head>
 <meta charset="utf-8">
		<meta name="description" content="Ejemplo de HTML5 con CSS3">
		<meta name="keywords" content="HTML5, CSS3, JavaScript">
		<script src="jquery-1.11.1.min.js"></script>

		 <script>   
$(function(){
 $("#boton").click(function(){
 var url = "ingresar.php"; // El script a dónde se realizará la petición.
    $.ajax({
           type: "POST",
           url: url,
           data: $("#Formlogin").serialize(), // Adjuntar los campos del formulario enviado.
           success: function(data)
           {
               $("#respuesta").html(data); // Mostrar la respuestas del script PHP.
           }
         });

    return false; // Evitar ejecutar el submit del formulario.
 });
});
</script>

<title>Login</title>
</head>

<body>
<?php 
$link = mysql_connect("localhost","root","");
        mysql_select_db("animalrescue",$link);
?>



<form id="Formlogin" method="post">

	<div>
		<table align="center"  width="8" height="6">
			<tr>
               <td>Nombre:</td>
               <td><input type="text" name="nom" id="nombre"></td>
            </tr> 
             
            <tr>
               <td>Contraseña</td>
               <td><input type="password" name="pass" id="contrasena"></td>
            </tr>  
              
			<tr>
                <td colspan="2">             
               <input type="submit"  id="boton"  name="boton" value="Ingresar"/>
               <input type="submit"  id="boton"  name="boton" value="Registrarse"/>
               <input type="submit"  id="boton"  name="boton" value="Registrarse con facebook"/>
                </td>
            </tr>
		</table>

		

	</div>


</form>
</body>
</html>