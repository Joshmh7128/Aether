secretId = argument0

var listCount = ds_list_size(global.secret_list);
//var i
  for (var i = 0; i <= listCount; i++) {
      if ((ds_list_find_value(global.secret_list,i)) = secretId) {
        return true;
      }
  }
return false;