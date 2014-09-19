<?PHP

$link = mysql_connect("localhost","root","");
        mysql_select_db("animalrescue",$link);
		
		
		$nom=$_POST["nom"];
		$contra=$_POST["pass"];
		
		$cifrar=md5($contra);
		
		
$cursor=mysql_query("select id_usuario,nombre, contrasena  from usuario where nombre='$nom' and contrasena='$contra' ",$link);

while($fila=mysql_fetch_row($cursor)){
     
	 $id=$fila[0];
	 $us=$fila[1];
	 $ps=$fila[2];//contraseña cifrada
	// $pbd=md5($ps); contraseña de la bd decifrada
	 

	 
}
if($nom=NULL && $contra==NULL){
	
	echo("Pot favor ingresar un usuario una comtraseña");
	
}
if($contra==$ps){
	
	header('Location:');
	
}else if($contra!=$ps){
	
 alerta();

	
}

function alerta(){
    if(confirm("El usuario y contraseña son incorrectos vuelva a intentarlo ")){
        alert('Pulsaste aceptar!');
    }else{
        alert('Pulsaste cancelar!');
    }
}

?>