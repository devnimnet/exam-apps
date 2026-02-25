package com.nimnet.examp_app

import android.app.ActivityManager
import android.app.Activity
import android.content.Context
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val am = getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        if (am.lockTaskModeState == ActivityManager.LOCK_TASK_MODE_NONE) {
            startLockTask()
        }
    }
}
