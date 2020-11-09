<?php 
include ('connect.php');
$url = "http://healthkpi.moph.go.th/kpi2/kpi/kpi-list/?year=2563";
$json = file_get_contents($url);
$json_data = json_decode($json, true);
$count = Count($json_data);



?>



<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>

    <form enctype="multipart/form-data" id="form-insert-stock" method="POST" action="index.php">
        <table class="table">
            <thead>
                <tr>
                    <th>id</th>
                    <th>kpi_year</th>
                    <th>kpi_level</th>
                    <th>kpi_no</th>
                    <th>kpi_order</th>
                    <th>title</th>
                    <th>kpi_unit</th>
                    <th>goal</th>
                    <th>operator</th>
                    <th>q1_goal</th>
                    <th>q2_goal</th>
                    <th>q3_goal</th>
                    <th>q4_goal</th>
                    <th>result</th>
                    <th>parent_id</th>
                </tr>
            </thead>
            <?php for ($i=0; $i < $count ; $i++) { 
                $tempid[]= $json_data[$i]['id']; 
                $tempkey[]= $json_data[$i]['kpi_year']; 
                $tempkpi_level[]= $json_data[$i]['kpi_level']; 
                $tempkpi_no[]= $json_data[$i]['kpi_no']; 
                $tempkpi_order[]= $json_data[$i]['kpi_order']; 
                $temptitle[]= $json_data[$i]['title']; 
                $tempkpi_unit[]= $json_data[$i]['kpi_unit']; 
                $tempkeygoal[]= $json_data[$i]['goal']; 
                $tempkeyoperator[]= $json_data[$i]['operator']; 
                $tempkeyq1_goal[]= $json_data[$i]['q1_goal']; 
                $tempkeyq2_goal[]= $json_data[$i]['q2_goal']; 
                $tempkeyq3_goal[]= $json_data[$i]['q3_goal']; 
                $tempkeyq4_goal[]= $json_data[$i]['q4_goal']; 
                $tempkeyresult[]= $json_data[$i]['result']; 
                $tempkeyparent_id[]= $json_data[$i]['parent_id']; 
                ?>
            <tbody>
                <tr>
                    <td> <input type="text" class="form-control" name="ids[]" id="ids"
                            value="<?php echo  $tempid[$i]; ?>"></td>
                    <td> <input type="text" class="form-control" name="kpi_year[]" id="kpi_year"
                            value="<?php echo  $tempkey[$i]; ?>"></td>
                    <td> <input type="text" class="form-control" name="kpi_level[]" id="kpi_level"
                            value="<?php echo  $tempkpi_level[$i]; ?>"></td>
                    <td> <input type="text" class="form-control" name="kpi_no[]" id="kpi_no"
                            value="<?php echo  $tempkpi_no[$i]; ?>"></td>
                    <td> <input type="text" class="form-control" name="kpi_order[]" id="kpi_order"
                            value="<?php echo  $tempkpi_order[$i]; ?>"></td>
                    <td>
                        <input type="text" class="form-control" name="title[]" id="title"
                            value="<?php echo  $temptitle[$i]; ?>">
                    </td>
                    <td> <input type="text" class="form-control" name="kpi_unit[]" id="kpi_unit"
                            value="<?php echo  $tempkpi_unit[$i]; ?>"></td>
                    <td> <input type="text" class="form-control" name="goal[]" id="goal"
                            value="<?php echo  $tempkeygoal[$i]; ?>"></td>
                    <td>
                        <input type="text" class="form-control" name="operator[]" id="operator"
                            value="<?php echo  $tempkeyoperator[$i]; ?>">
                    </td>
                    <td> <input type="text" class="form-control" name="q1_goal[]" id="q1_goal"
                            value="<?php echo  $tempkeyq1_goal[$i]; ?>"></td>
                    <td>
                        <input type="text" class="form-control" name="q2_goal[]" id="q2_goal"
                            value="<?php echo  $tempkeyq2_goal[$i]; ?>">
                    </td>
                    <td> <input type="text" class="form-control" name="q3_goal[]" id="q3_goal"
                            value="<?php echo  $tempkeyq3_goal[$i]; ?>"></td>
                    <td>
                        <input type="text" class="form-control" name="q4_goal[]" id="q4_goal"
                            value="<?php echo  $tempkeyq4_goal[$i]; ?>">
                    </td>
                    <td>
                        <input type="text" class="form-control" name="result[]" id="result"
                            value="<?php echo  $tempkeyresult[$i]; ?>">
                    </td>
                    <td> <input type="text" class="form-control" name="parent_id[]" id="parent_id"
                            value="<?php echo  $tempkeyparent_id[$i]; ?>"></td>
                </tr>
                <?php  }?>
                <button type="submit" name="submit" class="btn btn-primary">Submit</button>
            </tbody>
        </table>
    </form>
    <?php  
if(isset($_POST['submit'])){
    // $updateDupicate = "ON DUPLICATE KEY UPDATE idNo=".values(idNo).", kpi_year="values(kpi_year")"
    $sql_insert = "INSERT  INTO ApiTable (idNo,kpi_year,kpi_level,kpi_no,kpi_order,title,kpi_unit,goal,operator,q1_goal,q2_goal,q3_goal,q4_goal,result,parent_id) VALUES  ";

    for ($index=1; $index <$count ; $index++) { 
        if($index==1 ){
            $sql_insert = $sql_insert . "('".$tempid[$index]."','".$tempkey[$index]."', '".$tempkpi_level[$index]."', '".$tempkpi_no[$index]."', '".$tempkpi_order[$index]."','".$temptitle[$index]."','". $tempkpi_unit[$index]."','".$tempkeygoal[$index]."','". $tempkeyoperator[$index]."','".$tempkeyq1_goal[$index]."','". $tempkeyq2_goal[$index]."','". $tempkeyq3_goal[$index]."','". $tempkeyq4_goal[$index]."','". $tempkeyresult[$index]."','".$tempkeyparent_id[$index]."') ";
           
        }else{
            $sql_insert = $sql_insert . ",('".$tempid[$index]."','".$tempkey[$index]."', '".$tempkpi_level[$index]."', '".$tempkpi_no[$index]."', '".$tempkpi_order[$index]."','".$temptitle[$index]."','". $tempkpi_unit[$index]."','".$tempkeygoal[$index]."','". $tempkeyoperator[$index]."','".$tempkeyq1_goal[$index]."','". $tempkeyq2_goal[$index]."','". $tempkeyq3_goal[$index]."','". $tempkeyq4_goal[$index]."','". $tempkeyresult[$index]."','".$tempkeyparent_id[$index]."') ";
    
        }
  

    }
    $sql_insert = $sql_insert. 'ON DUPLICATE KEY UPDATE idNo =values(idNo), kpi_year = values(idNo) ';

    $db_r4->exec($sql_insert);
}


?>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>