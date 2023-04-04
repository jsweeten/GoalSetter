namespace GoalSetter.Models
{
    public class Goal
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int UserId { get; set; }
        public int AmountOfSubGoals { get; set; }
        public int Progress { get; set; }
        public bool Completed { get; set; }
    }
}