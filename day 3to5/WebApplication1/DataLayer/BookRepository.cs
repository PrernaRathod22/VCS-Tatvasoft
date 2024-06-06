using DataLayer.Context;
using DataLayer.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public class BookRepository
    {
        private AppDbContext _appDbContext;

        public BookRepository(AppDbContext appDbContext)
        {
            _appDbContext = appDbContext;
        }

        public async Task InsertBook(BookDetail bookDetails)
        {
            await _appDbContext.AddAsync(bookDetails);
            await _appDbContext.SaveChangesAsync();
        }
        public BookDetail GetBookById(int id)
        {
            var bookDetail = _appDbContext.BookDetails.Where(x => x.Id == id).FirstOrDefault();
            return bookDetail;
        }
    }
}
