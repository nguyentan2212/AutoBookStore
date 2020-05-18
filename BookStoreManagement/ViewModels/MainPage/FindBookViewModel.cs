using System;
using System.Windows;
using BookStoreManagement.Models;
using System.Linq;
using Caliburn.Micro;
using System.Windows.Controls;
using MahApps.Metro.Controls;

namespace BookStoreManagement.ViewModels.MainPage
{
    public class FindBookViewModel : ViewBaseModel
    {
        private DataProvider dataProvider;

        private string searchKey;

        public string SearchKey
        {
            get { return searchKey; }
            set { searchKey = value;
                if (string.IsNullOrEmpty(value))
                {
                    searchBooks = null;
                    ListBooks = dataProvider.Books;
                }
            }
        }

        private int searchBy = 0;

        public int SearchBy
        {
            get { return searchBy; }
            set { searchBy = value;
                NotifyOfPropertyChange("SearchBy");
            }
        }


        private BindableCollection<Book> listBooks;
        private BindableCollection<Book> searchBooks;     

        public BindableCollection<Book> ListBooks
        {
            get { return listBooks; }
            set { listBooks = value;
                PageIndex = 1;
                MaxPage = (ListBooks.Count % 2 == 0) ? ListBooks.Count / 2 : ListBooks.Count / 2 + 1;
                DisplayListBooks = new BindableCollection<Book>(ListBooks.Take(2));
                NotifyOfPropertyChange("ListBooks");
            }
        }
        private BindableCollection<Book> _DisplayListBooks;
        public BindableCollection<Book> DisplayListBooks
        {
            get { return _DisplayListBooks; }
            set
            {
                _DisplayListBooks = value;
                NotifyOfPropertyChange("DisplayListBooks");
            }
        }

        private Book selectedBook = null;

        public Book SelectedBook
        {
            get { return selectedBook; }
            set
            {
                selectedBook = value;
                if (value is null)
                {
                    RighPaneVisibility = Visibility.Collapsed;
                }
                else
                {
                    RighPaneVisibility = Visibility.Visible;
                }
            }
        }

        private Visibility righPaneVisibility = Visibility.Collapsed;

        public Visibility RighPaneVisibility
        {
            get { return righPaneVisibility; }
            set { righPaneVisibility = value;
                NotifyOfPropertyChange("RighPaneVisibility");
            }
        }

        private int _PageIndex;
        public int PageIndex
        {
            get
            {
                return _PageIndex;
            }
            set
            {
                _PageIndex = value;
                NotifyOfPropertyChange("PageIndex");
            }
        }
        public int MaxPage { get; set; }
       
        public FindBookViewModel(DataProvider dataProvider)
        {
            this.dataProvider = dataProvider;
            ListBooks = dataProvider.Books;
            PageIndex = 1;
            
                
        }

        public void Search()
        {
            if (string.IsNullOrEmpty(searchKey))
                return;
            searchKey = searchKey.ToUpper();
            switch(searchBy)
            {
                case 0:
                    searchBooks = new BindableCollection<Book>(listBooks.Where(x => x.Id.ToUpper().Contains(searchKey) || x.Title.ToUpper().Contains(searchKey) || x.Author.ToUpper().Contains(searchKey)).ToList());
                    break;
                case 1:
                    searchBooks = new BindableCollection<Book>(listBooks.Where(x => x.Id.ToUpper().Contains(searchKey)).ToList());
                    break;
                case 2:
                    searchBooks = new BindableCollection<Book>(listBooks.Where(x => x.Title.ToUpper().Contains(searchKey)).ToList());
                    break;
                case 3:
                    searchBooks = new BindableCollection<Book>(listBooks.Where(x => x.Author.ToUpper().Contains(searchKey)).ToList());
                    break;
            }
            ListBooks = searchBooks;
        }

        public void AddToTrolley(Book b)
        {
            
            MessageBox.Show(b.Title);
        }
        public bool CanGoNext
        {
            get
            {
                return PageIndex < MaxPage;
            }
        }
        public void GoNext()
        {
            PageIndex++;
            DisplayListBooks = new BindableCollection<Book>(ListBooks.Skip((PageIndex - 1) * 2).Take(2));
            NotifyOfPropertyChange("CanGoNext");
            NotifyOfPropertyChange("CanGoPrevious");
        }
        public bool CanGoPrevious
        {
            get
            {
                return PageIndex > 1;
            }
        }
        public void GoPrevious()
        {
            PageIndex--;
            DisplayListBooks = new BindableCollection<Book>(ListBooks.Skip((PageIndex - 1) * 2).Take(2));
            NotifyOfPropertyChange("CanGoNext");
            NotifyOfPropertyChange("CanGoPrevious");
        }
        private Views.MainPage.CreateBillView createBillView;
        public void OpenBill()
        {
            createBillView = new Views.MainPage.CreateBillView();
            createBillView.DataContext = this;

            createBillView.ShowDialog();
        }
    }
}
