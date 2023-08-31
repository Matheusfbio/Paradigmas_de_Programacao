/* Tabela Tarefas */

CREATE TABLE Tarefa (
	idTarefa INTEGER PRIMARY KEY,
    nm_tarefa VARCHAR,
    observacao Text,
    perc_tarefa float
);

CREATE TABLE itemTarefa (
    nm_itemTarefa VARCHAR,
    idItemTarefa INTEGER PRIMARY KEY,
	FK_tarefa_idTarefa integer
);

ALTER TABLE  ITEMtAREFA ADD CONSTRAINT Fk_itemTarefa_2
	FOREIGN KEY (fk_tarefa_idTarefa)
	REFERENCES tarefa (idTarefa)
	ON DELETE RESTRICT