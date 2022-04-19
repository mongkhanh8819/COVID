<?php

	include("Model/mPhieudexuat.php");

	class cPhieudexuat{
		function view_phieudexuat(){
			$p = new mPhieudexuat();
			$table = $p -> select_phieudexuat();
			return $table;
		}
	}


?>