<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pegawaiModel extends Model
{  
	protected $table = "pegawai";
	public $timestamps = false;

	public function scopeStatus($query,$status){
		if($status=="non-active") {
			return $query->Where('status','=','0');
		}
		elseif($status=="active"){
			return $query->Where('status','=','1');
		}elseif($status==null){
			return $query;
		}
	}

	public function scopeCari($query,$q){
		return $query
					->Where('name','LIKE',"%{$q}%")
					->orWhere('email','LIKE',"%{$q}%")
					->orWhere('job','LIKE',"%{$q}%");
	}

	protected $fillable = [
		'name',
		'email',
		'job',
		'status',
	];
	protected $casts = [
		'created_at' => 'datetime',
		'updated_at' => 'datetime',
	];
}
