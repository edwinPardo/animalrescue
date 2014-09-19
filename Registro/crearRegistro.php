<?php

$link = mysql_connect("localhost","root","");
        mysql_select_db("animalrescue",$link);
		
		$nombre=$_POST["nom"];
		$apellido=$_POST["ape"];
		$contra=$_POST[md5("pass")];
		$sexo=$_POST["sex"];
		
		if (!mysql_query("insert into usuario values('$nombre','$apellido','$contra','$sexo')",$link))
		{
			  echo "<br>No se ha podido Registrarse intentarlo mas tarde Gracias ";
             }  
	        else
	        {
             echo "<br>Se aregistrado exitosamente  ";
            
	    }

/*		
  function alerta(){
    if(confirm("usted se a registraso exitosamente ")){
        alert('Pulsaste aceptar!');
    }else{
        alert('Pulsaste cancelar!');
    }
  }*/


?>