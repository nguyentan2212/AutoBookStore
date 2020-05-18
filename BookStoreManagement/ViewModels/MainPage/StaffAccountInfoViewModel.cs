using BookStoreManagement.Models;
using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace BookStoreManagement.ViewModels.MainPage
{
    public class StaffAccountInfoViewModel : ViewBaseModel , IHandle<StaffAccount>
    {
        private DataProvider provider;

        #region Account       
        private StaffAccount _DisplayAccount;
        public StaffAccount DisplayAccount
        {
            get
            {
                return _DisplayAccount;
            }
            set
            {
                _DisplayAccount = value;
                NotifyOfPropertyChange("DisplayAccount");
            }
        }
        #endregion

        #region password
        public string CurrentPassword { get; set; }
        public string NewPassword { get; set; }
        public string ConfirmPassword { get; set; }
        #endregion

        private readonly IEventAggregator _eventAggregator;
        public StaffAccountInfoViewModel(DataProvider dataProvider, IEventAggregator eventAggregator)
        {
            provider = dataProvider;            
            _eventAggregator = eventAggregator;
            _eventAggregator.Subscribe(this);
            _eventAggregator.PublishOnUIThread(true);
        }
        #region get password
        public void SetPassword(PasswordBox passwordBox, int t)
        {
            switch (t)
            {
                case 0:
                    CurrentPassword = passwordBox.Password;
                    break;
                case 1:
                    NewPassword = passwordBox.Password;
                    break;
                default:
                    ConfirmPassword = passwordBox.Password;
                    break;
            }
        }

        public bool CanConfirm
        {
            get
            {
                return DisplayAccount != null;
            }
        }
        public void Confirm()
        {
            
        }

        public void Handle(StaffAccount message)
        {
            DisplayAccount = message;
        }
        #endregion
    }
}
