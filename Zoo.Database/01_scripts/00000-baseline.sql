-- using EducEntity as database

create table [dbo].[Animal] (
    [Id] int not null identity(1,1)
)
alter table [dbo].[Animal] add [ApeName] nvarchar(4000) null
alter table [dbo].[Animal] add [DateOfBirth] datetime not null
alter table [dbo].[Animal] add [NoLairs] int null
alter table [dbo].[Animal] add [OwnerUserId] int null
alter table [dbo].[Animal] add [TrainerEmployeeId] int null
alter table [dbo].[Animal] add [Type] int not null
alter table [dbo].[Animal] add [ZooId] int null
alter table Animal add constraint PK_Animal primary key (Id)
go

create table [dbo].[ApeSpecifics] (
    [Id] int not null
)
alter table [dbo].[ApeSpecifics] add [ApeWeight] float not null
alter table ApeSpecifics add constraint PK_ApeSpecifics primary key (Id)
go

create table [dbo].[Cage] (
    [Id] int not null identity(1,1)
)
alter table [dbo].[Cage] add [NoBars] nvarchar(max) null
alter table [dbo].[Cage] add [TenantApeId] int null
alter table [dbo].[Cage] add [TenantWeaselId] int null
alter table [dbo].[Cage] add [TensileStrength] float not null
alter table Cage add constraint PK_Cage primary key (Id)
go

create table [dbo].[Employees] (
    [Id] int not null identity(1,1)
)
alter table [dbo].[Employees] add [Name] nvarchar(max) not null
alter table [dbo].[Employees] add [OptionalDependentUserId] int null
alter table [dbo].[Employees] add [OptionalWithManyUserId] int null
alter table Employees add constraint PK_Employees primary key (Id)
go

create table [dbo].[Users] (
    [Id] int not null identity(1,1)
)
alter table [dbo].[Users] add [Gender] int not null
alter table [dbo].[Users] add [OptionalPrincipalEmployeeId] int null
alter table Users add constraint PK_Users primary key (Id)
go

create table [dbo].[ZooAnimal] (
    [AnimalId] int not null,    [ZooId] int not null
)
alter table ZooAnimal add constraint PK_ZooAnimal primary key (ZooId, AnimalId)
go

create table [dbo].[Zoos] (
    [Id] int not null
)
alter table [dbo].[Zoos] add [Name] nvarchar(max) null
alter table Zoos add constraint PK_Zoos primary key (Id)
go

alter table [dbo].[Animal] add constraint [FK_dbo.Animal_dbo.Employees_TrainerEmployeeId] foreign key (TrainerEmployeeId) references [dbo].[Employees] (Id)
alter table [dbo].[Animal] add constraint [FK_dbo.Animal_dbo.Users_OwnerUserId] foreign key (OwnerUserId) references [dbo].[Users] (Id)
go

alter table [dbo].[ApeSpecifics] add constraint [FK_dbo.ApeSpecifics_dbo.Animal_Id] foreign key (Id) references [dbo].[Animal] (Id)
go

alter table [dbo].[Cage] add constraint [FK_dbo.Cage_dbo.Animal_TenantWeaselId] foreign key (TenantWeaselId) references [dbo].[Animal] (Id)
alter table [dbo].[Cage] add constraint [FK_dbo.Cage_dbo.ApeSpecifics_TenantApeId] foreign key (TenantApeId) references [dbo].[ApeSpecifics] (Id)
go

alter table [dbo].[Employees] add constraint [FK_dbo.Employees_dbo.Users_OptionalDependentUserId] foreign key (OptionalDependentUserId) references [dbo].[Users] (Id)
alter table [dbo].[Employees] add constraint [FK_dbo.Employees_dbo.Users_OptionalWithManyUserId] foreign key (OptionalWithManyUserId) references [dbo].[Users] (Id)
go

alter table [dbo].[Users] add constraint [FK_dbo.Users_dbo.Employees_OptionalPrincipalEmployeeId] foreign key (OptionalPrincipalEmployeeId) references [dbo].[Employees] (Id)
go

alter table [dbo].[ZooAnimal] add constraint [FK_dbo.ZooAnimal_dbo.Animal_ZooId] foreign key (ZooId) references [dbo].[Animal] (Id)
alter table [dbo].[ZooAnimal] add constraint [FK_dbo.ZooAnimal_dbo.Zoos_AnimalId] foreign key (AnimalId) references [dbo].[Zoos] (Id)
go

