package com.example.messenger.method_channel

import android.content.Context
import com.example.messenger.utils.RingtoneUtils
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

class RingtoneMethodChannel {

    companion object {
        private const val RINGTONE = "ringtone"

        fun init(binaryMessenger: BinaryMessenger, context: Context) {
            MethodChannel(binaryMessenger, RINGTONE).setMethodCallHandler { call, result ->
                if (call.method == "openSoundSettings") {
                    RingtoneUtils.openSoundSettings(context)
                    result.success(true)
                    return@setMethodCallHandler
                }

                if (call.method == "playRingtone") {
                    RingtoneUtils.playRingtone(context)
                    result.success(true)
                    return@setMethodCallHandler
                }

                result.notImplemented()
            }
        }
    }
}
