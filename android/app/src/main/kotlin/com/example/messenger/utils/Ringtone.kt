package com.example.messenger.utils

import android.content.Context
import android.content.Intent
import android.media.MediaPlayer
import android.media.RingtoneManager
import android.net.Uri
import android.provider.Settings

class RingtoneUtils {
    companion object {
        fun openSoundSettings(context: Context) {
            val intent = Intent(Settings.ACTION_SOUND_SETTINGS)
            context.startActivity(intent)
        }

        fun playRingtone(context: Context) {
            val uri: Uri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_RINGTONE)
            val mediaPlayer = MediaPlayer.create(context, uri)
            mediaPlayer.start()

            // Nếu bạn muốn nhạc chuông kêu liên tục, bạn có thể sử dụng setLooping
            mediaPlayer.isLooping = true
        }
    }
}