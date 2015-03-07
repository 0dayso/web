	
    
    <?php
	
	
	
	for($i=0;$i<count($list[0]);$i++)
	{
			
		 echo "<table style='border: 1px solid '>";
		 echo "<tr>";
		 echo "<td width=80px >";
		 		//图片
				preg_match_all('/<img src=\"(.*)\" \/>/', $list[0][$i], $arr);	
				//内容
				preg_match_all('/<a trace="auction"[^>]+ href="([^"]+)"[^>]+title="([^"]+)">/',  $list[0][$i], $title);
				//价格
				preg_match_all('/<div class="col total">([\w\W]*?)<div class="extend">/',$list[0][$i],$price);
				echo "<a href=\"".$title[1][0]."\"><img src=\"".$arr[1][0]."\" /  target=\"_blank\">".$title[2][0]."</a>";
				echo $price[1][0];
				if($i%4==0)echo "</br>";  $i++; 
		 echo "</td>";
		 echo "</tr>";
		 echo "</table>";
		  
		
	 }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 echo "<table style='border: 1px solid '>";
		 	 for($i=0;$i<count($list[0]);$i++)
		{
		 echo "<tr>";	
		 echo "<td style=' width=120px' >";
		 		//图片
				preg_match_all('/<img src=\"(.*)\" \/>/', $list[0][0], $arr);	
				//内容
				preg_match_all('/<a trace="auction"[^>]+ href="([^"]+)"[^>]+title="([^"]+)">/',  $list[0][0], $title);
				//价格
				preg_match_all('/<div class="col total">([\w\W]*?)<div class="extend">/',$list[0][0],$price);
				echo "<a href=\"".$title[1][0]."\"><img src=\"".$arr[1][0]."\" /  target=\"_blank\">".$title[2][0]."</a>";
				echo $price[1][0];
				//if($i%4==0)
				//echo"<div style='float:clear'></div>";
			    //break; $i++; 
		 echo "</td>";
		
		 echo "</tr>";
		  }
		  
		   	 for($i=0;$i<count($list[0]);$i++)
		{
		 echo "<tr>";	
		 echo "<td style=' width=120px' >";
		 		//图片
				preg_match_all('/<img src=\"(.*)\" \/>/', $list[0][1], $arr);	
				//内容
				preg_match_all('/<a trace="auction"[^>]+ href="([^"]+)"[^>]+title="([^"]+)">/',  $list[0][1], $title);
				//价格
				preg_match_all('/<div class="col total">([\w\W]*?)<div class="extend">/',$list[0][1],$price);
				echo "<a href=\"".$title[1][0]."\"><img src=\"".$arr[1][0]."\" /  target=\"_blank\">".$title[2][0]."</a>";
				echo $price[1][0];
				//if($i%4==0)
				//echo"<div style='float:clear'></div>";
			    //break; $i++; 
		 echo "</td>";
		
		 echo "</tr>";
		  }
		  
		   	 for($i=0;$i<count($list[0]);$i++)
		{
		 echo "<tr>";	
		 echo "<td style=' width=120px' >";
		 		//图片
				preg_match_all('/<img src=\"(.*)\" \/>/', $list[0][2], $arr);	
				//内容
				preg_match_all('/<a trace="auction"[^>]+ href="([^"]+)"[^>]+title="([^"]+)">/',  $list[0][2], $title);
				//价格
				preg_match_all('/<div class="col total">([\w\W]*?)<div class="extend">/',$list[0][2],$price);
				echo "<a href=\"".$title[1][0]."\"><img src=\"".$arr[1][0]."\" /  target=\"_blank\">".$title[2][0]."</a>";
				echo $price[1][0];
				//if($i%4==0)
				//echo"<div style='float:clear'></div>";
			    //break; $i++; 
		 echo "</td>";
		
		 echo "</tr>";
		  }
		  
		   	 for($i=0;$i<count($list[0]);$i++)
		{
		 echo "<tr>";	
		 echo "<td style=' width=120px' >";
		 		//图片
				preg_match_all('/<img src=\"(.*)\" \/>/', $list[0][3], $arr);	
				//内容
				preg_match_all('/<a trace="auction"[^>]+ href="([^"]+)"[^>]+title="([^"]+)">/',  $list[0][3], $title);
				//价格
				preg_match_all('/<div class="col total">([\w\W]*?)<div class="extend">/',$list[0][3],$price);
				echo "<a href=\"".$title[1][0]."\"><img src=\"".$arr[1][0]."\" /  target=\"_blank\">".$title[2][0]."</a>";
				echo $price[1][0];
				//if($i%4==0)
				//echo"<div style='float:clear'></div>";
			    //break; $i++; 
		 echo "</td>";
		
		 echo "</tr>";
		  }
		  
		  
		  
		   	 for($i=0;$i<count($list[0]);$i++)
		{
		 echo "<tr>";	
		 echo "<td style=' width=120px' >";
		 		//图片
				preg_match_all('/<img src=\"(.*)\" \/>/', $list[0][4], $arr);	
				//内容
				preg_match_all('/<a trace="auction"[^>]+ href="([^"]+)"[^>]+title="([^"]+)">/',  $list[0][4], $title);
				//价格
				preg_match_all('/<div class="col total">([\w\W]*?)<div class="extend">/',$list[0][4],$price);
				echo "<a href=\"".$title[1][0]."\"><img src=\"".$arr[1][0]."\" /  target=\"_blank\">".$title[2][0]."</a>";
				echo $price[1][0];
				//if($i%4==0)
				//echo"<div style='float:clear'></div>";
			    //break; $i++; 
		 echo "</td>";
		
		 echo "</tr>";
		  }
		  
		  
		   	 for($i=0;$i<count($list[0]);$i++)
		{
		 echo "<tr>";	
		 echo "<td style=' width=120px' >";
		 		//图片
				preg_match_all('/<img src=\"(.*)\" \/>/', $list[0][5], $arr);	
				//内容
				preg_match_all('/<a trace="auction"[^>]+ href="([^"]+)"[^>]+title="([^"]+)">/',  $list[0][5], $title);
				//价格
				preg_match_all('/<div class="col total">([\w\W]*?)<div class="extend">/',$list[0][5],$price);
				echo "<a href=\"".$title[1][0]."\"><img src=\"".$arr[1][0]."\" /  target=\"_blank\">".$title[2][0]."</a>";
				echo $price[1][0];
				//if($i%4==0)
				//echo"<div style='float:clear'></div>";
			    //break; $i++; 
		 echo "</td>";
		
		 echo "</tr>";
		  }
		 echo "</table>";
		  
			
			
	?>