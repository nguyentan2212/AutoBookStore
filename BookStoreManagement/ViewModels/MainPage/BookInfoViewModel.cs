using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BookStoreManagement.Models;
using BookStoreManagement.Views.MainPage;
using Caliburn.Micro;

namespace BookStoreManagement.ViewModels.MainPage
{
    public class BookInfoViewModel : ViewBaseModel
    {
        private BindableCollection<Book> _ListBooks;
        public BindableCollection<Book> ListBooks
        {
            get
            {
                return _ListBooks;
            }
            set
            {
                _ListBooks = value;
                NotifyOfPropertyChange("ListBooks");
            }
        }
        private DataProvider provider;
        private BookDetailInfoView _BookDetailInfoView;
        private NewBookView _NewBookView;
        public BookInfoViewModel()
        {
            provider = new DataProvider();
            ListBooks = provider.Books;          
        }
        public void EditBook(Book book)
        {
            _BookDetailInfoView = new BookDetailInfoView();
            _BookDetailInfoView.DataContext = book;
            _BookDetailInfoView.ShowDialog();
        }
        public void NewBook()
        {
            _NewBookView = new NewBookView();
            _NewBookView.DataContext = this;
            _NewBookView.ShowDialog();
        }
    }
}
