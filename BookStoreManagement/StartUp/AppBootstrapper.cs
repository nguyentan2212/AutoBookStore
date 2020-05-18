namespace BookStoreManagement.StartUp {
    using System;
    using System.Collections.Generic;
    using BookStoreManagement.ViewModels;
    using BookStoreManagement.ViewModels.OptionsPage;
    using BookStoreManagement.ViewModels.MainPage;
    using Caliburn.Micro;

    public class AppBootstrapper : BootstrapperBase {
        SimpleContainer container;

        public AppBootstrapper() {
            Initialize();
        }

        protected override void Configure() {
            container = new SimpleContainer();
            container.Instance(container);

            container.Singleton<IWindowManager, WindowManager>();
            container.Singleton<IEventAggregator, EventAggregator>();
            container.Singleton<Models.DataProvider>();
            container.PerRequest<IShell, ShellViewModel>();
            container.PerRequest<SettingsViewModel>();
            container.PerRequest<AboutViewModel>();
            container.PerRequest<FindBookViewModel>();
            container.PerRequest<StaffAccountInfoViewModel>();
            container.PerRequest<ErrorViewModel>();
            container.PerRequest<BookInfoViewModel>();
            container.PerRequest<BillViewModel>();
            container.PerRequest<StaffAccountViewModel>();
            container.PerRequest<CustomerAccountViewModel>();
            container.PerRequest<CustomerAccountInfoViewModel>();
        }

        protected override object GetInstance(Type service, string key) {
            return container.GetInstance(service, key);
        }

        protected override IEnumerable<object> GetAllInstances(Type service) {
            return container.GetAllInstances(service);
        }

        protected override void BuildUp(object instance) {
            container.BuildUp(instance);
        }

        protected override void OnStartup(object sender, System.Windows.StartupEventArgs e) {
            DisplayRootViewFor<IShell>();
        }
    }
}