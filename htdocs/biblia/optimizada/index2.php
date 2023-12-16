<?php include 'vendors/autoload.php';
  use vendors\NOTAS\Notas;
 ?>
<!DOCTYPE html>
<html>
<head>
  <title>app biblia</title>
</head>
<body>
<?php
  $n = new Notas();
  $n->get();
  var_dump($n->resultado);
  echo 'notas trabaja correctamente ahora vamos a ver biblia';
    use vendors\consultadb\Biblia;
  $favoritos = new Biblia();
  $favoritos->get();
  var_dump($favoritos->resultado);
?>
</body>
</html>