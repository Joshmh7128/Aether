keyId = argument0

var listCount = ds_list_size(global.key_list);
//var i
  for (var i = 0; i <= listCount; i++) {
      if ((ds_list_find_value(global.key_list,i)) = keyId) 
	  {
        return true;
      }
  }
return false;