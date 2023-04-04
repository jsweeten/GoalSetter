USE [GoalSetter];
GO

/* set identity_insert [UserType] on */
insert into [UserType] (Id, [Type]) VALUES (1, 'Admin'), (2, 'Author');
/* set identity_insert [UserType] off */

set identity_insert [UserProfile] on
insert into UserProfile (Id, FireBaseUserId, FirstName, LastName, Email, GoalsCompleted, UserTypeId) values (1, 'xItdqpgZYzRVeZalSBd97sJHrMd2', 'Justin', 'Sweeten', 'jtsweeten@gmail.com', 0, 1);
set identity_insert [UserProfile] off

set identity_insert [Goal] on
insert into [Goal] ([ID], [Title], [Description], [UserId], [AmountOfSubGoals], [Progress], [Completed]) VALUES
	(1, 'Complete This App', 'Get This App Working!', 1, 1, 0, 0)
set identity_insert [Goal] off

set identity_insert [SubGoal] on
insert into [SubGoal] ([ID], [GoalId], [Title], [Description], [Completed]) VALUES
	(1, 1, 'SubGoal 1!', 'Complete This SubGoal Section!', 0)
set identity_insert [SubGoal] off

set identity_insert [Category] on
insert into [Category] ([Id], [Name]) 
values (1, 'Mind'), (2, 'Body'), (3, 'Spirit') 
set identity_insert [Category] off

set identity_insert [GoalCategory] on
insert into [GoalCategory] ([Id], [GoalId], [CategoryId])
values (1, 1, 1)
set identity_insert [GoalCategory] off

set identity_insert [Badge] on
insert into Badge (Id, [Name], [Description], [Requirements], [Progress], [Image])
values
(1, 'New Member Badge', 'Create an account on GoalSetter', 1, 1, 'C:\Users\Jay\workspace\csharp\GoalSetter\GoalSetter\client\images')

set identity_insert [Badge] off

set identity_insert [UserBadge] on
insert into [UserBadge] ([Id], [UserId], [BadgeId]) 
values (1, 1, 1);
set identity_insert [UserBadge] off