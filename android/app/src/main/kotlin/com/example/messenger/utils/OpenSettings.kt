package com.example.messenger.utils

import android.content.Context
import android.content.Intent
import android.hardware.biometrics.BiometricManager
import android.os.Build
import android.provider.Settings

class OpenSettingsUtils {
    companion object {
        fun openSettings(context: Context) {
            val intent = Intent(Settings.ACTION_SECURITY_SETTINGS)
            context.startActivity(intent)
        }

        fun openSecuritySettings(context: Context) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                // Mở màn hình thêm biometrics (Android 11 trở lên)
                val intent = Intent(Settings.ACTION_BIOMETRIC_ENROLL).apply {
                    addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                    // Sử dụng các hằng số từ BiometricManager.Authenticators
                    putExtra(
                            Settings.EXTRA_BIOMETRIC_AUTHENTICATORS_ALLOWED,
                            BiometricManager.Authenticators.BIOMETRIC_STRONG or
                                    BiometricManager


                                            .Authenticators.BIOMETRIC_WEAK
                    )
                }
                context.startActivity(intent)
            } else {
                // Với các phiên bản Android thấp hơn, chuyển hướng đến cài đặt vân tay
                val intent = Intent(Settings.ACTION_SECURITY_SETTINGS)
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                context.startActivity(intent)
            }
        }
    }
}