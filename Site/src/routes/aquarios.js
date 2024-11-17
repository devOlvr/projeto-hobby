var express = require("express");
var router = express.Router();

var aquarioController = require("../controllers/aquarioController");

router.get("/exibirGrafico", function (req, res) {
  aquarioController.exibirAquariosDoUsuario(req, res);
});

router.post("/cadastrar", function (req, res) {
  aquarioController.cadastrar(req, res);
})

module.exports = router;