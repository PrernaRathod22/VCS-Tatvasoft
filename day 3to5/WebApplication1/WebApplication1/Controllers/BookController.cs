
using DataLayer.Entities;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ServiceLayer;
using ServiceLayer.Model;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BookController : ControllerBase
    {
        private readonly BookService _bookService;

        public BookController(BookService bookService)
        {
            _bookService = bookService;
        }

        /*[HttpGet]
        public IActionResult GetAllBook()
        {
            var result = _bookService.GetAll();
            return Ok(result);
        }

        [HttpGet("GetBookById")]
        public IActionResult GetBookById(int id)
        {
            var result = _bookService.GetById(id);
            return Ok(result);
        }
        [HttpPost]
        public async Task<IActionResult> InsertBook(BookDetail book)
        {
            await _bookService.InsertBookDetails(book);
            return Ok();
        }*/
        [Authorize(Roles = "Admin")]
        [HttpPost("BookDetails")]
        public async Task<IActionResult> InsertBookDetails(BookDetail bookDetails)
        {
            await _bookService.InsertBookDetails(bookDetails);
            //return Ok();
            return CreatedAtAction(nameof(InsertBookDetails), bookDetails);
        }
        [Authorize]
        [HttpGet("BookDetails/{id}")]
        public IActionResult GetBookDetailsById(int id)
        {
            var book = _bookService.GetBookDetailsById(id);
            if (book == null)
            {
                return NotFound();
            }
            return Ok(book);
        }
    }
}
