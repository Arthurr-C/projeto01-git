// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Exemplo {
    address public owner;
    
    // Modifier para verificar se o chamador é o proprietário do contrato
    modifier apenasProprietario() {
        require(msg.sender == owner, "So o proprietario pode executar");
        _; // Isso indica ao Solidity onde inserir o corpo da função modificada
    }

    // Função que pode ser chamada apenas pelo proprietário
    function funcaoApenasProprietario() public apenasProprietario {
        // Lógica da função aqui
    }

    constructor() {
        owner = msg.sender;
    }
}
