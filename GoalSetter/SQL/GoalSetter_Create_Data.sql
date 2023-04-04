CREATE TABLE [UserProfile] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [FirebaseUserId] nvarchar(255) NOT NULL,
  [FirstName] nvarchar(255) NOT NULL,
  [LastName] nvarchar(255) NOT NULL,
  [Email] nvarchar(255) NOT NULL,
  [GoalsCompleted] int NOT NULL,
  [UserTypeId] int NOT NULL
)
GO

CREATE TABLE [UserType] (
  [Id] int PRIMARY KEY,
  [Type] nvarchar(255) NOT NULL
)
GO

CREATE TABLE [Goal] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [Title] nvarchar(255) NOT NULL,
  [Description] varchar(300),
  [UserId] int NOT NULL,
  [Progress] int NOT NULL,
  [AmountOfSubGoals] int NOT NULL,
  [Completed] bit NOT NULL
)
GO

CREATE TABLE [SubGoal] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [GoalId] int NOT NULL,
  [Title] nvarchar(255) NOT NULL,
  [Description] varchar(300),
  [Completed] bit NOT NULL
)
GO

CREATE TABLE [GoalCategory] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [GoalId] int NOT NULL,
  [CategoryId] int NOT NULL
)
GO

CREATE TABLE [Category] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [Name] nvarchar(255) NOT NULL
)
GO

CREATE TABLE [Badge] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [Name] varchar(50) NOT NULL,
  [Description] varchar(100) NOT NULL,
  [Requirements] int NOT NULL,
  [Progress] int NOT NULL,
  [Image] varchar(100) NOT NULL
)
GO

CREATE TABLE [UserBadge] (
  [Id] int PRIMARY KEY IDENTITY(1, 1),
  [UserId] int NOT NULL,
  [BadgeId] int NOT NULL
)
GO

ALTER TABLE [Goal] ADD FOREIGN KEY ([UserId]) REFERENCES [UserProfile] ([Id])
GO

ALTER TABLE [GoalCategory] ADD FOREIGN KEY ([CategoryId]) REFERENCES [Category] ([Id])
GO

ALTER TABLE [GoalCategory] ADD FOREIGN KEY ([GoalId]) REFERENCES [Goal] ([Id])
GO

ALTER TABLE [UserProfile] ADD FOREIGN KEY ([UserTypeId]) REFERENCES [UserType] ([Id])
GO

ALTER TABLE [UserBadge] ADD FOREIGN KEY ([UserId]) REFERENCES [UserProfile] ([Id])
GO

ALTER TABLE [UserBadge] ADD FOREIGN KEY ([BadgeId]) REFERENCES [Badge] ([Id])
GO

ALTER TABLE [SubGoal] ADD FOREIGN KEY ([GoalId]) REFERENCES [Goal] ([Id])
GO

ALTER TABLE [Goal] ADD AmountOfSubGoals INT NOT NULL;
ALTER TABLE [Badge] ADD Requirements INT NOT NULL;