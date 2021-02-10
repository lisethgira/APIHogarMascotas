<?php namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class APIController extends ResourceController
{
    protected $modelName = 'App\Models\animalesModelo';
    protected $format    = 'json';

    public function index(){
        
        return $this->respond($this->model->findAll());
    }
    
    
    public function registrarAnimal(){

        //1. Recibir los datos del Conductor desde el Cliente
        $idAnimal = $this -> request ->getPost('idAnimal');
        $nombre=$this-> request->getPost('nombre');
        $edad=$this-> request->getPost('edad');
        $tipo=$this-> request->getPost('tipo');
        $descripcion=$this-> request->getPost('descripcion');
        $comida=$this-> request->getPost('comida');

        //2.Armar un arreglo asociativo donde las claves seran los nombres de las columnas o atributos de la tabla con los datos que llega de la petición
        $datosEnvio=array(

            "idAnimal"=>$idAnimal,
            "nombre"=>$nombre,
            "edad"=>$edad,
            "tipo"=>$tipo,
            "descripcion"=>$descripcion,
            "comida"=>$comida
        );
        //3. ejecutamos validacion y agregamos el registro

        if($this->validate('animales')){
           
            $this->model->insert($datosEnvio);
            $mensaje=array('estado'=>true,'mensaje'=>"registro agregado con exito");
            return $this->respond($mensaje);

        }
        else{
            $validation =  \Config\Services::validation();
            return $this->respond($validation->getErrors(),400);

        }

        
    }
    public function editarAnimal($id){

        //1.recibir los datos que llegan de la petición
        $datosPeticion=$this->request->getRawInput();
        return $this->respond($datosPeticion);

        //2.Obtener solo los datos que deseo editar
        $nombre=$datosPeticion['nombre'];
        $edad=$datosPeticion['edad'];

        //3.creamos un arreglo asociativo con los datos para enviar al modelo
        $datosEnvio=array(
            "nombre"=>$nombre,
            "telefono"=>$telefono
        );
        
        //4. validamos y ejecutamos la operción en BD
        if($this->validate('animalesPUT')){
           
            $this->model->update($id,$datosEnvio);
            $mensaje=array('estado'=>true,'mensaje'=>"editado con exito");
            return $this->respond($mensaje);

        }
        else{
            $validation =  \Config\Services::validation();
            return $this->respond($validation->getErrors(),400);

        }
    }
    public function eliminarAnimal($id){

        //1.ejecutar la operación de delete
       $consulta=$this->model->where('idAnimal',$id)->delete();
       $filasAfectas=$consulta->connID->affected_rows;

        //2.validar si el registro existe o no
        if($filasAfectas==1){
           
            $mensaje=array('estado'=>true,'mensaje'=>"eliminado con exito");
            return $this->respond($mensaje);

        }
        else{
            $mensaje=array('estado'=>false,'mensaje'=>"el animal a eliminar no ha sido encontrado");
            return $this->respond($mensaje,400);

        }
       
    }

    
}