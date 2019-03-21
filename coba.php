<style>
    body {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    }
    #customers {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 50%;
        margin-left: 25%;
    }
    #customers td, #customers th {
        border: 1px solid #ddd;
        padding: 8px;
    }
        #customers tr:nth-child(even){background-color: #a9a9a9;}
        #customers tr:hover {background-color: #dc143c;}
        #customers th {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: left;
          background-color: #dc143c;
          color: white;
        }
        .tbedit {
            background-color: #5ec3cc; /* Blue */
            border: none;
            color: white;
            padding: 5px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 13px;
            margin: 4px 2px;
            cursor: pointer;
            
        }
        .tbhapus {
            background-color: #bf3b3b; /* Red */
            border: none;
            color: white;
            padding: 5px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 13px;
            margin: 4px 2px;
            cursor: pointer;
            
        }
        .tbadd {
            background-color: #16a085; /* Red */
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 15px;
            margin: 4px 2px;
            cursor: pointer;
            
        }
</style>

<?php
// Check for the path elements
// Turn off error reporting
error_reporting(10);
// Report runtime errors
error_reporting(E_ERROR | E_WARNING | E_PARSE);
// Report all errors
error_reporting(E_ALL);
// Same as error_reporting(E_ALL);
ini_set("error_reporting", E_ALL);
// Report all errors except E_NOTICE
error_reporting(E_ALL & ~E_NOTICE);
$con=mysqli_connect("localhost","id7899377_pkl","","id7899377_devi");
// Check connection
	if (mysqli_connect_errno())
	{
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	else
	{
		
	$arr = array();

	$sql = "SELECT a.nim,b.nama,c.progdi FROM akun_mhs a JOIN dt_mhs b on a.nim=b.nim JOIN peserta c on b.nama=c.nama";
	$result = $con->query($sql); 
?>
	
	<table id="customers" border="1" >
	<tr>
		<th>NIM</th>
		<th>Nama</th>
		<th>Progdi</th>
	</tr>  
    	<?php 

    	if ($result->num_rows> 0) 
    		{
    		// output data of each row
    		while($row = $result->fetch_assoc()) {
    			
    			//echo "NIM: " . $row["nim"]. " - Nama: " . $row["nama"]. " - Progdi: " . $row["progdi"]. "<br>"; 
    			
    	?>
			<tr>
				<td><?php echo $row["nim"]; ?></td>
				<td><?php echo $row["nama"]; ?></td>
				<td><?php echo $row["progdi"]; ?></td>
			</tr>
			

			<?php
			$temp = array(
						"nim" => $row["nim"],
						"nama" =>$row["nama"],
						"progdi" => $row["progdi"]);
					array_push($arr, $temp); ?>
		
		<?php } ?>
        </table>
        <?php  
		} else {
		echo "0 results";
		}

	$con->close();
	$data = json_encode($arr);

	echo "{\"MENAMPILKAN DATA MAHASISWA dengan format JSON\":" . $data . "}";
	}

?>