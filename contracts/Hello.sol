pragma solidity ^0.4.0;
contract mortal {
     
    address owner; //se define una variable de tipo address (que contiene la direccion de ethereum con valor de 20bytes)
    
    function mortal() { owner = msg.sender; } //Inicializa el contrato 
    
    function kill() { if (msg.sender == owner) selfdestruct(owner); } // funcion para recoger los fondos en el contrato (msg.sender= remitente del mensaje actual) (selfdestruct= destruye y envia todo el restante almacenado)
}

    contract greeter is mortal { // nuevo contrato
        
        string greeting; //se define la variable greeting de typo string
        
        function greeter (string _greeting) public {// este se ejecuta cuando el contrato se encuentre en ejecucion
            greeting = _greeting;
        }
        function greet() constant returns (string) { // este es el main de la funcion
            return greeting;
        }
    }