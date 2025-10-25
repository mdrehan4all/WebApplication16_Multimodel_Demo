using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using WebApplication16_Multimodel_Demo.Models;
using WebApplication16_Multimodel_Demo.Models.ViewModels;

namespace WebApplication16_Multimodel_Demo.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly StudentInfoDbContext context;
        public HomeController(ILogger<HomeController> logger, StudentInfoDbContext context)
        {
            _logger = logger;
            this.context = context;
        }

        public IActionResult Index()
        {
            TempData["Message"] = "This is TempData message from HomeController Index action method";
            return View();
        }

        public IActionResult Search(int? id)
        {
            if(id != null)
            {
                CourseWiseStudent cws = new CourseWiseStudent();
                cws.crsDetails = context.Courses.FirstOrDefault(item=>item.CourseId == id);
                if(cws.crsDetails != null)
                {
                    cws.stuDetails = context.Students.Where(item => item.CourseId == id).ToList();
                    return View(cws);
                }
                else
                {
                    TempData["Message"] = "Course Not Found";
                    return RedirectToAction("Index");
                }
            }
            else
            {
                TempData["Message"] = "Please provide Course Id to search";
                return RedirectToAction("Index");
            }
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
