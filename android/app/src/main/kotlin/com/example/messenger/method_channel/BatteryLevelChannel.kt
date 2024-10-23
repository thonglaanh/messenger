import android.content.Context
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

class BatteryLevelChannel {
    //companion object = static
    companion object {
        private const val CHANNEL = "battery_level"

        fun init(binaryMessenger: BinaryMessenger, context: Context) {
            MethodChannel(binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
                if (call.method == "getBatteryLevel") {
                    val batteryLevel = BatteryLevelUtils.getBatteryLevel(context)

                    if (batteryLevel != -1) {
                        result.success(batteryLevel)
                    } else {
                        result.error("UNAVAILABLE", "Battery level not available.", null)
                    }
                    return@setMethodCallHandler
                }
                result.notImplemented()
            }
        }


    }
}