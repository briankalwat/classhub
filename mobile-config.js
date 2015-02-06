// Adapted from https://github.com/Slava/meteor-mobile-icons-example
// TODO: Make the splash screens and icons so we're not using the todo ones

App.info({
  id: 'app-id',
  name: 'App Name',
  description: '',
  author: '',
  email: '',
  website: ''
});

App.icons({
  'iphone': 'icons/icon.png',
  'iphone_2x': 'icons/icon.png',
  'ipad': 'icons/icon.png',
  'ipad_2x': 'icons/icon.png'
});

App.launchScreens({
  // 'iphone': 'splash/2x_splash.png',
  // 'iphone_2x': 'splash/2x_splash.png',
  // 'iphone5': 'splash/2x_splash.png',
  // 'ipad_portrait': 'splash/2x_splash.png',
  // 'ipad_portrait_2x': 'splash/2x_splash.png',
  // 'ipad_landscape': 'splash/2x_splash.png',
  // 'ipad_landscape_2x': 'splash/2x_splash.png'
});

App.setPreference('StatusBarOverlaysWebView', 'false');
App.setPreference('SplashScreenDelay', '20000');
App.setPreference('ShowSplashScreenSpinner', 'false');