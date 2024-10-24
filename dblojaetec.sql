drop database dblojaetec;
create database dblojaetec;

use dblojaetec;

create table usuarios(
iduser int primary key auto_increment,
usuario varchar(50) not null,
fone varchar(15),
login varchar(20) not null unique,
senha varchar(15) not null
);


insert into usuarios (usuario,fone,login,senha) values
("Kauan Reycon", "61 98453-6987", "kauan948@gmail.com", "kauan6541856"),
("Mikael Diogo", "61 95152-6987", "diogo855@gmail.com", "mikael5368596"),
("Pedro Henrique", "61 98983-6567", "pedro7986@gmail.com", "pedro4865"),
("Aline Queiroz", "61 93565-7593", "queiroz@gmail.com", "aline98563"),
("Carla Teles", "61 981886-6546", "carla156@gmail.com", "Teles51325"),
("Enzo Gabriel", "61 935269-9344", "gabriel@gmail.com", "enzo748545"),
("Larrisa Lima", "61 98634-7896", "Larrisa@gmail.com", "larrisinha123"),
("Ana Maria", "61 98623-6156", "maria152@gmail.com", "ana12365"),
("Giovana Araujo ", "61 98463-8621", "araujo153@gmail.com", "giovana153"),
("Leticia Alves", "61 94553-1856", "leticia@gmail.com", "letalves1024")
;


create table clientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(15) not null,
emailcli varchar(50)
);

INSERT INTO clientes (nomecli, endcli, fonecli, emailcli) VALUES 
('Maria Silva', 'Rua das Flores, 123', '5521987654321', 'maria.silva@example.com'),
('João Pereira', 'Avenida Central, 456', '5521987654322', 'joao.pereira@example.com'),
('Ana Souza', 'Travessa das Palmeiras, 789', '5521987654323', 'ana.souza@example.com'),
('Carlos Lima', 'Praça das Estrelas, 101', '5521987654324', 'carlos.lima@example.com'),
('Fernanda Costa', 'Beco das Pedras, 202', '5521987654325', 'fernanda.costa@example.com'),
('Ricardo Alves', 'Rua do Sol, 303', '5521987654326', 'ricardo.alves@example.com'),
('Juliana Oliveira', 'Avenida das Acácias, 404', '5521987654327', 'juliana.oliveira@example.com'),
('Gustavo Mendes', 'Alameda dos Anjos, 505', '5521987654328', 'gustavo.mendes@example.com'),
('Patrícia Rodrigues', 'Vila dos Pássaros, 606', '5521987654329', 'patricia.rodrigues@example.com'),
('Eduardo Fernandes', 'Rua do Horizonte, 707', '5521987654330', 'eduardo.fernandes@example.com');


create table ordem_servico(
os int primary key auto_increment,
data_os timestamp default current_timeStamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli)  references clientes(idcli)
);


INSERT INTO ordem_servico (equipamento, defeito, servico, tecnico, valor, idcli) VALUES 
('Notebook Dell', 'Não liga', 'Troca de fonte', 'Carlos', 350.00, 1),
('Impressora HP', 'Papel atascado', 'Limpeza de rolos', 'Maria', 150.00, 2),
('Monitor Samsung', 'Tela piscando', 'Substituição de capacitor', 'João', 200.00, 3),
('Desktop Acer', 'Superaquecimento', 'Troca de cooler', 'Ana', 250.00, 4),
('Notebook Asus', 'Bateria não carrega', 'Substituição de bateria', 'Carlos', 400.00, 5),
('Roteador TP-Link', 'Sem conexão', 'Configuração de firmware', 'Fernanda', 100.00, 6),
('Smartphone Motorola', 'Tela quebrada', 'Troca de tela', 'Ricardo', 300.00, 7),
('Tablet Apple', 'Sem áudio', 'Reparo de circuito de som', 'Juliana', 280.00, 8),
('Servidor HP', 'Falha no disco rígido', 'Substituição de HD', 'Gustavo', 600.00, 9),
('Projetor Epson', 'Imagem distorcida', 'Ajuste de lentes', 'Patrícia', 180.00, 10);
