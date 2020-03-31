<?php

$link = new mysqli('localhost', 'root', '', 'čokolade');

if($link === false)
{
    die("error" . mysqli_connect_error());
}
if($result = mysqli_query($link, "SELECT * FROM čokolade"))
{
    if(mysqli_num_rows($result) > 0)
    {
        echo "<table border='1' width='5' align='center'> ";
        echo "<tr>";
        echo "<th>Id</th>";
        echo "<th>Proizvođač</th>";
        echo "<th>Vrsta</th>";
        echo "<th>Cijena (kn)</th>";
        echo "<th>Količina (g)</th>";
        echo "</tr>";
    }
}

    while($row = mysqli_fetch_array($result))
    {
    echo "<tr>";
    echo "<td>" . $row['Id']."</td>";
    echo "<td>" . $row['Proizvođač']."</td>";
    echo "<td>" . $row['Vrsta']."</td>";
    echo "<td>" . $row['Cijena']."</td>";
    echo "<td>" . $row['Količina (g)']."</td>";
    echo "<tr>";
    }
    echo "</table>";
mysqli_free_result($result);

?>