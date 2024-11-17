var database = require("../database/config");

function exibirAquariosDoUsuario() {

  var instrucaoSql = `SELECT date_format(quantidade.dt, '%d-%m-%Y') as 'Data_de_Cadastro', count(quantidade.dt) as Quantidade from (SELECT DATE(dtCadastro) as dt from usuarioCadastro) as quantidade group by quantidade.dt order by dt;`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}

// function cadastrar(idUsuario) {
  
//   var instrucaoSql = `INSERT INTO (fk_usuario) usuarioCadastro VALUES (${idUsuario})`;

//   console.log("Executando a instrução SQL: \n" + instrucaoSql);
//   return database.executar(instrucaoSql);
// }


module.exports = {
  exibirAquariosDoUsuario,
}
