.class Lcom/android/server/BatteryService;
.super Landroid/os/Binder;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$DormantSettingsObserver;,
        Lcom/android/server/BatteryService$LedSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DORMANT_END:Ljava/lang/String; = "com.android.server.BatteryService.action.DORMANT_END"

.field private static final ACTION_DORMANT_START:Ljava/lang/String; = "com.android.server.BatteryService.action.DORMANT_START"

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final BATTERY_SCALE:I = 0x64

.field private static final BATTERY_STATS_SERVICE_NAME:Ljava/lang/String; = "batteryinfo"

.field private static final DORMANT_ALWAYS_SETTINGS_URI:Ljava/lang/String; = "dormant_always"

.field private static final DORMANT_END_HOUR_SETTINGS_URI:Ljava/lang/String; = "dormant_end_hour"

.field private static final DORMANT_END_MINUTE_SETTINGS_URI:Ljava/lang/String; = "dormant_end_min"

.field private static final DORMANT_LED_SETTINGS_URI:Ljava/lang/String; = "dormant_disable_led_indicator"

.field private static final DORMANT_ONOFF_SETTINGS_URI:Ljava/lang/String; = "dormant_switch_onoff"

.field private static final DORMANT_START_HOUR_SETTINGS_URI:Ljava/lang/String; = "dormant_start_hour"

.field private static final DORMANT_START_MINUTE_SETTINGS_URI:Ljava/lang/String; = "dormant_start_min"

