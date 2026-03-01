-- Dataset de UF_DESPESAS_ORCAMENTARIAS de Basededados.org.br
SELECT
    dados.ano as ano,
    dados.sigla_uf as sigla_uf,
    dados.conta as conta,
    dados.estagio_bd as estagio_bd,
    dados.valor as valor
FROM `basedosdados.br_me_siconfi.uf_despesas_funcao` AS dados
LEFT JOIN (SELECT DISTINCT sigla  FROM `basedosdados.br_bd_diretorios_brasil.uf`) AS diretorio_sigla_uf
    ON dados.sigla_uf = diretorio_sigla_uf.sigla
WHERE dados.ano >= 2018
order by ano, sigla_uf;
-- -----------------------------------------------------------
-- Dataset de UF_RECEITAS_ORCAMENARIAS de Basededados.org
SELECT
    dados.ano as ano,
    dados.sigla_uf AS sigla_uf,
    dados.estagio as estagio,
    dados.conta as conta,
    dados.valor as valor
FROM `basedosdados.br_me_siconfi.uf_receitas_orcamentarias` AS dados
LEFT JOIN (SELECT DISTINCT sigla  FROM `basedosdados.br_bd_diretorios_brasil.uf`) AS diretorio_sigla_uf
    ON dados.sigla_uf = diretorio_sigla_uf.sigla
WHERE dados.ano >= 2018
order by ano, sigla_uf;
