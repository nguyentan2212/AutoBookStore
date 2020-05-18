using System;
using Caliburn.Micro;

namespace BookStoreManagement.Models
{
    public class DataProvider
    {
        public BindableCollection<Book> Books { get; set; }
        public BindableCollection<StaffAccount> StaffAccounts { get; set; }
        public DataProvider()
        {
            Books = new BindableCollection<Book>()
            {
                new Book()
                {
                    Id = "01",
                    Title = "Sự im lặng của bày cừu.",
                    Author = "Thomas Harris",
                    Publisher = "None",
                    Amount=99,
                    Location="Kệ 1",
                    Image=@"pack://application:,,,/BookStoreManagement;component/Resources/Img/1.png",
                    Price = 200000
                },
                new Book()
                {
                    Id = "02",
                    Title = "2 vạn dặm dưới đáy biển (Twenty Thousand Leagues Under The Sea).",
                    Author = "Jules Verne",
                    Publisher = "None",
                    Amount=99,
                    Location="Kệ 2",
                    Image=@"pack://application:,,,/BookStoreManagement;component/Resources/Img/2.png",
                    Price = 200000
                },
                new Book()
                {
                    Id = "03",
                    Title = "Start With Why.",
                    Author = "Simon Sinek ",
                    Publisher = "None",
                    Amount=99,
                    Location="Kệ 1",
                    Image=@"pack://application:,,,/BookStoreManagement;component/Resources/Img/3.png",
                    Price = 200000
                },
                new Book()
                {
                    Id = "04",
                    Title = "Mặc Kệ Thiên Hạ.",
                    Author = "Mari Tamagawa",
                    Publisher = "None",
                    Amount=99,
                    Location="Kệ 1",
                    Image=@"pack://application:,,,/BookStoreManagement;component/Resources/Img/4.png",
                    Price = 200000
                },
                new Book()
                {
                    Id = "05",
                    Title = "Đời Đơn Giản Khi Ta Đơn Giản.",
                    Author = "Xuân Nguyễn",
                    Publisher = "None",
                    Amount=99,
                    Location="Kệ 1",
                    Image=@"pack://application:,,,/BookStoreManagement;component/Resources/Img/5.png",
                    Price = 200000
                }
            };
            StaffAccounts = new BindableCollection<StaffAccount>()
            {
                new StaffAccount()
                {
                    Id = "01",
                    Name = "Nguyen Minh Tan",
                    UserName = "tandt",
                    Password = "123",                   
                    Email = "tan@uit.edu.vn",
                    Position = "Nhân viên",
                    Image = @"pack://application:,,,/BookStoreManagement;component/Resources/Img/5.png"
                },
                new StaffAccount()
                {
                    Id = "02",
                    Name = "Minh Tan",
                    UserName = "tan02",
                    Password = "123",                    
                    Email = "tan02@uit.edu.vn",
                    Position = "Quản lí",
                    Image = @"pack://application:,,,/BookStoreManagement;component/Resources/Img/4.png"
                }
            };           
            
        }
    }
}
