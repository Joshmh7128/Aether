spcId = argument0

var listCount = ds_list_size(global.spc_list);
//var i
  for (var i = 0; i <= listCount; i++) {
      if ((ds_list_find_value(global.spc_list,i)) = spcId) 
	  {
        return true;
      }
  }
return false;