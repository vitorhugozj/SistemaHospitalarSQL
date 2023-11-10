create database sistema_hospitalar;

use sistema_hospitalar;

create table hospital
(
id_hospital integer primary key,
nome_hospital varchar (30) not null,
cpnj numeric (14) not null,
email_hospital varchar (20) not null,
telefone numeric (13) not null
);

alter table hospital
add constraint id_medico foreign key (id_medico) references medicos (id_medico),
add constraint id_setor foreign key (id_setor) references setores (id_setor),
add constraint id_enfermeira foreign key (id_enfermeira) references enfermeiras(id_enfermeira),
add constraint plano_saude foreign key (plano_saude) references plano_saude (plano_saude);

insert into hospital(id_hospital, nome_hospital, cpnj, email_hospital, telefone) values
(223, 'Hospital Albert Einstein', 00000000000001, 'alberteinstein@email.com', 551197762887),
(077, 'Hospital Oswaldo Cruz', 00000000000002, 'oswaldocruz@email.com', 551197762453),
(156, 'Hospital Sírio-Libanês', 00000000000003, 'siriolibanes@email.com', 551198952453);

create table medicos
(
id_medico integer primary key,
nome_medico varchar (100) not null,
cpf numeric (11) not null,
telefone numeric (13) not null,
especialidade varchar (20) not null
);

insert into medicos (id_medico, nome_medico, cpf, telefone, especialidade) values
(01, 'Alan Jesus Magalhães', 23857492772, 5534974509143, 'Pediatra'),
(09, 'Paloma Breves Vessoleck', 87665482931, 5511987655392, 'Cardiologista'),
(88, 'Pedro Santana Sales', 567842019232, 5581978930293, 'Ortopedia'),
(102, 'Alessandra Santos Paes', 72384298123, 5513978921992, 'Ginecologista'),
(235, 'Kaique Oliveira Nunes', 56829344591, 5511932291023, 'Pediatra'),
(71, 'Gustavo Pereira do Vale', 45309876231, 5511989785643, 'Técnico de Raio-X');

create table enfermeiras
(
id_enfermeira integer primary key,
nome_enfermeira varchar (100) not null,
cpf numeric (11) not null,
telefone numeric (13) not null,
cre numeric (7) not null
);

insert into enfermeiras (id_enfermeira, nome_enfermeira, cpf, telefone, cre) values
(862, 'Lilian Freitas Jesus', 67583394021, 5511975402135, 1234561),
(203, 'Lucas Vasconcelos Paredes', 73295379132, 5511993442561, 1234562),
(627, 'Kaio Leitao', 65749237187, 5511932458712, 1234563),
(099, 'Marcelo Leandro Lopes', 89344562391, 5511923463129, 1234564),
(249, 'Ruan Vasconcelos', 42566729812, 5511923987234, 1234567);


create table paciente
(
id_paciente integer primary key,
nome_paciente varchar (100) not null,
cpf numeric (11) not null,
plano_saude varchar (30) not null,
sintomas varchar (100) not null
);

insert into paciente (id_paciente, nome_paciente, cpf, plano_saude, sintomas) values
(1, 'Lucas', 34247281021, 'Bradesco', 'Gripe'),
(2, 'Maria', 74632819274, 'NotreDrame', 'Dor Muscular'),
(3, 'Kainan', 32817462987, 'Intermédica', 'Dor de Cabeça'),
(4, 'Marcelo', 78293719243, 'Cruzeiro do Sul', 'sinuzite'),
(5, 'Juan Leandro', 46723499812, 'Bradesco', 'diarreia'),
(7, 'Gustavo', 72835618921, 'Cruzeiro do Sul', 'febre');

create table ficha_medica
(
id_ficha integer primary key,
nome_plano varchar (100) not null
);

create table setores
(
id_setor integer primary key,
uti_A varchar (100) not null,
medicacao_E varchar (100) not null,
emergencia_B varchar (100) not null,
pediatria_C varchar (100) not null,
raiox_D varchar (100) not null
);

create table plano_saude
(
plano_saude integer primary key,
plano_bradesco varchar (20) not null,
plano_intermedica varchar (20) not null,
plano_cruzeiroSUL varchar (20) not null,
plano_notreDrame varchar (20) not null
);

create table turnos
(
turnos integer primary key,
turno_manhã numeric (4),
turno_noite numeric (4)
);

create table chefes
(
chefes integer primary key
);

create table sintomas
(
gripe varchar (30) not null,
febre varchar (30) not null,
dor_muscular varchar (30) not null,
dor_cabeça varchar (30) not null,
sinuzite varchar (30) not null,
diarreia varchar (30) not null
);



