-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Jun-2022 às 16:47
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sdpp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `mai_caixas`
--

CREATE TABLE `mai_caixas` (
  `nordem` char(6) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `discr` char(25) DEFAULT NULL,
  `ordcx` char(2) DEFAULT NULL,
  `caixa` char(3) DEFAULT NULL,
  `perc` char(4) DEFAULT NULL,
  `rec` char(13) DEFAULT NULL,
  `desp` char(13) DEFAULT NULL,
  `prazo` char(5) DEFAULT NULL,
  `ir` char(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

--
-- Extraindo dados da tabela `mai_caixas`
--

INSERT INTO `mai_caixas` (`nordem`, `status`, `discr`, `ordcx`, `caixa`, `perc`, `rec`, `desp`, `prazo`, `ir`) VALUES
('248900', 'A', 'SOLDO ATV', '', 'A02', '100', '    11.451,00', '', '', '+'),
('248900', 'A', 'ADC PERM ATV', '', 'B07', '5', '       572,55', '', '', '+'),
('248900', 'A', 'ADC HAB ATV', '', 'B08', '54', '     6.183,54', '', '', '+'),
('248900', 'A', 'ADC MIL ATV', '', 'B16', '25', '     2.862,75', '', '', '+'),
('248900', 'A', 'ADC DISP MIL ATV', '01', 'B05', '32', '     3.664,32', '', '', '+'),
('248900', 'A', 'FAMHS', '02', 'L30', '*', '', '       321,54', '', '-'),
('248900', 'A', 'FAMHS DEPEND', '03', 'L80', '*', '', '       272,07', '02DP', '-'),
('248900', 'A', 'CLUBE AER BR', '04', 'L88', '*', '', '       190,00', '', ''),
('248900', 'A', 'PENSAO MILITAR', '05', 'M02', '*', '', '       371,01', '', '-'),
('248900', 'A', 'PENSAO MILITAR', '06', 'M02', '*', '', '     2.597,08', '', '-'),
('248900', 'A', 'SULAMERICA PSAU', '07', 'Q43', '*', '', '     3.540,62', '', ''),
('248900', 'A', 'AC ACOVIBA', '08', 'Q5B', '*', '', '       665,00', '', ''),
('248900', 'A', 'AIR PREFAER AF', '09', 'Y32', '*', '', '       629,80', '', ''),
('248900', 'A', 'I RENDA DESC', '10', '', '*', '', '     4.848,79', '05/22', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mai_pessoais`
--

CREATE TABLE `mai_pessoais` (
  `tipo` char(1) DEFAULT NULL,
  `posto` char(2) DEFAULT NULL,
  `nordem` char(6) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `digito` char(1) DEFAULT NULL,
  `ompag` char(6) DEFAULT NULL,
  `nomeom` char(21) DEFAULT NULL,
  `subom` char(6) DEFAULT NULL,
  `dt` char(5) DEFAULT NULL,
  `nposto` char(2) DEFAULT NULL,
  `esp` char(3) DEFAULT NULL,
  `nome` char(30) DEFAULT NULL,
  `ref` char(2) DEFAULT NULL,
  `cod_esp` char(10) DEFAULT NULL,
  `id` char(10) DEFAULT NULL,
  `cpf` char(11) DEFAULT NULL,
  `banco` char(3) DEFAULT NULL,
  `agencia` char(5) DEFAULT NULL,
  `cc` char(13) DEFAULT NULL,
  `receita` char(13) DEFAULT NULL,
  `despesa` char(13) DEFAULT NULL,
  `liquido` char(13) DEFAULT NULL,
  `anuenio` char(9) DEFAULT NULL,
  `pasep` char(11) DEFAULT NULL,
  `depir` char(2) DEFAULT NULL,
  `depsf` char(5) DEFAULT NULL,
  `quota` char(2) DEFAULT NULL,
  `pm` char(2) DEFAULT NULL,
  `funsa` char(2) DEFAULT NULL,
  `isir` char(1) DEFAULT NULL,
  `margem` char(13) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

--
-- Extraindo dados da tabela `mai_pessoais`
--

INSERT INTO `mai_pessoais` (`tipo`, `posto`, `nordem`, `status`, `digito`, `ompag`, `nomeom`, `subom`, `dt`, `nposto`, `esp`, `nome`, `ref`, `cod_esp`, `id`, `cpf`, `banco`, `agencia`, `cc`, `receita`, `despesa`, `liquido`, `anuenio`, `pasep`, `depir`, `depsf`, `quota`, `pm`, `funsa`, `isir`, `margem`) VALUES
('1', '05', '248900', 'A', '7', '060749', 'BAAF', '060726', 'MAI22', 'CL', 'INT', 'MARCO AURELIO DE SOUZA', '00', 'IN', '0000456260', '61243892668', '033', '03067', '0010016666', '****24.734,16', '****13.435,91', '****11.298,25', 'MARCO', '17003760426', '2', '12,0', '0', 'CL', 'CL', '0', 'ART 14 LRM');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mai_unidades`
--

CREATE TABLE `mai_unidades` (
  `codtabela` char(2) DEFAULT NULL,
  `unidade` char(6) NOT NULL DEFAULT '',
  `autonomia` char(1) DEFAULT NULL,
  `filler1` char(1) DEFAULT NULL,
  `nome` char(20) NOT NULL DEFAULT '',
  `sigla` char(12) NOT NULL DEFAULT '',
  `localidade` char(15) DEFAULT NULL,
  `filler2` char(19) DEFAULT NULL,
  `upag` char(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

--
-- Extraindo dados da tabela `mai_unidades`
--

INSERT INTO `mai_unidades` (`codtabela`, `unidade`, `autonomia`, `filler1`, `nome`, `sigla`, `localidade`, `filler2`, `upag`) VALUES
('05', '570515', 'D', 'F', 'COMFIREM/C-130H', 'COMFIREM/C-1', 'PISA-', 'FILLER 2', '442515'),
('05', '000951', 'D', 'F', 'GAC-HB', 'GAC-HB', 'ITAJUBÁ-MG', 'FILLER 2', '442515'),
('05', '120502', 'A', 'F', 'BASE AEREA SALVADOR', 'BASV', 'SALVADOR-BA', 'FILLER 2', '120502'),
('05', '232038', 'D', 'F', 'ES-SV', 'ES-SV', 'SALVADOR-BA', 'FILLER 2', '120502'),
('05', '320505', 'D', 'F', 'DTCEA-SALVADOR', 'DTCEA-SV', 'SALVADOR-BA', 'FILLER 2', '120502'),
('05', '570403', 'D', 'F', 'CMS', 'CMS', 'SALVADOR-BA', 'FILLER 2', '120502'),
('05', '600386', 'D', 'F', 'DEF PUB BA', 'DEF PUB BA', 'SALVADOR-BA', 'FILLER 2', '120502');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `senha`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3 ');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `mai_caixas`
--
ALTER TABLE `mai_caixas`
  ADD KEY `jan_nordem_idx` (`nordem`),
  ADD KEY `jan_caixa_idx` (`caixa`);

--
-- Índices para tabela `mai_pessoais`
--
ALTER TABLE `mai_pessoais`
  ADD KEY `jan_nordem_idx` (`nordem`),
  ADD KEY `jan_nome_idx` (`nome`),
  ADD KEY `jan_cpf_idx` (`cpf`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`) USING BTREE;

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
