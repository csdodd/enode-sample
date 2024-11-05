# enode-sample

This is an [Expo](https://expo.dev) project created with [`create-expo-app`](https://www.npmjs.com/package/create-expo-app).

## Get started with enode-sample

1. In the project root, install dependencies

   ```bash
   npm install
   ```

2. Include Link UI

You'll need to properly include Enode's Link SDKs for builds to work. 

* For iOS, follow Enode's guide on how to [Set up your Xcode project](https://developers.enode.com/docs/link-sdks/ios#set-up-your-xcode-project). You will need to open the Xcode Workspace under the `/ios` folder.
* For Android, follow Enode's guide on how to [Include the SDK](https://developers.enode.com/docs/link-sdks/android#include-the-sdk) in your Android project. You will need to open the Android project under the `/android` folder.

3. Insert a `linkToken`

In `/app/(tabs)/index.tsx`, replace `<insert-link-token-here>` with an actual [`linkToken`](https://developers.enode.com/docs/link-sdks/introduction#create-a-link-session) you received from the Enode API. 

4. Run the app

```bash
npx expo run:ios
```

```bash
npx expo run:android
```

## Learn more

This project helps you get started. You can learn more about React Native in the [Enode docs](https://developers.enode.com/docs/link-sdks/react-native).