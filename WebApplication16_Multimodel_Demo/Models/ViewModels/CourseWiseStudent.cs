using WebApplication16_Multimodel_Demo.Models;

namespace WebApplication16_Multimodel_Demo.Models.ViewModels
{
    public class CourseWiseStudent
    {
        public Course crsDetails { get; set; }
        public List<Student> stuDetails { get; set; }
    }
}
