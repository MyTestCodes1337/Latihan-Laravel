<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Schema;

class CrudGenerator extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'gg:create {name}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Generate Model,Controller,Request and View in 1 time';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        /**
         * *Anything started from here
         */
        $name = $this->argument('name');
        $this->model($name);
        $this->controller($name);
        $this->request($name);
        $this->view($name);
        $this->writeRoute($name);
        
    }


    protected function writeRoute($name)
    {
        /** 
         * * Dont  Change anything
         * */ 
        $route_path = base_path('routes/web.php');
        $append = 'Route::resource(\'' .strtolower($name) . "', '{$name}Controller');";
        $files = file_get_contents($route_path);
        $file_arr = explode("\n",$files);

        if(in_array($append,$file_arr)){
            $this->info("* This route already exists");
        }else{
            file_put_contents($route_path, $append, FILE_APPEND | LOCK_EX);
            $this->info("Success Generating ".$name);
            $this->info("* Generated this route");
        }

    }


    protected function getStub($type)
    {
        return file_get_contents(resource_path("stubs/$type.stub"));
    }


    protected function view($name)
    {
        //* Dont Change this code
        
        $indexTemplate = str_replace(
            ['{{ modelName }}'],
            [$name],
            $this->getStub('Index')
        );
        $createTemplate = str_replace(
            ['{{ modelName }}'],
            [$name],
            $this->getStub('Create')
        );
        $formTemplate = str_replace(
            ['{{ modelName }}'],
            [$name],
            $this->getStub('Form')
        );
        $updateTemplate = str_replace(
            ['{{ modelName }}'],
            [$name],
            $this->getStub('Update')
        );


        // * Variabel path
        $path = [
            [
                resource_path("/views/{$name}/index.blade.php"),
                resource_path("/views/{$name}/create.blade.php"),
                resource_path("/views/{$name}/form.blade.php"),
                resource_path("/views/{$name}/edit.blade.php")
            ],
            [
                $indexTemplate,
                $createTemplate,
                $formTemplate,
                $updateTemplate
            ]
        ];

        // * Create view folder
        if(!file_exists(resource_path("/views/".$name."/"))) mkdir(resource_path("/views/".$name."/"),0755,true);

        
        
        for ($i = 0; $i < 4; $i++){
            if(file_exists($path[0][$i])){
                if($this->confirm("Replace {$path[0][$i]} file ?")){
                    file_put_contents($path[0][$i],$path[0][$i]);
                    $this->info("Created {$path[0][$i]} .");
                }
            }else{
                file_put_contents($path[0][$i],$path[0][$i]);
                $this->info("Created {$path[0][$i]} .");
            }
        }
        
    }


    protected function model($name)
    {
        $path = app_path("/Models/{$name}Model.php");
        if(file_exists($path)){
            if($this->confirm("Replace {$name}Model.php file ?")){
                $modelTemplate = str_replace(
                    [
                        '{{ modelName }}',
                        '{{ modelNameLower }}',
                        '{{ modelNormalize }}'
                    ],
                    [
                        $name,
                        strtolower($name),
                        ltrim(strtolower(preg_replace('/[A-Z]([A-Z](?![a-z]))*/', '_$0', $name)), '_')
                    ],
                    $this->getStub('Model')
                );
                if($this->confirm("Apakah table {$name} sudah ada ?")){
                    $temp = explode("modelable",$modelTemplate);
                    $addColumn = "";
                    //* Getting column name as array
                    $columns = Schema::getColumnListing(ltrim(strtolower(preg_replace('/[A-Z]([A-Z](?![a-z]))*/', '_$0', $name)), '_'));
                    foreach($columns as $column){
                        if($column != "id"){
                            if($addColumn == ""){
                                $addColumn .= $column.",\n";
                            }else{
                                $addColumn .= "\t".$column.",\n";
                            }
                        }
                    }
                    $temp = $temp[0].rtrim($addColumn,",\n").$temp[1];
                    print($temp);
                    exit();
                    $modelTemplate = $temp;
                }

                if(!file_exists($dir_path = app_path('./Models/'))) mkdir($dir_path,0777,true);
                file_put_contents($path, $modelTemplate);
            }
        }else{
            $modelTemplate = str_replace(
                [
                    '{{ modelName }}',
                    '{{ modelNameLower }}'
                ],
                [
                    $name,
                    strtolower($name)
                ],
                $this->getStub('Model')
            );
            if(!file_exists($dir_path = app_path('./Models/'))) mkdir($dir_path,0777,true);
            file_put_contents($path, $modelTemplate);
        }
        
    }


    protected function controller($name)
    {
        $path = app_path("/Http/Controllers/{$name}Controller.php");
        if(file_exists($path)){
            if($this->confirm("Replace {$path} file ?")){
                $controllerTemplate = str_replace(
                    [
                        '{{ modelName }}',
                        '{{ modelNamePluralLowerCase }}',
                        '{{ modelNameSingularLowerCase }}'
                    ],
                    [
                        $name,
                        strtolower(str_plural($name)),
                        strtolower($name)
                    ],
                    $this->getStub('Controller')
                );
                file_put_contents($path, $controllerTemplate);
                $this->info("Creating : \App\Http\Controllers\{$name}Controller");
            }
        }
        else
        {
            $controllerTemplate = str_replace(
                [
                    '{{ modelName }}',
                    '{{ modelNamePluralLowerCase }}',
                    '{{ modelNameSingularLowerCase }}'
                ],
                [
                    $name,
                    strtolower(str_plural($name)),
                    strtolower($name)
                ],
                $this->getStub('Controller')
            );

            file_put_contents($path, $controllerTemplate);

            $this->info("Creating : \App\Http\Controllers\{$name}Controller");
        }
        
    }


    protected function request($name)
    {
        $path = app_path("/Http/Requests/{$name}Request.php");
        if(file_exists($path)){
            if($this->confirm("Replace {$path} file ?")){
                $requestTemplate = str_replace(
                    ['{{ modelName }}'],
                    [$name],
                    $this->getStub('Request')
                );
                if(!file_exists($dir_path = app_path('/Http/Requests/'))) mkdir($dir_path, 0777, true);
                file_put_contents($path, $requestTemplate);
            }
        }else{
            $requestTemplate = str_replace(
                ['{{ modelName }}'],
                [$name],
                $this->getStub('Request')
            );
            if(!file_exists($dir_path = app_path('/Http/Requests/'))) mkdir($dir_path, 0777, true);
            file_put_contents($path, $requestTemplate);
        }
        
    }
}
