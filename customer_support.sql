-- Criação do Banco de Dados
CREATE DATABASE CustomerSupport;

USE CustomerSupport;

-- Tabela para Registrar Tickets de Suporte
CREATE TABLE Tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    issue_description TEXT NOT NULL,
    status ENUM('Open', 'In Progress', 'Resolved', 'Closed') DEFAULT 'Open',
    priority ENUM('Low', 'Medium', 'High') DEFAULT 'Medium',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Tabela para Registrar Interações com o Cliente
CREATE TABLE TicketInteractions (
    interaction_id INT AUTO_INCREMENT PRIMARY KEY,
    ticket_id INT,
    employee_id INT,
    interaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    notes TEXT NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Inserindo Dados Fictícios
-- Tickets
INSERT INTO Tickets (customer_id, issue_description, status, priority)
VALUES 
(1, 'Issue with product delivery', 'Open', 'High'),
(2, 'Request for refund', 'In Progress', 'Medium'),
(3, 'Technical issue with the website', 'Resolved', 'High');

-- Interações com Tickets
INSERT INTO TicketInteractions (ticket_id, employee_id, notes)
VALUES 
(1, 101, 'Customer contacted regarding delivery delay.'),
(2, 102, 'Refund process initiated, awaiting approval.'),
(3, 101, 'Issue with website resolved by IT team.');