.field private static final DUMPSYS_ARGS:[Ljava/lang/String; = null

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DUMP_MAX_LENGTH:I = 0x6000

.field private static final EXTRA_CHARGE_TYPE:Ljava/lang/String; = "charge_type"

.field private static final EXTRA_CURRENT_AVG:Ljava/lang/String; = "current_avg"

.field private static final EXTRA_ONLINE:Ljava/lang/String; = "online"

.field private static final LED_CHARGING_SETTINGS_URI:Ljava/lang/String; = "led_indicator_charing"

.field private static final LED_LOW_BATTERY_SETTINGS_URI:Ljava/lang/String; = "led_indicator_low_battery"

.field private static final LOCAL_LOGV:Z = false

.field private static final MINUTES_AN_HOUR:I = 0x3c

.field private static final MINUTES_A_DAY:I = 0x5a0

.field private static final MSEC_A_DAY:I = 0x5265c00

.field private static final MSEC_A_MINUTE:I = 0xea60

.field private static final OVER_CURRENT_FILE_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/current_avg"

.field private static final OVER_CURRENT_THRESHOLD:I

.field private static final TAG:Ljava/lang/String;

.field private static final model:Ljava/lang/String;


# instance fields
.field private mAcOnline:Z

.field private mBatteryChargetype:I

.field private mBatteryCurrentavg:I

.field private mBatteryHealth:I

.field private mBatteryLevel:I

.field private mBatteryLevelCritical:Z

.field private mBatteryOnline:I

.field private mBatteryPresent:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

.field private mBatteryTechnology:Ljava/lang/String;

.field private mBatteryTemperature:I

.field private mBatteryVoltage:I

.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private mDormantAlways:Z

.field private mDormantDisableLED:Z

.field private mDormantEndMinutes:I

.field private mDormantOnOff:Z

.field private mDormantSettingsObserver:Lcom/android/server/BatteryService$DormantSettingsObserver;

.field private mDormantStartMinutes:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInvalidCharger:I

.field private mInvalidChargerObserver:Landroid/os/UEventObserver;

.field private mLastBatteryChargetype:I

.field private mLastBatteryCurrentavg:I

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryOnline:I

.field private mLastBatteryPresent:Z

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastInvalidCharger:I

.field private mLastPlugType:I

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private mLedChargingSettingsEnable:Z

.field private mLedLowBatterySettingsEnable:Z

.field private mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mPlugType:I

.field private mPowerSupplyObserver:Landroid/os/UEventObserver;

.field private mScreenOn:Z

.field private mSentLowBatteryBroadcast:Z

.field private mSetDormantAlarm:Z

.field private mUsbOnline:Z

.field private mWasBatteryLowButNotSend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--checkin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-u"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    .line 124
    const-string v0, "ro.product.model"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->model:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 6
    .parameter "context"
    .parameter "lights"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 279
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 154
    iput v2, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 161
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 162
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 164
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 165
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    .line 168
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 169
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 172
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mDormantOnOff:Z

    .line 173
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mDormantDisableLED:Z

    .line 174
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mDormantAlways:Z

    .line 175
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mSetDormantAlarm:Z

    .line 176
    iput v2, p0, Lcom/android/server/BatteryService;->mDormantStartMinutes:I

    .line 177
    iput v2, p0, Lcom/android/server/BatteryService;->mDormantEndMinutes:I

    .line 179
    iput v3, p0, Lcom/android/server/BatteryService;->mBatteryOnline:I

    .line 180
    iput v4, p0, Lcom/android/server/BatteryService;->mBatteryChargetype:I

    .line 181
    iput v4, p0, Lcom/android/server/BatteryService;->mBatteryCurrentavg:I

    .line 187
    new-instance v2, Lcom/android/server/BatteryService$1;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    new-instance v2, Lcom/android/server/BatteryService$2;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mPowerSupplyObserver:Landroid/os/UEventObserver;

    .line 365
    new-instance v2, Lcom/android/server/BatteryService$3;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    .line 280
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 281
    new-instance v2, Lcom/android/server/BatteryService$Led;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 282
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 284
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e0017

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 286
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e0018

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 288
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e0019

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 291
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 292
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v2, "led_indicator_charing"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 293
    const-string v2, "led_indicator_low_battery"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 294
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Led Charging Settings = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Led Low Battery Settings = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v2, Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$LedSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    .line 298
    const-string v2, "led_indicator_charing"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 299
    const-string v2, "led_indicator_low_battery"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 301
    new-instance v2, Lcom/android/server/BatteryService$DormantSettingsObserver;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$DormantSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mDormantSettingsObserver:Lcom/android/server/BatteryService$DormantSettingsObserver;

    .line 302
    const-string v2, "dormant_switch_onoff"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mDormantSettingsObserver:Lcom/android/server/BatteryService$DormantSettingsObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 303
    const-string v2, "dormant_disable_led_indicator"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mDormantSettingsObserver:Lcom/android/server/BatteryService$DormantSettingsObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 304
    const-string v2, "dormant_always"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mDormantSettingsObserver:Lcom/android/server/BatteryService$DormantSettingsObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 305
    const-string v2, "dormant_start_hour"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mDormantSettingsObserver:Lcom/android/server/BatteryService$DormantSettingsObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 306
    const-string v2, "dormant_start_min"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mDormantSettingsObserver:Lcom/android/server/BatteryService$DormantSettingsObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 307
    const-string v2, "dormant_end_hour"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mDormantSettingsObserver:Lcom/android/server/BatteryService$DormantSettingsObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 308
    const-string v2, "dormant_end_min"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mDormantSettingsObserver:Lcom/android/server/BatteryService$DormantSettingsObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 310
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    .local v1, filter:Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 312
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v2, "com.android.server.BatteryService.action.DORMANT_START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v2, "com.android.server.BatteryService.action.DORMANT_END"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    iget-object v2, p0, Lcom/android/server/BatteryService;->mPowerSupplyObserver:Landroid/os/UEventObserver;

    const-string v3, "SUBSYSTEM=power_supply"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 322
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/server/BatteryService;->mInvalidChargerObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    .line 328
    return-void

    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_1
    move v2, v4

    .line 292
    goto/16 :goto_0

    :cond_2
    move v3, v4

    .line 293
    goto/16 :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/BatteryService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/BatteryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/BatteryService;->mDormantStartMinutes:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/BatteryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/BatteryService;->mDormantEndMinutes:I

    return v0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/server/BatteryService;->model:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/BatteryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/BatteryService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mDormantOnOff:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mDormantOnOff:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/BatteryService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mDormantDisableLED:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mDormantDisableLED:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mDormantAlways:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mDormantAlways:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->setDormantAlarm(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/BatteryService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/BatteryService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    return p1
.end method

.method private final getIcon(I)I
    .locals 4
    .parameter "level"

    .prologue
    const v0, 0x10806e5

    const v1, 0x10806d5

    .line 723
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 735
    :cond_0
    :goto_0
    return v0

    .line 725
    :cond_1
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 726
    goto :goto_0

    .line 727
    :cond_2
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 729
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    :cond_4
    move v0, v1

    .line 732
    goto :goto_0

    .line 735
    :cond_5
    const v0, 0x10806f3

    goto :goto_0
.end method

.method private final isOverCurrent()Z
    .locals 2

    .prologue
    .line 740
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryCurrentavg:I

    if-ltz v0, :cond_0

    .line 741
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "isOverCurrent : not overcurrent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v0, 0x0

    .line 745
    :goto_0
    return v0

    .line 744
    :cond_0
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "isOverCurrent : overcurrent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final logBatteryStats()V
    .locals 11

    .prologue
    .line 657
    const-string v7, "batteryinfo"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 658
    .local v0, batteryInfoService:Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 661
    .local v1, db:Landroid/os/DropBoxManager;
    if-eqz v1, :cond_0

    const-string v7, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v7}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 663
    const/4 v2, 0x0

    .line 664
    .local v2, dumpFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 667
    .local v4, dumpStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/batteryinfo.dump"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 668
    .end local v2           #dumpFile:Ljava/io/File;
    .local v3, dumpFile:Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 669
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .local v5, dumpStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 670
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 673
    const-string v7, "BATTERY_DISCHARGE_INFO"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v3, v8}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 680
    if-eqz v5, :cond_2

    .line 682
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 687
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_7

    .line 688
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_0

    .line 683
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 684
    .local v6, e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 674
    .end local v3           #dumpFile:Ljava/io/File;
    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #dumpFile:Ljava/io/File;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 675
    .local v6, e:Landroid/os/RemoteException;
    :goto_2
    :try_start_4
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 680
    if-eqz v4, :cond_3

    .line 682
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 687
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 688
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 683
    .restart local v6       #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 684
    .local v6, e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 676
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 677
    .restart local v6       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 680
    if-eqz v4, :cond_4

    .line 682
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 687
    :cond_4
    :goto_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 688
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 683
    :catch_4
    move-exception v6

    .line 684
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 680
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_5

    .line 682
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 687
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_6

    .line 688
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v7

    .line 683
    :catch_5
    move-exception v6

    .line 684
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "failed to close dumpsys output stream"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 680
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_6

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_6

    .line 676
    .end local v2           #dumpFile:Ljava/io/File;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_6
    move-exception v6

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_4

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_4

    .line 674
    .end local v2           #dumpFile:Ljava/io/File;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_8
    move-exception v6

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_2

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v6

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_2

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :cond_7
    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_0
