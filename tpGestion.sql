-- Création de la table "employee"
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    salaire NUMERIC(10, 2) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15) NOT NULL,
    role VARCHAR(200) NOT NULL,
    poste VARCHAR(200) NOT NULL,
    holidayBalance INT NOT NULL
);
	DROP TABLE employee;
	SELECT * FROM employee;
INSERT INTO employee (nom, prenom, salaire, email, phone, role, poste, holidayBalance)  VALUES  
('AZAOUAGHE', 'MOHAMEDAM', 35000.50, 'amineazaouaghe04@gmail.com', '0610796744', 'ADMIN', 'TEAM_LEADER', 10);

SELECT * FROM holiday;


CREATE TABLE holiday (
    id SERIAL PRIMARY KEY,
    employee_id INT NOT NULL,
    type VARCHAR(200),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES employee(id) ON DELETE CASCADE
);

DELETE FROM holiday;
SELECT * FROM holiday;

DROP TABLE IF EXISTS login;

CREATE TABLE login (
    id INT PRIMARY KEY, 
    username VARCHAR(50) NOT NULL UNIQUE, 
    password VARCHAR(255) NOT NULL, 
    CONSTRAINT fk_employee_login FOREIGN KEY (id) REFERENCES employee(id) ON DELETE CASCADE
);

INSERT INTO login (id, username, password) VALUES  (1, 'amine', 'Amine@9182');