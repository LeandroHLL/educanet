-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Jun-2023 às 15:15
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `atendebckp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alergia`
--

CREATE TABLE `alergia` (
  `cod_alergia` int(11) NOT NULL,
  `nome_alergia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `alergia`
--

INSERT INTO `alergia` (`cod_alergia`, `nome_alergia`) VALUES
(1, 'TESTE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `cod_aluno` int(11) NOT NULL,
  `cod_bairro` int(11) DEFAULT NULL,
  `cod_escola` int(11) DEFAULT NULL,
  `cod_escolaridade` int(11) DEFAULT NULL,
  `nome_aluno` varchar(50) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `data_atualizado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nome_pai` varchar(50) DEFAULT NULL,
  `nome_mae` varchar(50) DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `rg` varchar(15) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `telefone_residencial` varchar(20) DEFAULT NULL,
  `telefone_celular` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tipo_sanguineo` varchar(15) DEFAULT NULL,
  `estado_civil` varchar(15) DEFAULT NULL,
  `serie_escolar` varchar(15) DEFAULT NULL,
  `turno_escolar` varchar(15) DEFAULT NULL,
  `manequim` varchar(2) DEFAULT NULL,
  `numero_calcado` varchar(2) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `numero_endereco` varchar(15) DEFAULT NULL,
  `possui_alergia` varchar(15) DEFAULT NULL,
  `qual_alergia` varchar(50) DEFAULT NULL,
  `portador_pne` varchar(15) DEFAULT NULL,
  `qual_pne` varchar(50) DEFAULT NULL,
  `medicao_controlada` varchar(50) DEFAULT NULL,
  `qual_medicao` varchar(50) DEFAULT NULL,
  `possui_bolsa_familia` varchar(15) DEFAULT NULL,
  `numero_bolsa_familia` varchar(16) DEFAULT NULL,
  `numero_cnis` varchar(15) DEFAULT NULL,
  `renda_familiar` varchar(50) DEFAULT NULL,
  `ex_aluno` varchar(5) DEFAULT NULL,
  `seduc` varchar(5) DEFAULT NULL,
  `qual_curso_fez` varchar(50) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `nome_civil` varchar(50) DEFAULT NULL,
  `responsavel_rg` varchar(20) DEFAULT NULL,
  `responsavel_cpf` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexo`
--

CREATE TABLE `anexo` (
  `cod_anexo` int(11) NOT NULL,
  `cod_aluno` int(11) DEFAULT NULL,
  `tipo_documento` varchar(50) DEFAULT NULL,
  `arquivo` varchar(50) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autorizacao`
--

CREATE TABLE `autorizacao` (
  `cod_autorizacao` int(11) NOT NULL,
  `cod_usuario_autorizador` int(11) DEFAULT NULL,
  `cod_turma` int(11) DEFAULT NULL,
  `cod_turma_aluno` int(11) DEFAULT NULL,
  `nome_proponente` varchar(100) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL,
  `situacao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairro`
--

CREATE TABLE `bairro` (
  `cod_bairro` int(11) NOT NULL,
  `nome_bairro` varchar(50) DEFAULT NULL,
  `localidade` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `coordenacao`
--

CREATE TABLE `coordenacao` (
  `cod_coordenacao` int(11) NOT NULL,
  `cod_diretoria` int(11) NOT NULL,
  `nome_coordenacao` varchar(50) DEFAULT NULL,
  `nome_responsavel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `coordenacao`
--

INSERT INTO `coordenacao` (`cod_coordenacao`, `cod_diretoria`, `nome_coordenacao`, `nome_responsavel`) VALUES
(1, 1, 'CULTURA', 'JUCILENE SANTOS'),
(2, 1, 'EDUCAÇÃO', 'REINALDO SANTOS'),
(3, 1, 'ESPORTE', 'MARCIO REIS'),
(4, 1, 'DITS', 'CAMILA'),
(5, 1, 'SPEAKOUT', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `cod_curso` int(11) NOT NULL,
  `cod_coordenacao` int(11) NOT NULL,
  `nome_curso` varchar(50) DEFAULT NULL,
  `informacoes_curso` varchar(100) DEFAULT NULL,
  `ementa` varchar(800) DEFAULT NULL,
  `objetivo` varchar(255) DEFAULT NULL,
  `conteudo_programatico` varchar(1200) DEFAULT NULL,
  `metodologia` varchar(1200) DEFAULT NULL,
  `recursos_utilizados` varchar(500) DEFAULT NULL,
  `sistematica_avaliacao` varchar(255) DEFAULT NULL,
  `referencias` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `diretoria`
--

CREATE TABLE `diretoria` (
  `cod_diretoria` int(11) NOT NULL,
  `nome_diretoria` varchar(50) DEFAULT NULL,
  `nome_responsavel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `diretoria`
--

INSERT INTO `diretoria` (`cod_diretoria`, `nome_diretoria`, `nome_responsavel`) VALUES
(1, 'SECRETARIA DE CULTURA', 'MARCIA TUDE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escola`
--

CREATE TABLE `escola` (
  `cod_escola` int(11) NOT NULL,
  `nome_escola` varchar(50) DEFAULT NULL,
  `rede` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolaridade`
--

CREATE TABLE `escolaridade` (
  `cod_escolaridade` int(11) NOT NULL,
  `nome_escolaridade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `local_aula`
--

CREATE TABLE `local_aula` (
  `cod_local` int(11) NOT NULL,
  `nome_local` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `log_sistema`
--

CREATE TABLE `log_sistema` (
  `cod_log` int(11) NOT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  `operacao` varchar(30) DEFAULT NULL,
  `nome_operacao` varchar(60) DEFAULT NULL,
  `data_registro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `log_sistema`
--

INSERT INTO `log_sistema` (`cod_log`, `cod_usuario`, `descricao`, `operacao`, `nome_operacao`, `data_registro`) VALUES
(1, 1, 'NOVO EDUCANDO', 'CADASTROU EDUCANDO', 'DANIEL BRUNO ALVES SANTOS', '2017-05-14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo`
--

CREATE TABLE `modulo` (
  `cod_modulo` int(11) NOT NULL,
  `cod_curso` int(11) NOT NULL,
  `nome_modulo` varchar(50) DEFAULT NULL,
  `situacao_modulo` varchar(25) DEFAULT NULL,
  `conteudo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodo_letivo`
--

CREATE TABLE `periodo_letivo` (
  `cod_periodo_letivo` int(11) NOT NULL,
  `periodo` varchar(50) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_termino` date DEFAULT NULL,
  `metas_educacao` varchar(255) DEFAULT NULL,
  `metas_cultura` varchar(255) DEFAULT NULL,
  `metas_esporte` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `periodo_letivo`
--

INSERT INTO `periodo_letivo` (`cod_periodo_letivo`, `periodo`, `data_inicio`, `data_termino`, `metas_educacao`, `metas_cultura`, `metas_esporte`) VALUES
(1, '2017', '2017-06-05', '2017-12-08', '', '', ''),
(2, '2018', '2018-03-05', '2018-12-07', '', '', ''),
(3, '2019', '2019-02-04', '2019-12-20', '', '', ''),
(4, '2020', '2020-01-13', '2020-12-11', '', '', ''),
(5, '2021', '2021-01-01', '2021-12-31', '', '', ''),
(6, '2022', '2022-02-07', '2022-12-31', '', '', ''),
(7, '2023', '2023-01-02', '2023-12-31', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `cod_professor` int(11) NOT NULL,
  `nome_professor` varchar(50) DEFAULT NULL,
  `area_formacao` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `senha`
--

CREATE TABLE `senha` (
  `cod_senha` int(11) NOT NULL,
  `cod_turma` int(11) DEFAULT NULL,
  `numero_senha` varchar(20) DEFAULT NULL,
  `autenticacao` varchar(20) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `situacao` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitacao`
--

CREATE TABLE `solicitacao` (
  `cod_solicitacao` int(11) NOT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_aluno` int(11) DEFAULT NULL,
  `tipo_solicitacao` varchar(50) DEFAULT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `situacao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `solicitacao`
--

INSERT INTO `solicitacao` (`cod_solicitacao`, `cod_usuario`, `cod_aluno`, `tipo_solicitacao`, `data_cadastro`, `situacao`) VALUES
(5, 1, 9240, 'CERTIFICADO', '2023-05-24 22:05:12', 'PENDENTE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `cod_turma` int(11) NOT NULL,
  `cod_periodo_letivo` int(11) DEFAULT NULL,
  `cod_modulo` int(11) DEFAULT NULL,
  `cod_local` int(11) DEFAULT NULL,
  `cod_professor` int(11) DEFAULT NULL,
  `nome_turma` varchar(50) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_termino` date DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_termino` time DEFAULT NULL,
  `faixa_etaria_inicial` date DEFAULT NULL,
  `faixa_etaria_final` date DEFAULT NULL,
  `turno` varchar(50) DEFAULT NULL,
  `nome_faixa_etaria` varchar(50) DEFAULT NULL,
  `dias_de_aula` varchar(50) DEFAULT NULL,
  `qtd_aluno` int(11) DEFAULT NULL,
  `idade_minima` int(11) DEFAULT NULL,
  `idade_maxima` int(11) DEFAULT NULL,
  `situacao` varchar(10) DEFAULT 'ABERTA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma_aluno`
--

CREATE TABLE `turma_aluno` (
  `cod_turma_aluno` int(11) NOT NULL,
  `cod_turma` int(11) NOT NULL,
  `cod_aluno` int(11) NOT NULL,
  `situacao` varchar(20) DEFAULT NULL,
  `autenticacao` varchar(20) DEFAULT NULL,
  `data_matricula` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cod_usuario` int(11) NOT NULL,
  `nome_usuario` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `nome_completo` varchar(50) DEFAULT NULL,
  `perfil` varchar(30) DEFAULT NULL,
  `situacao` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cod_usuario`, `nome_usuario`, `senha`, `nome_completo`, `perfil`, `situacao`) VALUES
(1, 'SENAI', 'analise', 'G82693', 'ADMINISTRADOR DO SISTEMA', 'ATIVO');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alergia`
--
ALTER TABLE `alergia`
  ADD PRIMARY KEY (`cod_alergia`),
  ADD UNIQUE KEY `nome_alergia` (`nome_alergia`);

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`cod_aluno`),
  ADD KEY `cod_bairro` (`cod_bairro`),
  ADD KEY `cod_escolaridade` (`cod_escolaridade`),
  ADD KEY `cod_escola` (`cod_escola`);

--
-- Índices para tabela `anexo`
--
ALTER TABLE `anexo`
  ADD PRIMARY KEY (`cod_anexo`),
  ADD KEY `cod_aluno` (`cod_aluno`);

--
-- Índices para tabela `autorizacao`
--
ALTER TABLE `autorizacao`
  ADD PRIMARY KEY (`cod_autorizacao`);

--
-- Índices para tabela `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`cod_bairro`),
  ADD UNIQUE KEY `nome_bairro` (`nome_bairro`);

--
-- Índices para tabela `coordenacao`
--
ALTER TABLE `coordenacao`
  ADD PRIMARY KEY (`cod_coordenacao`),
  ADD KEY `cod_diretoria` (`cod_diretoria`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`cod_curso`),
  ADD KEY `cod_coordenacao` (`cod_coordenacao`);

--
-- Índices para tabela `diretoria`
--
ALTER TABLE `diretoria`
  ADD PRIMARY KEY (`cod_diretoria`);

--
-- Índices para tabela `escola`
--
ALTER TABLE `escola`
  ADD PRIMARY KEY (`cod_escola`),
  ADD UNIQUE KEY `nome_escola` (`nome_escola`);

--
-- Índices para tabela `escolaridade`
--
ALTER TABLE `escolaridade`
  ADD PRIMARY KEY (`cod_escolaridade`),
  ADD UNIQUE KEY `nome_escolaridade` (`nome_escolaridade`);

--
-- Índices para tabela `local_aula`
--
ALTER TABLE `local_aula`
  ADD PRIMARY KEY (`cod_local`),
  ADD UNIQUE KEY `nome_local` (`nome_local`);

--
-- Índices para tabela `log_sistema`
--
ALTER TABLE `log_sistema`
  ADD PRIMARY KEY (`cod_log`),
  ADD KEY `cod_usuario` (`cod_usuario`);

--
-- Índices para tabela `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`cod_modulo`),
  ADD KEY `cod_curso` (`cod_curso`);

--
-- Índices para tabela `periodo_letivo`
--
ALTER TABLE `periodo_letivo`
  ADD PRIMARY KEY (`cod_periodo_letivo`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`cod_professor`);

--
-- Índices para tabela `senha`
--
ALTER TABLE `senha`
  ADD PRIMARY KEY (`cod_senha`),
  ADD KEY `cod_turma` (`cod_turma`);

--
-- Índices para tabela `solicitacao`
--
ALTER TABLE `solicitacao`
  ADD PRIMARY KEY (`cod_solicitacao`),
  ADD KEY `cod_usuario` (`cod_usuario`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`cod_turma`),
  ADD KEY `cod_periodo_letivo` (`cod_periodo_letivo`),
  ADD KEY `cod_modulo` (`cod_modulo`),
  ADD KEY `cod_local` (`cod_local`),
  ADD KEY `cod_professor` (`cod_professor`);

--
-- Índices para tabela `turma_aluno`
--
ALTER TABLE `turma_aluno`
  ADD PRIMARY KEY (`cod_turma_aluno`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cod_usuario`),
  ADD UNIQUE KEY `nome_usuario` (`nome_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alergia`
--
ALTER TABLE `alergia`
  MODIFY `cod_alergia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `cod_aluno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `anexo`
--
ALTER TABLE `anexo`
  MODIFY `cod_anexo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `autorizacao`
--
ALTER TABLE `autorizacao`
  MODIFY `cod_autorizacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `bairro`
--
ALTER TABLE `bairro`
  MODIFY `cod_bairro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `coordenacao`
--
ALTER TABLE `coordenacao`
  MODIFY `cod_coordenacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `cod_curso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `diretoria`
--
ALTER TABLE `diretoria`
  MODIFY `cod_diretoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `escola`
--
ALTER TABLE `escola`
  MODIFY `cod_escola` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `escolaridade`
--
ALTER TABLE `escolaridade`
  MODIFY `cod_escolaridade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `local_aula`
--
ALTER TABLE `local_aula`
  MODIFY `cod_local` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `log_sistema`
--
ALTER TABLE `log_sistema`
  MODIFY `cod_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78620;

--
-- AUTO_INCREMENT de tabela `modulo`
--
ALTER TABLE `modulo`
  MODIFY `cod_modulo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `periodo_letivo`
--
ALTER TABLE `periodo_letivo`
  MODIFY `cod_periodo_letivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `cod_professor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `senha`
--
ALTER TABLE `senha`
  MODIFY `cod_senha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59322;

--
-- AUTO_INCREMENT de tabela `solicitacao`
--
ALTER TABLE `solicitacao`
  MODIFY `cod_solicitacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `cod_turma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `turma_aluno`
--
ALTER TABLE `turma_aluno`
  MODIFY `cod_turma_aluno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`cod_bairro`) REFERENCES `bairro` (`cod_bairro`),
  ADD CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`cod_escolaridade`) REFERENCES `escolaridade` (`cod_escolaridade`),
  ADD CONSTRAINT `aluno_ibfk_3` FOREIGN KEY (`cod_escola`) REFERENCES `escola` (`cod_escola`);

--
-- Limitadores para a tabela `anexo`
--
ALTER TABLE `anexo`
  ADD CONSTRAINT `anexo_ibfk_1` FOREIGN KEY (`cod_aluno`) REFERENCES `aluno` (`cod_aluno`);

--
-- Limitadores para a tabela `coordenacao`
--
ALTER TABLE `coordenacao`
  ADD CONSTRAINT `coordenacao_ibfk_1` FOREIGN KEY (`cod_diretoria`) REFERENCES `diretoria` (`cod_diretoria`);

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`cod_coordenacao`) REFERENCES `coordenacao` (`cod_coordenacao`);

--
-- Limitadores para a tabela `log_sistema`
--
ALTER TABLE `log_sistema`
  ADD CONSTRAINT `log_sistema_ibfk_1` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`);

--
-- Limitadores para a tabela `modulo`
--
ALTER TABLE `modulo`
  ADD CONSTRAINT `modulo_ibfk_1` FOREIGN KEY (`cod_curso`) REFERENCES `curso` (`cod_curso`);

--
-- Limitadores para a tabela `senha`
--
ALTER TABLE `senha`
  ADD CONSTRAINT `senha_ibfk_1` FOREIGN KEY (`cod_turma`) REFERENCES `turma` (`cod_turma`);

--
-- Limitadores para a tabela `solicitacao`
--
ALTER TABLE `solicitacao`
  ADD CONSTRAINT `solicitacao_ibfk_1` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`);

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`cod_periodo_letivo`) REFERENCES `periodo_letivo` (`cod_periodo_letivo`),
  ADD CONSTRAINT `turma_ibfk_2` FOREIGN KEY (`cod_modulo`) REFERENCES `modulo` (`cod_modulo`),
  ADD CONSTRAINT `turma_ibfk_3` FOREIGN KEY (`cod_local`) REFERENCES `local_aula` (`cod_local`),
  ADD CONSTRAINT `turma_ibfk_4` FOREIGN KEY (`cod_professor`) REFERENCES `professor` (`cod_professor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
