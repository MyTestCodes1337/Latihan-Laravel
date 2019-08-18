<?php
namespace App\Scopes;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Scope;
use Illuminate\Database\Eloquent\Builder;

class scopePegawai implements Scope{

    public function apply($query,$q){
        if($q == null) return $query;
        return $query->where('name','LIKE',"%{$q}%")
                        -> orWhere('email','LIKE',"%{$q}%")
                        -> orWhere('job','LIKE',"%{$q}%");
    }
}
?>