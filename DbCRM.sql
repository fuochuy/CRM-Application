create database if not exists CRM_Application;
USE CRM_Application;

CREATE TABLE IF NOT EXISTS crm_status (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
	description VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS crm_project (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(100),
    start_date DATE,
    end_date DATE,
    create_by INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS crm_user (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL unique,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(36),
    address VARCHAR(36),
    role_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS crm_task (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
	description VARCHAR(100),
    start_date DATE,
    end_date DATE,
    assignee INT NOT NULL,
    project_id INT NOT NULL,
    status_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS crm_role (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(100),
    PRIMARY KEY (id)
);

ALTER TABLE crm_project ADD FOREIGN KEY (id) REFERENCES crm_user (id)  ON DELETE CASCADE;
ALTER TABLE crm_user ADD FOREIGN KEY (role_id) REFERENCES crm_role (id)  ON DELETE CASCADE;
ALTER TABLE crm_task ADD FOREIGN KEY (assignee) REFERENCES crm_user (id)  ON DELETE CASCADE;
ALTER TABLE crm_task ADD FOREIGN KEY (project_id) REFERENCES crm_project (id)  ON DELETE CASCADE;
ALTER TABLE crm_task ADD FOREIGN KEY (status_id) REFERENCES crm_status (id)  ON DELETE CASCADE;

insert into crm_role(name,description) value('ADMIN',1);
insert into crm_role(name,description) value('LEADER',2);
insert into crm_role(name,description) value('MEMBER',3);

insert into crm_user(email,name,password,phone,address,role_id) value('admin@gmail.com','Admin','123',19001009,'TP Hồ Chí Minh',1);
insert into crm_user(email,name,password,phone,address,role_id) value('HoangLong@gmail.com','Nguyễn Hoàng Long','123',0905294279,'23 Nha Trang',2);
insert into crm_user(email,name,password,phone,address,role_id) value('PhuocHuy@gmail.com','Nguyễn Phước Huy','123',09179654321,'92 Quảng Nam',2);
insert into crm_user(email,name,password,phone,address,role_id) value('HoangNguyen@gmail.com','Nguyễn Hoàng Nguyên','123',09179654123,'Tp Hồ Chí Minh',3);
insert into crm_user(email,name,password,phone,address,role_id) value('BinhMinh@gmail.com','Nguyễn Bình Minh','123',09179651230,'Tp Hồ Chí Minh',3);

INSERT INTO crm_project(name, description, start_date, end_date, create_by) VALUE ('CRM', 'CRM Application','2021-11-20','2021-12-05',1);

INSERT INTO crm_status(name,description) VALUE('Chưa thực hiện','Chưa thực hiện công việc');
INSERT INTO crm_status(name,description) VALUE('Đang thực hiện','Đang thực hiện công việc');
INSERT INTO crm_status(name,description) VALUE('Đã hoàn thành','Đã hoàn thành công việc');

INSERT INTO crm_task(name,description,start_date,end_date,assignee,project_id,status_id)
VALUE('Tạo chức năng login','Tạo trang loginServlet','2021-11-21','2021-11-23',5,1,1);