.end method

.method private final logOutlier(J)V
    .locals 10
    .parameter "duration"

    .prologue
    .line 695
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 696
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v7, "battery_discharge_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 698
    .local v2, dischargeThresholdString:Ljava/lang/String;
    const-string v7, "battery_discharge_duration_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 701
    .local v5, durationThresholdString:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    .line 703
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 704
    .local v3, durationThreshold:J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 705
    .local v1, dischargeThreshold:I
    cmp-long v7, p1, v3

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    sub-int/2addr v7, v8

    if-lt v7, v1, :cond_0

    .line 708
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStats()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    .end local v1           #dischargeThreshold:I
    .end local v3           #durationThreshold:J
    :cond_0
    :goto_0
    return-void

    .line 714
    :catch_0
    move-exception v6

    .line 715
    .local v6, e:Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native native_update()V
.end method

.method private processValues()V
    .locals 15

    .prologue
    .line 428
    const/4 v9, 0x0

    .line 429
    .local v9, logOutlier:Z
    const-wide/16 v7, 0x0

    .line 431
    .local v7, dischargeDuration:J
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 432
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v0, :cond_10

    .line 433
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 442
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v6, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_2
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPower()V

    .line 452
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryOnline:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryChargetype:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryChargetype:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryCurrentavg:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryCurrentavg:I

    if-eq v0, v1, :cond_e

    .line 464
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_1

    .line 465
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_12

    .line 470
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-eq v0, v1, :cond_1

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v7, v0, v2

    .line 472
    const/4 v9, 0x1

    .line 473
    const/16 v0, 0xaaa

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 476
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 484
    :cond_1
    :goto_3
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_3

    .line 488
    :cond_2
    const/16 v1, 0xaa3

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 492
    :cond_3
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v0, v1, :cond_5

    .line 495
    :cond_4
    const/16 v0, 0xaa2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 498
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_6

    .line 502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v7, v0, v2

    .line 503
    const/4 v9, 0x1

    .line 506
    :cond_6
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_14

    const/4 v11, 0x1

    .line 507
    .local v11, plugged:Z
    :goto_5
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_15

    const/4 v10, 0x1

    .line 520
    .local v10, oldPlugged:Z
    :goto_6
    if-nez v11, :cond_16

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_16

    if-nez v10, :cond_7

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v0, v1, :cond_16

    :cond_7
    const/4 v13, 0x1

    .line 525
    .local v13, sendBatteryLow:Z
    :goto_7
    if-nez v11, :cond_17

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_17

    if-nez v10, :cond_8

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v0, :cond_17

    :cond_8
    const/4 v12, 0x1

    .line 530
    .local v12, sendBatteryCritical:Z
    :goto_8
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendIntent()V

    .line 535
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 536
    .local v14, statusIntent:Landroid/content/Intent;
    const/high16 v0, 0x800

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 537
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_18

    .line 538
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 556
    :cond_9
    :goto_9
    if-nez v13, :cond_a

    if-nez v12, :cond_a

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    if-eqz v0, :cond_b

    .line 557
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-nez v0, :cond_19

    .line 558
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "Battery is (critical) low but boot is not completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 560
    const/4 v13, 0x0

    .line 561
    const/4 v12, 0x0

    .line 577
    :cond_b
    :goto_a
    if-eqz v12, :cond_1e

    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 579
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 581
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "Battery is critical and send ACTION_BATTERY_LOW"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_c
    :goto_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 598
    if-eqz v9, :cond_d

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_d

    .line 599
    invoke-direct {p0, v7, v8}, Lcom/android/server/BatteryService;->logOutlier(J)V

    .line 602
    :cond_d
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 603
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 604
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 605
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 606
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 607
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 608
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 609
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 610
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 611
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryOnline:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    .line 612
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryChargetype:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryChargetype:I

    .line 613
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryCurrentavg:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryCurrentavg:I

    .line 615
    .end local v10           #oldPlugged:Z
    .end local v11           #plugged:Z
    .end local v12           #sendBatteryCritical:Z
    .end local v13           #sendBatteryLow:Z
    .end local v14           #statusIntent:Landroid/content/Intent;
    :cond_e
    return-void

    .line 431
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 434
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v0, :cond_11

    .line 435
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    .line 437
    :cond_11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    .line 478
    :cond_12
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_1

    .line 480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 481
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    goto/16 :goto_3

    .line 488
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 506
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 507
    .restart local v11       #plugged:Z
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 520
    .restart local v10       #oldPlugged:Z
    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 525
    .restart local v13       #sendBatteryLow:Z
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 541
    .restart local v12       #sendBatteryCritical:Z
    .restart local v14       #statusIntent:Landroid/content/Intent;
    :cond_18
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_9

    .line 542
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 562
    :cond_19
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    if-eqz v0, :cond_1b

    if-nez v11, :cond_1a

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v0, v1, :cond_1b

    .line 563
    :cond_1a
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "Boot is completed now but battery is not low"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 565
    const/4 v13, 0x0

    .line 566
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 568
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    if-eqz v0, :cond_1c

    .line 569
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "Boot was not completed but boot is completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 572
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_1d

    const/4 v13, 0x1

    .line 573
    :goto_c
    iget-boolean v12, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    goto/16 :goto_a

    .line 572
    :cond_1d
    const/4 v13, 0x0

    goto :goto_c

    .line 582
    :cond_1e
    if-eqz v13, :cond_1f

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 584
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 586
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "Battery is low and send ACTION_BATTERY_LOW"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 587
    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_c

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 589
    const-string v0, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 591
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "Battery is recovered and send ACTION_BATTERY_OKAY"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 445
    .end local v10           #oldPlugged:Z
    .end local v11           #plugged:Z
    .end local v12           #sendBatteryCritical:Z
    .end local v13           #sendBatteryLow:Z
    .end local v14           #statusIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method private final sendIntent()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 619
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x6000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 623
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->getIcon(I)I

    move-result v0

    .line 625
    .local v0, icon:I
    const-string v2, "status"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string v2, "health"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    const-string v2, "present"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    const-string v2, "level"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 629
    const-string v2, "scale"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 630
    const-string v2, "icon-small"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 631
    const-string v2, "plugged"

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    const-string v2, "voltage"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 633
    const-string v2, "temperature"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 634
    const-string v2, "technology"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    const-string v2, "invalid_charger"

    iget v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 636
    const-string v2, "online"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryOnline:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    const-string v2, "charge_type"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryChargetype:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    const-string v2, "current_avg"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryCurrentavg:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " health:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " present:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " voltage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " temperature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " technology: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AC powered:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " USB powered:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " icon:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " invalid charger:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " online:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryOnline:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " charge type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryChargetype:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current avg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryCurrentavg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method private final setDormantAlarm(II)V
    .locals 20
    .parameter "dormantStartMinutes"
    .parameter "dormantEndMinutes"

    .prologue
    .line 750
    new-instance v19, Landroid/content/Intent;

    const-string v3, "com.android.server.BatteryService.action.DORMANT_START"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v19, dormantStartIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 752
    .local v8, dormantStartPendingIntent:Landroid/app/PendingIntent;
    new-instance v18, Landroid/content/Intent;

    const-string v3, "com.android.server.BatteryService.action.DORMANT_END"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .local v18, dormantEndIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 754
    .local v15, dormantEndPendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 755
    .local v2, alarmManager:Landroid/app/AlarmManager;
    if-nez v2, :cond_1

    .line 756
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "AlarmManager is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mDormantAlways:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mDormantOnOff:Z

    if-nez v3, :cond_3

    .line 761
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mSetDormantAlarm:Z

    if-eqz v3, :cond_0

    .line 762
    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 763
    invoke-virtual {v2, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 764
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mSetDormantAlarm:Z

    goto :goto_0

    .line 766
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mSetDormantAlarm:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mDormantStartMinutes:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mDormantEndMinutes:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    .line 769
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 770
    .local v16, calendar:Ljava/util/Calendar;
    const/16 v3, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    const/16 v4, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int v17, v3, v4

    .line 772
    .local v17, currentMinutes:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mSetDormantAlarm:Z

    if-eqz v3, :cond_5

    .line 773
    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 774
    invoke-virtual {v2, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 777
    :cond_5
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/BatteryService;->mDormantStartMinutes:I

    .line 778
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/BatteryService;->mDormantEndMinutes:I

    .line 780
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mDormantStartMinutes:I

    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    .line 781
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/BatteryService;->mDormantStartMinutes:I

    sub-int v6, v6, v17

    const v7, 0xea60

    mul-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 786
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/BatteryService;->mDormantEndMinutes:I

    move/from16 v0, v17

    if-ge v0, v3, :cond_7

    .line 787
    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/BatteryService;->mDormantEndMinutes:I

    sub-int v5, v5, v17

    add-int/lit8 v5, v5, 0x1

    const v6, 0xea60

    mul-int/2addr v5, v6

    int-to-long v5, v5

    add-long v11, v3, v5

    const-wide/32 v13, 0x5265c00

    move-object v9, v2

    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 792
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mSetDormantAlarm:Z

    goto/16 :goto_0

    .line 783
    :cond_6
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/BatteryService;->mDormantStartMinutes:I

    sub-int v6, v17, v6

    rsub-int v6, v6, 0x5a0

    const v7, 0xea60

    mul-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 789
    :cond_7
    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/BatteryService;->mDormantEndMinutes:I

    sub-int v5, v17, v5

    rsub-int v5, v5, 0x5a0

    add-int/lit8 v5, v5, 0x1

    const v6, 0xea60

    mul-int/2addr v5, v6

    int-to-long v5, v5

    add-long v11, v3, v5

    const-wide/32 v13, 0x5265c00

    move-object v9, v2

    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_2
.end method

.method private final shutdownIfNoPower()V
    .locals 3

    .prologue
    .line 391
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/android/server/BatteryService;->isOverCurrent()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    const-string v1, "persist.sys.shutdown"

    const-string v2, "LBSD"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 403
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 404
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "No power and Send ACTION_REQUEST_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final shutdownIfOverTemp()V
    .locals 3

    .prologue
    .line 411
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    const/16 v2, 0x2a8

    if-le v1, v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 414
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 415
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 417
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final declared-synchronized update()V
    .locals 2

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "update start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct {p0}, Lcom/android/server/BatteryService;->native_update()V

    .line 424
    invoke-direct {p0}, Lcom/android/server/BatteryService;->processValues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump Battery service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    if-eqz v0, :cond_2

    const-string v0, "-a"

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    :cond_2
    monitor-enter p0

    .line 809
    :try_start_0
    const-string v0, "Current Battery Service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AC powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USB powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  health: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  present: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    const-string v0, "  scale: 100"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  voltage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  temperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  technology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final getBatteryLevel()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    return v0
.end method

.method final getPlugType()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method final isPowered()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 332
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isPowered(I)Z
    .locals 4
    .parameter "plugTypeSet"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 338
    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v3, v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v1

    .line 341
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 342
    goto :goto_0

    .line 344
    :cond_2
    const/4 v0, 0x0

    .line 345
    .local v0, plugTypeBit:I
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v3, :cond_3

    .line 346
    or-int/lit8 v0, v0, 0x1

    .line 348
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v3, :cond_4

    .line 349
    or-int/lit8 v0, v0, 0x2

    .line 351
    :cond_4
    and-int v3, p1, v0

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method systemReady()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPower()V

    .line 385
    return-void
.end method
