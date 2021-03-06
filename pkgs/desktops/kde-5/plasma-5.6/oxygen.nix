{ plasmaPackage, extra-cmake-modules, ki18n, kcmutils, kconfig
, kdecoration, kguiaddons, kwidgetsaddons, kservice, kcompletion
, frameworkintegration, kwindowsystem, makeQtWrapper, qtx11extras
}:

plasmaPackage {
  name = "oxygen";
  nativeBuildInputs = [
    extra-cmake-modules makeQtWrapper
  ];
  propagatedBuildInputs = [
    kcmutils kconfig kdecoration kguiaddons kwidgetsaddons kservice kcompletion
    frameworkintegration ki18n kwindowsystem qtx11extras
  ];
  postInstall = ''
    wrapQtProgram "$out/bin/oxygen-demo5"
    wrapQtProgram "$out/bin/oxygen-settings5"
  '';
}
