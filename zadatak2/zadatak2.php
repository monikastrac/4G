<?php

$nes = mysqli_connect("localhost", "root", "", "classicmodels");
if(isset($_POST['queryTextBox']) && $_POST['queryTextBox'] != NULL)
{
    $sql = $_POST["queryTextBox"];
    if($result = mysqli_query($nes, $sql))
    {
        if(mysqli_num_rows($result) > 0)
        {
            echo "<table border='1' width='5' align='center'>";
            echo "<tr>";
            echo "<th>customerName</th>";
            echo "<th>contactLastName</th>";
            echo "<th>contactFirstName</th>";
            echo "</tr>";
            while($row = mysqli_fetch_array($result))
            {
                echo "<tr>";
                echo "<td>" . $row['customerName'] . "</td>";
                echo "<td>" . $row['contactLastName'] . "</td>";
                echo "<td>" . $row['contactFirstName'] . "</td>";
                echo "<tr>";
            }
            echo "</table>";
            mysqli_free_result($result);
        }
        else
        {
            echo "No records matching your query were found.";
        }
    }
    else
    {
        echo "ERROR: Could not able to execute $sql. " . mysqli_error($nes);
    }
    mysqli_close($nes);
}
else
?>
