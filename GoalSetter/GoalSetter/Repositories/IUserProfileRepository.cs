using GoalSetter.Models;
using System.Collections.Generic;

namespace GoalSetter.Repositories
{
    public interface IUserProfileRepository
    {
        void Add(UserProfile userProfile);
        UserProfile GetByFirebaseUserId(string firebaseUserId);
        List<UserProfile> GetUsers();
        UserProfile GetById(int id);
        void Update(UserProfile userProfile);
        List<UserType> GetUserTypes();
        void Remove(int id);
    }
}