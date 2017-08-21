var _array = argument[0];
var _name = argument[1];
var _image = argument[2];
var _ph = argument[3];
var _p = argument[4];


if(array_height_2d(_array) == 0){
	_array[0,0] = _name;
	_array[0,1] = _image;
	_array[0,2] = _ph;
	_array[0,3] = _p;
}else{
	var _index = array_height_2d(_array);
	_array[_index,0] = _name;
	_array[_index,1] = _image;
	_array[_index,2] = _ph;
	_array[_index,3] = _p;
}

return _array;