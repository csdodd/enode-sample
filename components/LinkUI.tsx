import { Button, View, NativeModules } from "react-native";

export default function LinkUI({ token }: { token: string }) {
  const linkUI = NativeModules.LinkUIModule;
  return (
    <View>
      <Button
        title="Connect your EV"
        onPress={() => {
          linkUI.show(token, (code: string, errMsg: string) => {
            switch (code) {
              case "success":
                // handle success
                console.log("success!");
                break;

              case "cancelledByUser":
                // handle cancellation
                console.log("cancelled!");
                break;
              default:
                // handle other error kinds
                console.log(
                  `something went wrong: code=${code}, errMsg=${
                    errMsg ?? "[n/a]"
                  }`
                );
                break;
            }
          });
        }}
      />
    </View>
  );
}
