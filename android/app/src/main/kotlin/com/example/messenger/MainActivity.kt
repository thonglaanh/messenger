package com.example.messenger

import BatteryLevelChannel
import com.example.messenger.method_channel.OpenSettingsChannel
import com.example.messenger.method_channel.RingtoneMethodChannel
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterFragmentActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        BatteryLevelChannel.init(flutterEngine.dartExecutor.binaryMessenger, this)
        OpenSettingsChannel.init(flutterEngine.dartExecutor.binaryMessenger, this)
        RingtoneMethodChannel.init(flutterEngine.dartExecutor.binaryMessenger, this)
    }

}
