using System;
using System.Windows.Controls;
using Caliburn.Micro;
using BookStoreManagement.StartUp;
using BookStoreManagement.ViewModels.OptionsPage;
using BookStoreManagement.ViewModels.MainPage;
using System.Windows;
using BookStoreManagement.Models;

namespace BookStoreManagement.ViewModels
{
    public class ShellViewModel : ViewBaseModel, IShell, IHandle<bool>
    {
        private SimpleContainer _container;
        private INavigationServiceEx navigationService;
        private readonly IEventAggregator _eventAggregator;
        #region Properties
        private UserControl dialogContent;

        public UserControl DialogContent
        {
            get { return dialogContent; }
            set { dialogContent = value;
                NotifyOfPropertyChange("DialogContent");
            }
        }

        private bool isDialogOpen;

        public bool IsDialogOpen
        {
            get { return isDialogOpen; }
            set { isDialogOpen = value;
                NotifyOfPropertyChange("IsDialogOpen");
            }
        }

        private bool isMenuEnable = true;

        public bool IsMenuEnable
        {
            get { return isMenuEnable; }
            set { isMenuEnable = value;
                NotifyOfPropertyChange("IsMenuEnable");
            }
        }

        private bool isLog;

        public bool IsLog
        {
            get { return isLog; }
            set { isLog = value;
                NotifyOfPropertyChange("IsLog");
            }
        }

        public bool IsCustomer { get; set; }
        public bool IsEmployees { get; set; }
        public bool IsAdmin { get; set; }
        public bool HaveAccount { get; set; }

        private string user;

        public string User
        {
            get { return user; }
            set { user = value;
                NotifyOfPropertyChange("User");
            }
        }

        #endregion

        public ShellViewModel(SimpleContainer container, IEventAggregator eventAggregator)
        {
            this._container = container;
            IsDialogOpen = true;
            DialogContent = new Views.UserControl.Login();
            DialogContent.DataContext = this;
            _eventAggregator = eventAggregator;
            _eventAggregator.Subscribe(this);
        }

        #region Methods

        public void RegisterFrame(Frame frame)
        {
            navigationService = new NavigationService(frame);

            _container.Instance(navigationService);

            //navigationService.NavigateToViewModel(typeof(ProfileViewModel), "Main", null);
        }

        public void NavigateToView(string modelName)
        {
            switch(modelName)
            {
                case "BookInfoView":
                    IsMenuEnable = false;
                    navigationService.NavigateToViewModel<BookInfoViewModel>();
                    IsMenuEnable = true;
                    break;
                case "BillView":
                    IsMenuEnable = false;
                    navigationService.NavigateToViewModel<BillViewModel>();
                    IsMenuEnable = true;
                    break;
                case "StaffAccountView":
                    IsMenuEnable = false;
                    navigationService.NavigateToViewModel<StaffAccountViewModel>();
                    IsMenuEnable = true;
                    break;
                case "CustomerAccountView":
                    IsMenuEnable = false;
                    navigationService.NavigateToViewModel<CustomerAccountViewModel>();
                    IsMenuEnable = true;
                    break;
                case "StaffAccountInfoView":
                    IsMenuEnable = false;
                    navigationService.NavigateToViewModel<StaffAccountInfoViewModel>();
                    IsMenuEnable = true;
                    break;
                case "CustomerAccountInfoView":
                    IsMenuEnable = false;
                    navigationService.NavigateToViewModel<CustomerAccountInfoViewModel>();
                    IsMenuEnable = true;
                    break;
                case "FindBook":
                    IsMenuEnable = false;
                    navigationService.NavigateToViewModel<FindBookViewModel>();
                    IsMenuEnable = true;
                    break;
                case "About":
                    IsMenuEnable = false;
                    navigationService.NavigateToViewModel<AboutViewModel>();
                    IsMenuEnable = true;
                    break;
                case "Settings":
                    IsMenuEnable = false;
                    navigationService.NavigateToViewModel<SettingsViewModel>();
                    IsMenuEnable = true;
                    break;               
                default:
                    IsMenuEnable = false;
                    navigationService.NavigateToViewModel<ErrorViewModel>();
                    IsMenuEnable = true;
                    break;
            }
        }
      
        public void Login(string user)
        {
            
            if (user == "customer")
            {
                IsCustomer = true;                
                NotifyOfPropertyChange("IsCustomer");
                HaveAccount = true;
                NotifyOfPropertyChange("HaveAccount");
            }
            else
            {
                if (user == "user")
                {
                    IsEmployees = true;
                    NotifyOfPropertyChange("IsEmployees");
                    HaveAccount = true;
                    NotifyOfPropertyChange("HaveAccount");
                }
                else
                {
                    if (user == "admin")
                    {
                        IsEmployees = true;
                        NotifyOfPropertyChange("IsEmployees");
                        IsAdmin = true;
                        NotifyOfPropertyChange("IsAdmin");
                        HaveAccount = true;
                        NotifyOfPropertyChange("HaveAccount");
                    }
                    else
                    {
                        MessageBox.Show("Thông tin đăng nhập chưa chính xác");
                        return;
                    }
                }
            }            
            IsDialogOpen = false;
            IsLog = false;
            User = user;
            IsMenuEnable = false;
            navigationService.NavigateToViewModel<FindBookViewModel>();
            IsMenuEnable = true;
        }
        public void Login()
        {
            IsDialogOpen = false;
            IsLog = false;
            User = "Guest.";
            IsMenuEnable = false;
            navigationService.NavigateToViewModel<FindBookViewModel>();
            IsMenuEnable = true;
        }
        public void ShowMenu()
        {
            IsLog = !IsLog;
            
        }

        public void Handle(bool message)
        {


            StaffAccount staff = new StaffAccount()
            {
                Id = "02",
                Name = "Minh Tan",
                UserName = "tan02",
                Password = "123",
                Email = "tan02@uit.edu.vn",
                Position = "Quản lí",
                Image = @"pack://application:,,,/BookStoreManagement;component/Resources/Img/4.png"
            };
            _eventAggregator.PublishOnUIThread(staff);
        }
        #endregion
    }
}
