<?php

	include("Model/mBenhnhan.php");

	class cBenhnhan{
		function view_benhnhan($mabv){
			$p = new mBenhnhan();
			$table = $p -> select_benhnhan($mabv);
			return $table;
		}
	}


?>