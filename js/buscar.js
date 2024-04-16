document.getElementById('searchFormPizza').addEventListener('submit', function(event) {
    event.preventDefault();
    
    var saborPizza = document.getElementById('pizza').value;

    // Aqui você fará uma solicitação AJAX para o backend para buscar os dados do pedido
    // e exibir os resultados na página
    // Exemplo:
    fetch('buscar_pizza.php?sabor_pizza=' + encodeURIComponent(saborPizza))
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                document.getElementById('resultPizza').innerHTML = data.error;
            } else {
                // Construa a lista de pedidos
                var html = '<h2>Pedidos</h2>';
                html += '<ul>';
                data.forEach(function(pedidos) {
                    html += '<li>ID do Pedido: ' + pedidos.id_pedido + '</li>';
                    html += '<li>ID do Cliente: ' + pedidos.id_cliente + '</li>';
                    html += '<li>Quantidade: ' + pedidos.quantidade + '</li>';
                    html += '<li>Data: ' + pedidos.data_pedido + '</li>';
                    html += '<li>Valor Total: ' + pedidos.valor_total + '</li>';
                    html += '<li>Sabor: ' + pedidos.sabor_pizza + '</li>';
                    html += '<li>Status: ' + pedidos.status + '</li>';
                    html += '<br>';
                });
                html += '</ul>';
                document.getElementById('resultPizza').innerHTML = html;
            }
        })
        .catch(error => {
            console.error('Erro ao buscar dados do pedido:', error);
        });
});

document.getElementById('searchFormCliente').addEventListener('submit', function(event) {
    event.preventDefault();
    
    var nomeCliente = document.getElementById('cliente').value;

    // Aqui você fará uma solicitação AJAX para o backend para buscar os dados do pedido
    // e exibir os resultados na página
    // Exemplo:
    fetch('buscar_cliente.php?nome=' + encodeURIComponent(nomeCliente))
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                document.getElementById('resultCliente').innerHTML = data.error;
            } else {
                // Construa a lista de pedidos
                var html = '<h2>Clientes</h2>';
                html += '<ul>';
                data.forEach(function(clientes) {
                    html += '<li>ID do Cliente: ' + clientes.id_cliente + '</li>';
                    html += '<li>Nome: ' + clientes.nome + '</li>';
                    html += '<li>CPF: ' + clientes.cpf + '</li>';
                    html += '<li>Email: ' + clientes.email + '</li>';
                    html += '<br>';
                });
                html += '</ul>';
                document.getElementById('resultCliente').innerHTML = html;
            }
        })
        .catch(error => {
            console.error('Erro ao buscar dados do pedido:', error);
        });
});

document.getElementById('searchFormFuncionario').addEventListener('submit', function(event) {
    event.preventDefault();
    
    var nomeFuncionario = document.getElementById('funcionario').value;

    // Aqui você fará uma solicitação AJAX para o backend para buscar os dados do pedido
    // e exibir os resultados na página
    // Exemplo:
    fetch('buscar_funcionario.php?nome=' + encodeURIComponent(nomeFuncionario))
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                document.getElementById('resultFuncionario').innerHTML = data.error;
            } else {
                // Construa a lista de pedidos
                var html = '<h2>Funcionarios</h2>';
                html += '<ul>';
                data.forEach(function(funcionarios) {
                    html += '<li>ID do Funcionario: ' + funcionarios.id_funcionario + '</li>';
                    html += '<li>Nome: ' + funcionarios.nome + '</li>';
                    html += '<li>Cargo: ' + funcionarios.cargo + '</li>';
                    html += '<li>Salário: ' + funcionarios.salario + '</li>';
                    html += '<br>';
                });
                html += '</ul>';
                document.getElementById('resultFuncionario').innerHTML = html;
            }
        })
        .catch(error => {
            console.error('Erro ao buscar dados do pedido:', error);
        });
});

document.getElementById('searchFormArea').addEventListener('submit', function(event) {
    event.preventDefault();
    
    var idArea = document.getElementById('area').value;

    // Aqui você fará uma solicitação AJAX para o backend para buscar os dados do pedido
    // e exibir os resultados na página
    // Exemplo:
    fetch('buscar_areas.php?id_area=' + encodeURIComponent(idArea))
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                document.getElementById('resultArea').innerHTML = data.error;
            } else {
                // Construa a lista de pedidos
                var html = '<h2>Areas</h2>';
                html += '<ul>';
                data.forEach(function(areas) {
                    html += '<li>ID da área: ' + areas.id_area + '</li>';
                    html += '<li>Nome: ' + areas.area_funcionario + '</li>';
                    html += '<br>';
                });
                html += '</ul>';
                document.getElementById('resultArea').innerHTML = html;
            }
        })
        .catch(error => {
            console.error('Erro ao buscar dados do pedido:', error);
        });
});

document.getElementById('searchFormFornecedor').addEventListener('submit', function(event) {
    event.preventDefault();
    
    var idFornecedor = document.getElementById('fornecedor').value;

    // Aqui você fará uma solicitação AJAX para o backend para buscar os dados do pedido
    // e exibir os resultados na página
    // Exemplo:
    fetch('buscar_fornecedores.php?id_fornecedor=' + encodeURIComponent(idFornecedor))
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                document.getElementById('resultFornecedor').innerHTML = data.error;
            } else {
                // Construa a lista de pedidos
                var html = '<h2>Fornecedores</h2>';
                html += '<ul>';
                data.forEach(function(fornecedores) {
                    html += '<li>ID da área: ' + fornecedores.id_fornecedor + '</li>';
                    html += '<li>Nome: ' + fornecedores.nome + '</li>';
                    html += '<br>';
                });
                html += '</ul>';
                document.getElementById('resultFornecedor').innerHTML = html;
            }
        })
        .catch(error => {
            console.error('Erro ao buscar dados do pedido:', error);
        });
});