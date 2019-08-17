BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `tb07_login` (
	`tb07_user`	TEXT,
	`tb07_password`	INTEGER,
	`tb07_email`	TEXT
);
CREATE TABLE IF NOT EXISTS `tb06_tipobonus` (
	`tb06_tipo`	INTEGER,
	`tb06_descricao`	TEXT,
	`tb06_quant`	INTEGER,
	PRIMARY KEY(`tb06_tipo`)
);
CREATE TABLE IF NOT EXISTS `tb05_bonus` (
	`tb05_ObjetivoID`	INTEGER,
	`tb05_tipoBonus`	INTEGER,
	FOREIGN KEY(`tb05_tipoBonus`) REFERENCES `tb06_tipobonus`(`tb06_tipo`),
	FOREIGN KEY(`tb05_ObjetivoID`) REFERENCES `tb02_objetivo`(`tb02_ID`)
);
CREATE TABLE IF NOT EXISTS `tb04_results` (
	`tb04_ObjetivoID`	INTEGER,
	`tb04_descrição`	INTEGER,
	`tb04_isDone`	INTEGER,
	FOREIGN KEY(`tb04_ObjetivoID`) REFERENCES `tb02_objetivo`(`tb02_ID`)
);
CREATE TABLE IF NOT EXISTS `tb03_lideres` (
	`tb03_nome`	TEXT,
	`tb03_IDLider`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`tb03_email`	TEXT,
	`tb03_cargo`	TEXT
);
CREATE TABLE IF NOT EXISTS `tb02_objetivo` (
	`tb02_ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`tb02_descrição`	TEXT,
	`tb02_prazo`	DATE,
	`tb02_IDCol`	INTEGER,
	FOREIGN KEY(`tb02_IDCol`) REFERENCES `tb01_colaboradores`(`tb01_ID`)
);
CREATE TABLE IF NOT EXISTS `tb01_colaboradores` (
	`tb01_nome`	TEXT NOT NULL,
	`tb01_ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`tb01_email`	TEXT NOT NULL,
	`tb01_cargo`	TEXT,
	`tb01_metascompridas`	INTEGER NOT NULL,
	`tb01_IDLider`	INTEGER,
	FOREIGN KEY(`tb01_IDLider`) REFERENCES `tb03_lideres`(`tb03_IDLider`)
);
COMMIT;
