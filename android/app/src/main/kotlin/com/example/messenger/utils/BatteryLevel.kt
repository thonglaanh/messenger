import android.content.Context
import android.os.BatteryManager

class BatteryLevelUtils {
    companion object {
        fun getBatteryLevel(context: Context): Int {
            val batteryManager = context.getSystemService(Context.BATTERY_SERVICE) as BatteryManager
            return batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
        }
    }
}