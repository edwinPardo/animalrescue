<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="Ejemplo de HTML5 con CSS3">
		<meta name="keywords" content="HTML5, CSS3, JavaScript">
		<script src="jquery-1.11.1.min.js"></script>

		 <script>
		 
		 $(function(){
 $("#boton").click(function(){
 var url = "crearRegistro.php"; // El script a dónde se realizará la petición.
    $.ajax({
           type: "POST",
           url: url,
           data: $("#FormRegistro").serialize(), // Adjuntar los campos del formulario enviado.
           success: function(data)
           {
               $("#respuesta").html(data); // Mostrar la respuestas del script PHP.
           }
         });

    return false; // Evitar ejecutar el submit del formulario.
 });
});
</script>
		 
<title>Registro de usuario</title>
</head>

<body>

<?php 
$link = mysql_connect("localhost","root","");
        mysql_select_db("animalrescue",$link);
?>

<form id="FormRegistro" method="post">

<table width="200">
  <tbody>
    <tr>
      <td>Nombre</td>
      <td><input type="text" name="nom" id="nombre"></td>
    </tr>
    <tr>
      <td>Apellido</td>
      <td><input type="text" name="ape" id="apellido"></td>
    </tr>
    <tr>
      <td>Contraseña</td>
      <td><input type="password" name="pass" id="password"></td>
    </tr>
    <tr>
      <td>Sexo</td>
      <td><input type="text" name="sex" id="sexo"></td>
    </tr>
  </tbody>
</table>

<table width="223">
  <tbody>
    <tr>
      <td align="center" ><input type="button" name="boton" id="boton" value="Aceptar"></td>
    </tr>
    <tr>
      <td align="center"><input type="button" name="boton" id="boton" value="Cancelar"></td>
    </tr>
  </tbody>
</table>


</form>

</body>
</html>