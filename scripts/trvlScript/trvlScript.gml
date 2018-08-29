trvlId = argument0

var listCount = ds_list_size(global.travel_control);
//var i
  for (var i = 0; i <= listCount; i++) {
      if ((ds_list_find_value(global.travel_control,i)) = trvlId) 
	  {
        return true;
      }
  }
return false;