namespace GoalSetter.Models
{
    public class Badge
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int Requirements { get; set; }
        public int Progress { get; set; }
        public string Image { get; set; }
    }
}