// SPDX-License-Identifier: JAIRO LAMUS
pragma solidity 0.7.5;

contract Accounts1 { 
    //cada vez que Desplegamos el contrato se atacha a una nueva direccion ETH
    //0x34eb893B0406b1EF03B93dd3Dad3ce93b1C807EE
    //0x3FC3A28f299d1fD21312DDc2c362e92b97A5a831
    //0x201AdD9Bf514a9Abaa3E7474A081BBe1f7CCB226
    //este contrato tiene identidad autonoma, sus propias caracteristicas y saldo
    
    //function Banco2 () public {
    //}
    
    string public documentTitle;
    string public documentURL;
    address public documentOwner;
    
    constructor(string memory title, string memory url) public {
        documentTitle = title;
        documentURL = url;
        documentOwner = msg.sender;
    }
    
    function get_Direccion_Contrato() public view returns (address) {
        return address(this);
        //retorna la direccion del contrato, la cual se asigna al momento del deploy
        
    }
    
      function get_Direccion_DelInvocante() public view returns (address) {
        return address(msg.sender);
        //retorna la direccion del invocante
        
    }
    
}