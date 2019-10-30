Other resourses:
    1 Build Mobile Apps With Flutter and Google Maps (a talk given at Cloud Next '19)
        https://www.youtube.com/watch?v=RpQLFAFqMlw
    2 Hadrien Lejard's google_maps_webservice package which makes the Google Maps Web Services,
        like Directions API, Distance Matrix API, and Places API really easy to use.
        https://pub.dev/packages/google_maps_webservice
    3 If you want to look at different options for using an API via JSON REST,
        see Andrew Brogdon's Medium post for a range of options for working with JSON REST APIs.
        https://medium.com/flutter-io/some-options-for-deserializing-json-with-flutter-7481325a4450


Contents of files to be updated:
1 android/app/src/main/AndroidManifest.xml
    <manifest xmlns:android="http://schemas.android.com/apk/res/android"
        package="com.example.google_maps_in_flutter">

        <application
            android:name="io.flutter.app.FlutterApplication"
            android:label="google_maps_in_flutter"
            android:icon="@mipmap/ic_launcher">

            <!-- Add the following entry, with your API key -->
            <meta-data android:name="com.google.android.geo.API_KEY"
                   android:value="YOUR-KEY-HERE"/>

            <activity
                android:name=".MainActivity"
                android:launchMode="singleTop"
                android:theme="@style/LaunchTheme"
                android:configChanges="orientation|keyboardHidden|keyboard|screenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
                android:hardwareAccelerated="true"
                android:windowSoftInputMode="adjustResize">
                <meta-data
                    android:name="io.flutter.app.android.SplashScreenUntilFirstFrame"
                    android:value="true" />
                <intent-filter>
                    <action android:name="android.intent.action.MAIN"/>
                    <category android:name="android.intent.category.LAUNCHER"/>
                </intent-filter>
            </activity>
        </application>
    </manifest>

2 ios/Runner/AppDelegate.m
    @implementation AppDelegate

    - (BOOL)application:(UIApplication *)application
        didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
      [GeneratedPluginRegistrant registerWithRegistry:self];
      // Add the following line, with your API key
      [GMSServices provideAPIKey: @"YOUR-API-KEY"];
      return [super application:application didFinishLaunchingWithOptions:launchOptions];
    }

    @end

3 ios/Runner/Info.plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
        <!-- Add the following entry, from here, -->
        <key>io.flutter.embedded_views_preview</key>
        <true/>
        <!-- to here. -->
        <key>CFBundleDevelopmentRegion</key>
        <string>en</string>
        <key>CFBundleExecutable</key>
        <string>$(EXECUTABLE_NAME)</string>
        <key>CFBundleIdentifier</key>
        <string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
        <key>CFBundleInfoDictionaryVersion</key>
        <string>6.0</string>
        <key>CFBundleName</key>
        <string>google_maps_in_flutter</string>
        <key>CFBundlePackageType</key>
        <string>APPL</string>
        <key>CFBundleShortVersionString</key>
        <string>$(FLUTTER_BUILD_NAME)</string>
        <key>CFBundleSignature</key>
        <string>????</string>
        <key>CFBundleVersion</key>
        <string>$(FLUTTER_BUILD_NUMBER)</string>
        <key>LSRequiresIPhoneOS</key>
        <true/>
        <key>UILaunchStoryboardName</key>
        <string>LaunchScreen</string>
        <key>UIMainStoryboardFile</key>
        <string>Main</string>
        <key>UISupportedInterfaceOrientations</key>
        <array>
                <string>UIInterfaceOrientationPortrait</string>
                <string>UIInterfaceOrientationLandscapeLeft</string>
                <string>UIInterfaceOrientationLandscapeRight</string>
        </array>
        <key>UISupportedInterfaceOrientations~ipad</key>
        <array>
                <string>UIInterfaceOrientationPortrait</string>
                <string>UIInterfaceOrientationPortraitUpsideDown</string>
                <string>UIInterfaceOrientationLandscapeLeft</string>
                <string>UIInterfaceOrientationLandscapeRight</string>
        </array>
        <key>UIViewControllerBasedStatusBarAppearance</key>
        <false/>
</dict>
</plist>