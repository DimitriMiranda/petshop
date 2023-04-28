CREATE TABLE IF NOT EXISTS `usuarios` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `senha` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`)
);

CREATE TABLE IF NOT EXISTS `perfis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS  `usuarios_perfis` (
  `usuario_id` int(11) NOT NULL,
  `perfil_id` int(11) NOT NULL,
  KEY `usuario_fk_idx` (`usuario_id`),
  KEY `perfil_fk_idx` (`perfil_id`),
  CONSTRAINT `perfil_fk` FOREIGN KEY (`perfil_id`) REFERENCES `perfis` (`id`),
  CONSTRAINT `usuario_fk` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
);