Summary: No :/
Name: No
Version: 9
Release: 1%{?dist}
License:        GPL-3.0
URL: https://github.com/TanmayPatil105/no
BuildArch: x86_64

%description
This package contains No

%files
%{_bindir}/no

%install
mkdir -p %{buildroot}/%{_bindir}
install -m 755 %{_sourcedir} %{buildroot}/%{_bindir}/no

%clean
rm -rf %{buildroot}

%post
echo "No was installed."

%postun
echo "No was uninstalled."
