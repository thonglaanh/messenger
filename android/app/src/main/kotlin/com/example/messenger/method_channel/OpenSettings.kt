package com.example.messenger.method_channel

import android.content.Context
import com.example.messenger.utils.OpenSettingsUtils
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

class OpenSettingsChannel {

    companion object {
        private const val OPEN_SETTINGS = "open_settings"

        fun init(binaryMessenger: BinaryMessenger, context: Context) {
            MethodChannel(binaryMessenger, OPEN_SETTINGS).setMethodCallHandler { call, result ->
                if (call.method == "openSettings") {
                    OpenSettingsUtils.openSettings(context)
                    result.success(true)
                    return@setMethodCallHandler
                }

                if (call.method == "openSettingsBiometrics") {
                    OpenSettingsUtils.openSecuritySettings(context)
                    result.success(true)
                    return@setMethodCallHandler
                }

                result.notImplemented()
            }
        }
    }

}