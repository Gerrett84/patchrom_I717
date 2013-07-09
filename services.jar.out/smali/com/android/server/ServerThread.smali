.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1243
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1245
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1247
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 123
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    return-void
.end method

.method public run()V
    .locals 150

    .prologue
    .line 130
    const-string v3, "SystemServer"

    const-string v9, "!@SystemServer Thread begins..."

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v3, "BUILD_DESC"

    const-string v9, "ro.build.description"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 137
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 139
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 142
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 143
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 147
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    .line 149
    .local v122, shutdownAction:Ljava/lang/String;
    if-eqz v122, :cond_0

    invoke-virtual/range {v122 .. v122}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 150
    const/4 v3, 0x0

    move-object/from16 v0, v122

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_1b

    const/16 v116, 0x1

    .line 153
    .local v116, reboot:Z
    :goto_0
    invoke-virtual/range {v122 .. v122}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_1c

    .line 154
    const/4 v3, 0x1

    invoke-virtual/range {v122 .. v122}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v122

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v115

    .line 159
    .local v115, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v116

    move-object/from16 v1, v115

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 163
    .end local v115           #reason:Ljava/lang/String;
    .end local v116           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 164
    .local v86, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v85, 0x0

    .line 166
    .local v85, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 168
    .local v16, headless:Z
    const/16 v44, 0x0

    .line 169
    .local v44, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v66, 0x0

    .line 170
    .local v66, contentService:Landroid/content/ContentService;
    const/16 v93, 0x0

    .line 171
    .local v93, lights:Lcom/android/server/LightsService;
    const/16 v114, 0x0

    .line 172
    .local v114, power:Lcom/android/server/PowerManagerService;
    const/16 v54, 0x0

    .line 173
    .local v54, battery:Lcom/android/server/BatteryService;
    const/16 v137, 0x0

    .line 174
    .local v137, vibrator:Lcom/android/server/VibratorService;
    const/16 v46, 0x0

    .line 175
    .local v46, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 176
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 177
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v105, 0x0

    .line 178
    .local v105, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v63, 0x0

    .line 179
    .local v63, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v147, 0x0

    .line 180
    .local v147, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v144, 0x0

    .line 182
    .local v144, wifi:Lcom/android/server/WifiService;
    const/16 v146, 0x0

    .line 184
    .local v146, wifiOffloadService:Lcom/android/server/WifiOffloadService;
    const/16 v121, 0x0

    .line 185
    .local v121, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v142, 0x0

    .line 186
    .local v142, wfd:Lcom/samsung/wfd/WfdService;
    const/16 v113, 0x0

    .line 187
    .local v113, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 188
    .local v4, context:Landroid/content/Context;
    const/16 v149, 0x0

    .line 189
    .local v149, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v55, 0x0

    .line 190
    .local v55, bluetooth:Landroid/server/BluetoothService;
    const/16 v57, 0x0

    .line 191
    .local v57, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v51, 0x0

    .line 192
    .local v51, avrcp:Landroid/server/AvrcpStubService;
    const/16 v78, 0x0

    .line 193
    .local v78, dock:Lcom/android/server/DockObserver;
    const/16 v125, 0x0

    .line 194
    .local v125, thermistor:Lcom/android/server/ThermistorObserver;
    const/16 v135, 0x0

    .line 195
    .local v135, usb:Lcom/android/server/usb/UsbService;
    const/16 v119, 0x0

    .line 196
    .local v119, serial:Lcom/android/server/SerialService;
    const/16 v133, 0x0

    .line 197
    .local v133, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v117, 0x0

    .line 198
    .local v117, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v127, 0x0

    .line 199
    .local v127, throttle:Lcom/android/server/ThrottleService;
    const/16 v107, 0x0

    .line 200
    .local v107, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v60, 0x0

    .line 201
    .local v60, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v91, 0x0

    .line 202
    .local v91, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v72, 0x0

    .line 203
    .local v72, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    const/16 v69, 0x0

    .line 206
    .local v69, cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    const/16 v74, 0x0

    .line 210
    .local v74, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 213
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5f

    .line 215
    .end local v114           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 217
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static/range {v85 .. v85}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 220
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 222
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    const-string v3, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v3, "telephony.msim.registry"

    new-instance v9, Lcom/android/server/MSimTelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 228
    :cond_1
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 232
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 234
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .line 237
    .local v71, cryptState:Ljava/lang/String;
    const/16 v111, 0x0

    .line 238
    .local v111, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 239
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/16 v111, 0x1

    .line 247
    :cond_2
    :goto_3
    const-string v3, "SystemServer"

    const-string v9, "!@beginofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-eqz v85, :cond_1f

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v111

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v113

    .line 253
    const-string v3, "SystemServer"

    const-string v9, "!@endofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    const/16 v87, 0x0

    .line 257
    .local v87, firstBoot:Z
    :try_start_2
    invoke-interface/range {v113 .. v113}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v87

    .line 261
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 263
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 267
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v45, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 269
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .local v45, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_5
    const-string v3, "account"

    move-object/from16 v0, v45

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_69
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_60

    move-object/from16 v44, v45

    .line 274
    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_6
    const-string v3, ""

    const-string v9, "KT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v3

    if-eqz v3, :cond_3

    .line 276
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "KT UCA Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v3, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v4}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 284
    :cond_3
    :goto_7
    :try_start_8
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v3, 0x1

    move/from16 v0, v85

    if-ne v0, v3, :cond_20

    const/4 v3, 0x1

    :goto_8
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v66

    .line 291
    new-instance v75, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v75

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 293
    .end local v74           #dEncService:Lcom/android/server/DirEncryptService;
    .local v75, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_9
    sget-boolean v3, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v3, :cond_4

    .line 294
    const-string v3, "DirEncryptService"

    move-object/from16 v0, v75

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_61

    :cond_4
    move-object/from16 v74, v75

    .line 303
    .end local v75           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v74       #dEncService:Lcom/android/server/DirEncryptService;
    :goto_9
    :try_start_a
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 306
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v94, Lcom/android/server/LightsService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 309
    .end local v93           #lights:Lcom/android/server/LightsService;
    .local v94, lights:Lcom/android/server/LightsService;
    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v94

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_62

    .line 311
    .end local v54           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_c
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 313
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v138, Lcom/android/server/VibratorService;

    move-object/from16 v0, v138

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_63

    .line 315
    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .local v138, vibrator:Lcom/android/server/VibratorService;
    :try_start_d
    const-string v3, "vibrator"

    move-object/from16 v0, v138

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 319
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v94

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 321
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_64

    .line 323
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_e
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 325
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 329
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v9, "android.hardware.sensor.hub"

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 330
    const-string v3, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v3, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v4}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 334
    :cond_5
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v3, 0x1

    move/from16 v0, v85

    if-eq v0, v3, :cond_21

    const/4 v3, 0x1

    move v9, v3

    :goto_a
    if-nez v87, :cond_22

    const/4 v3, 0x1

    :goto_b
    move/from16 v0, v111

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v149

    .line 338
    const-string v3, "window"

    move-object/from16 v0, v149

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 339
    invoke-virtual/range {v149 .. v149}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v91

    .line 340
    const-string v3, "input"

    move-object/from16 v0, v91

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 342
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v149

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 346
    new-instance v3, Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {v3, v4}, Lcom/android/server/am/MultiWindowManagerService;-><init>(Landroid/content/Context;)V

    .line 352
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 353
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_c
    new-instance v70, Lcom/android/server/CpuGovernorService;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Lcom/android/server/CpuGovernorService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4

    .line 383
    .end local v69           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .local v70, cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    if-nez v70, :cond_6

    .line 384
    :try_start_f
    const-string v3, "SystemServer"

    const-string v9, "CpuGovernorService failed to start"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_68

    :cond_6
    move-object/from16 v69, v70

    .end local v70           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v69       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    move-object/from16 v137, v138

    .end local v138           #vibrator:Lcom/android/server/VibratorService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v93, v94

    .line 392
    .end local v71           #cryptState:Ljava/lang/String;
    .end local v87           #firstBoot:Z
    .end local v94           #lights:Lcom/android/server/LightsService;
    .end local v111           #onlyCore:Z
    .restart local v93       #lights:Lcom/android/server/LightsService;
    :goto_d
    const/16 v76, 0x0

    .line 394
    .local v76, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v83, 0x0

    .line 396
    .local v83, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v123, 0x0

    .line 397
    .local v123, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v89, 0x0

    .line 398
    .local v89, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v47, 0x0

    .line 399
    .local v47, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v109, 0x0

    .line 400
    .local v109, notification:Lcom/android/server/NotificationManagerService;
    const/16 v140, 0x0

    .line 401
    .local v140, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v95, 0x0

    .line 402
    .local v95, location:Lcom/android/server/LocationManagerService;
    const/16 v67, 0x0

    .line 403
    .local v67, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v129, 0x0

    .line 404
    .local v129, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v97, 0x0

    .line 405
    .local v97, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v80, 0x0

    .line 408
    .local v80, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v85

    if-eq v0, v3, :cond_7

    .line 410
    :try_start_10
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v90, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v90

    move-object/from16 v1, v149

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    .line 412
    .end local v89           #imm:Lcom/android/server/InputMethodManagerService;
    .local v90, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_11
    const-string v3, "input_method"

    move-object/from16 v0, v90

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5e

    move-object/from16 v89, v90

    .line 418
    .end local v90           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v89       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_e
    :try_start_12
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6

    .line 428
    :cond_7
    :goto_f
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "CustomeFrequencyManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v73, Lcom/android/server/CustomFrequencyManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v4}, Lcom/android/server/CustomFrequencyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_7

    .line 430
    .end local v72           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .local v73, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :try_start_14
    const-string v3, "CustomFrequencyManagerService"

    move-object/from16 v0, v73

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_5d

    move-object/from16 v72, v73

    .line 436
    .end local v73           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v72       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :goto_10
    :try_start_15
    invoke-virtual/range {v149 .. v149}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_8

    .line 442
    :goto_11
    :try_start_16
    invoke-interface/range {v113 .. v113}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_9

    .line 448
    :goto_12
    :try_start_17
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10404ea

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_5c

    .line 455
    :goto_13
    const/4 v3, 0x1

    move/from16 v0, v85

    if-eq v0, v3, :cond_27

    .line 456
    const/16 v103, 0x0

    .line 457
    .local v103, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 463
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v104, Lcom/android/server/MountService;

    move-object/from16 v0, v104

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_a

    .line 465
    .end local v103           #mountService:Lcom/android/server/MountService;
    .local v104, mountService:Lcom/android/server/MountService;
    :try_start_19
    const-string v3, "mount"

    move-object/from16 v0, v104

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_5b

    move-object/from16 v103, v104

    .line 473
    .end local v104           #mountService:Lcom/android/server/MountService;
    .restart local v103       #mountService:Lcom/android/server/MountService;
    :cond_8
    :goto_14
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    if-eqz v74, :cond_9

    .line 475
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_b

    .line 484
    :cond_9
    :goto_15
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v98, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v98

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_c

    .line 486
    .end local v97           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v98, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_1c
    const-string v3, "lock_settings"

    move-object/from16 v0, v98

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_5a

    move-object/from16 v97, v98

    .line 492
    .end local v98           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v97       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_16
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v77, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v77

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_d

    .line 494
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v77, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1e
    const-string v3, "device_policy"

    move-object/from16 v0, v77

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_59

    move-object/from16 v76, v77

    .line 501
    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_17
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v84, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v113

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v3, v0

    move-object/from16 v0, v84

    invoke-direct {v0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_e

    .line 503
    .end local v83           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v84, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_20
    const-string v3, "enterprise_policy"

    move-object/from16 v0, v84

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 504
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_58

    move-object/from16 v83, v84

    .line 511
    .end local v84           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v83       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_18
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v124, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v124

    move-object/from16 v1, v149

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_f

    .line 513
    .end local v123           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v124, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_22
    const-string v3, "statusbar"

    move-object/from16 v0, v124

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_57

    move-object/from16 v123, v124

    .line 519
    .end local v124           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v123       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_19
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_10

    .line 530
    :goto_1a
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v3, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v4}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_11

    .line 538
    :goto_1b
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 540
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_12

    .line 546
    :goto_1c
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-instance v130, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v130

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_13

    .line 548
    .end local v129           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v130, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_27
    const-string v3, "textservices"

    move-object/from16 v0, v130

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_56

    move-object/from16 v129, v130

    .line 554
    .end local v130           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v129       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_1d
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v106, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v106

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_14

    .line 556
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v106, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_29
    const-string v3, "netstats"

    move-object/from16 v0, v106

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_55

    move-object/from16 v12, v106

    .line 562
    .end local v106           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1e
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_15

    .line 566
    .end local v105           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_2b
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_54

    .line 572
    :goto_1f
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v148, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v148

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_16

    .line 574
    .end local v147           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v148, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2d
    const-string v3, "wifip2p"

    move-object/from16 v0, v148

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_53

    move-object/from16 v147, v148

    .line 580
    .end local v148           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v147       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_20
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v145, Lcom/android/server/WifiService;

    move-object/from16 v0, v145

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_17

    .line 582
    .end local v144           #wifi:Lcom/android/server/WifiService;
    .local v145, wifi:Lcom/android/server/WifiService;
    :try_start_2f
    const-string v3, "wifi"

    move-object/from16 v0, v145

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_52

    move-object/from16 v144, v145

    .line 604
    .end local v145           #wifi:Lcom/android/server/WifiService;
    .restart local v144       #wifi:Lcom/android/server/WifiService;
    :goto_21
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Display Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v143, Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, v143

    invoke-direct {v0, v4}, Lcom/samsung/wfd/WfdService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_18

    .line 606
    .end local v142           #wfd:Lcom/samsung/wfd/WfdService;
    .local v143, wfd:Lcom/samsung/wfd/WfdService;
    :try_start_31
    const-string v3, "wfd"

    move-object/from16 v0, v143

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_51

    move-object/from16 v142, v143

    .line 611
    .end local v143           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v142       #wfd:Lcom/samsung/wfd/WfdService;
    :goto_22
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v64, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v64

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_19

    .line 614
    .end local v63           #connectivity:Lcom/android/server/ConnectivityService;
    .local v64, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_33
    const-string v3, "connectivity"

    move-object/from16 v0, v64

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 615
    move-object/from16 v0, v64

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 616
    move-object/from16 v0, v64

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 617
    invoke-virtual/range {v144 .. v144}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 618
    invoke-virtual/range {v147 .. v147}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 619
    invoke-virtual/range {v64 .. v64}, Lcom/android/server/ConnectivityService;->startCne()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_50

    move-object/from16 v63, v64

    .line 625
    .end local v64           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v63       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_23
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v121

    .line 627
    const-string v3, "servicediscovery"

    move-object/from16 v0, v121

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1a

    .line 634
    :goto_24
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v128, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v128

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1b

    .line 636
    .end local v127           #throttle:Lcom/android/server/ThrottleService;
    .local v128, throttle:Lcom/android/server/ThrottleService;
    :try_start_36
    const-string v3, "throttle"

    move-object/from16 v0, v128

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_4f

    move-object/from16 v127, v128

    .line 643
    .end local v128           #throttle:Lcom/android/server/ThrottleService;
    .restart local v127       #throttle:Lcom/android/server/ThrottleService;
    :goto_25
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1c

    .line 655
    :goto_26
    if-eqz v103, :cond_a

    .line 657
    const-string v3, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "trigger_restart_min_framework"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 658
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 662
    :cond_a
    if-eqz v44, :cond_b

    .line 663
    :try_start_38
    invoke-virtual/range {v44 .. v44}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1d

    .line 669
    :cond_b
    :goto_27
    if-eqz v66, :cond_c

    .line 670
    :try_start_39
    invoke-virtual/range {v66 .. v66}, Landroid/content/ContentService;->systemReady()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1e

    .line 676
    :cond_c
    :goto_28
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v110, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v110

    move-object/from16 v1, v123

    move-object/from16 v2, v93

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1f

    .line 678
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .local v110, notification:Lcom/android/server/NotificationManagerService;
    :try_start_3b
    const-string v3, "notification"

    move-object/from16 v0, v110

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 679
    move-object/from16 v0, v110

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_4e

    move-object/from16 v109, v110

    .line 685
    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    :goto_29
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_20

    .line 693
    :goto_2a
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance v96, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_21

    .line 695
    .end local v95           #location:Lcom/android/server/LocationManagerService;
    .local v96, location:Lcom/android/server/LocationManagerService;
    :try_start_3e
    const-string v3, "location"

    move-object/from16 v0, v96

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_4d

    move-object/from16 v95, v96

    .line 701
    .end local v96           #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #location:Lcom/android/server/LocationManagerService;
    :goto_2b
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v68, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v68

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 703
    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v68, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_40
    const-string v3, "country_detector"

    move-object/from16 v0, v68

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_4c

    move-object/from16 v67, v68

    .line 709
    .end local v68           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v67       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_2c
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .line 717
    :goto_2d
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_24

    .line 724
    :goto_2e
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110026

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 727
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    if-nez v16, :cond_d

    .line 729
    new-instance v141, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v141

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_25

    .line 730
    .end local v140           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v141, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_44
    const-string v3, "wallpaper"

    move-object/from16 v0, v141

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_4b

    move-object/from16 v140, v141

    .line 737
    .end local v141           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v140       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_d
    :goto_2f
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 739
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_26

    .line 747
    :cond_e
    :goto_30
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    new-instance v79, Lcom/android/server/DockObserver;

    move-object/from16 v0, v79

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_27

    .end local v78           #dock:Lcom/android/server/DockObserver;
    .local v79, dock:Lcom/android/server/DockObserver;
    move-object/from16 v78, v79

    .line 755
    .end local v79           #dock:Lcom/android/server/DockObserver;
    .restart local v78       #dock:Lcom/android/server/DockObserver;
    :goto_31
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_28

    .line 763
    :goto_32
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "Thermistor Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v126, Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, v126

    invoke-direct {v0, v4, v6}, Lcom/android/server/ThermistorObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_29

    .end local v125           #thermistor:Lcom/android/server/ThermistorObserver;
    .local v126, thermistor:Lcom/android/server/ThermistorObserver;
    move-object/from16 v125, v126

    .line 771
    .end local v126           #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v125       #thermistor:Lcom/android/server/ThermistorObserver;
    :goto_33
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v136, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v136

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2a

    .line 774
    .end local v135           #usb:Lcom/android/server/usb/UsbService;
    .local v136, usb:Lcom/android/server/usb/UsbService;
    :try_start_4a
    const-string v3, "usb"

    move-object/from16 v0, v136

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_4a

    move-object/from16 v135, v136

    .line 780
    .end local v136           #usb:Lcom/android/server/usb/UsbService;
    .restart local v135       #usb:Lcom/android/server/usb/UsbService;
    :goto_34
    :try_start_4b
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    new-instance v120, Lcom/android/server/SerialService;

    move-object/from16 v0, v120

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2b

    .line 783
    .end local v119           #serial:Lcom/android/server/SerialService;
    .local v120, serial:Lcom/android/server/SerialService;
    :try_start_4c
    const-string v3, "serial"

    move-object/from16 v0, v120

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_49

    move-object/from16 v119, v120

    .line 789
    .end local v120           #serial:Lcom/android/server/SerialService;
    .restart local v119       #serial:Lcom/android/server/SerialService;
    :goto_35
    :try_start_4d
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v134, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v134

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2c

    .end local v133           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v134, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v133, v134

    .line 797
    .end local v134           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v133       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_36
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v3, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 800
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string v3, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v4}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2d

    .line 809
    :cond_f
    :goto_37
    :try_start_4f
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2e

    .line 817
    :goto_38
    :try_start_50
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v48, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2f

    .line 819
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .local v48, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_51
    const-string v3, "appwidget"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_48

    move-object/from16 v47, v48

    .line 825
    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_39
    :try_start_52
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v118, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v118

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_30

    .end local v117           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v118, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v117, v118

    .line 832
    .end local v118           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v117       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_3a
    :try_start_53
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_31

    .line 839
    :goto_3b
    :try_start_54
    const-string v3, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance v50, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    .line 841
    .local v50, atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    const-string v3, "AtCmdFwd"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_32

    .line 851
    .end local v50           #atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    :goto_3c
    :try_start_55
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_33

    .line 859
    :goto_3d
    :try_start_56
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v108, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_34

    .end local v107           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v108, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v107, v108

    .line 866
    .end local v108           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v107       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_3e
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v112

    .line 868
    .local v112, packageMgr:Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.irda_service"

    move-object/from16 v0, v112

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 870
    :try_start_57
    const-string v3, "SystemServer"

    const-string v9, "IRDA Service!! Enable the IRDA service!!"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance v92, Landroid/app/IrdaService;

    move-object/from16 v0, v92

    invoke-direct {v0, v4}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    .line 872
    .local v92, irda:Landroid/app/IrdaService;
    const-string v3, "irda"

    move-object/from16 v0, v92

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_35

    .line 878
    .end local v92           #irda:Landroid/app/IrdaService;
    :cond_10
    :goto_3f
    const-string v3, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v112

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 880
    :try_start_58
    const-string v3, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    new-instance v53, Landroid/app/BarBeamService;

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 883
    .local v53, barbeam:Landroid/app/BarBeamService;
    const-string v3, "barbeam"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_36

    .line 889
    .end local v53           #barbeam:Landroid/app/BarBeamService;
    :cond_11
    :goto_40
    const-string v3, "com.sec.feature.minimode"

    move-object/from16 v0, v112

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 891
    :try_start_59
    const-string v3, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string v100, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 894
    .local v100, minimodeFrameworkDexPath:Ljava/lang/String;
    const-string v102, "/data/dalvik-cache/minimode.dex"

    .line 896
    .local v102, minimodeGenDexPath:Ljava/lang/String;
    new-instance v88, Landroid/os/FileUtils$FileStatus;

    invoke-direct/range {v88 .. v88}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 897
    .local v88, fs:Landroid/os/FileUtils$FileStatus;
    move-object/from16 v0, v100

    move-object/from16 v1, v88

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 898
    const-string v3, "SystemServer"

    const-string v9, "This escaping dexopt of minimode.jar is only for eng build"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v100

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v102

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 900
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v102

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v100

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    new-instance v101, Ljava/io/File;

    invoke-direct/range {v101 .. v102}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 902
    .local v101, minimodeGenDexFile:Ljava/io/File;
    move-object/from16 v0, v88

    iget-wide v9, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    move-object/from16 v0, v101

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 903
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v102

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v88

    iget-wide v10, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    .end local v101           #minimodeGenDexFile:Ljava/io/File;
    :cond_12
    new-instance v59, Ldalvik/system/DexClassLoader;

    const-string v3, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v59

    invoke-direct {v0, v3, v9, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 911
    .local v59, cl:Ljava/lang/ClassLoader;
    const-string v3, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v42

    .line 912
    .local v42, MiniModeAppManagerServiceClass:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v3, v9

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v43

    .line 914
    .local v43, MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_37

    .line 924
    .end local v42           #MiniModeAppManagerServiceClass:Ljava/lang/Class;
    .end local v43           #MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    .end local v59           #cl:Ljava/lang/ClassLoader;
    .end local v88           #fs:Landroid/os/FileUtils$FileStatus;
    .end local v100           #minimodeFrameworkDexPath:Ljava/lang/String;
    .end local v102           #minimodeGenDexPath:Ljava/lang/String;
    :cond_13
    :goto_41
    :try_start_5a
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    new-instance v61, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_38

    .line 926
    .end local v60           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v61, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_5b
    const-string v3, "commontime_management"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_47

    move-object/from16 v60, v61

    .line 932
    .end local v61           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v60       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_42
    :try_start_5c
    const-string v3, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v3, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v4}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_39

    .line 940
    :goto_43
    :try_start_5d
    const-string v3, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string v3, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3a

    .line 949
    :goto_44
    :try_start_5e
    const-string v3, "samsung.facedetection_service"

    new-instance v9, Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-direct {v9, v4}, Lcom/sec/android/facedetection/FaceDetectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3b

    .line 956
    :goto_45
    const-string v3, "ro.tvout.enable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v131

    .line 957
    .local v131, tvoutEnable:Ljava/lang/String;
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tvout Service ro.tvout.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v131

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v3, "false"

    move-object/from16 v0, v131

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 961
    :try_start_5f
    const-string v3, "SystemServer"

    const-string v9, "Starting Tvout Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/16 v132, 0x0

    .line 963
    .local v132, tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "com.android.server.TvoutService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v132

    .line 964
    if-nez v132, :cond_25

    .line 965
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service not exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3c

    .line 980
    .end local v132           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_14
    :goto_46
    :try_start_60
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3d

    .line 986
    :goto_47
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111003a

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 989
    :try_start_61
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-instance v81, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v81

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3e

    .line 992
    .end local v80           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v81, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_62
    const-string v3, "dreams"

    move-object/from16 v0, v81

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_46

    move-object/from16 v80, v81

    .line 1001
    .end local v81           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v103           #mountService:Lcom/android/server/MountService;
    .end local v112           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v131           #tvoutEnable:Ljava/lang/String;
    .restart local v80       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_15
    :goto_48
    invoke-virtual/range {v149 .. v149}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v29

    .line 1002
    .local v29, safeMode:Z
    if-eqz v29, :cond_26

    .line 1003
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1005
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1007
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1016
    :goto_49
    :try_start_63
    invoke-virtual/range {v137 .. v137}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3f

    .line 1022
    :goto_4a
    :try_start_64
    invoke-virtual/range {v97 .. v97}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_40

    .line 1027
    :goto_4b
    if-eqz v76, :cond_16

    .line 1029
    :try_start_65
    invoke-virtual/range {v76 .. v76}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_41

    .line 1036
    :cond_16
    :goto_4c
    if-eqz v83, :cond_17

    .line 1037
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1038
    const-string v3, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_17
    if-eqz v109, :cond_18

    .line 1044
    :try_start_66
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_42

    .line 1051
    :cond_18
    :goto_4d
    :try_start_67
    invoke-virtual/range {v149 .. v149}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_43

    .line 1056
    :goto_4e
    if-eqz v29, :cond_19

    .line 1057
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1063
    :cond_19
    invoke-virtual/range {v149 .. v149}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v62

    .line 1064
    .local v62, config:Landroid/content/res/Configuration;
    new-instance v99, Landroid/util/DisplayMetrics;

    invoke-direct/range {v99 .. v99}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1065
    .local v99, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v139

    check-cast v139, Landroid/view/WindowManager;

    .line 1066
    .local v139, w:Landroid/view/WindowManager;
    invoke-interface/range {v139 .. v139}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v99

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1067
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v62

    move-object/from16 v1, v99

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1069
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 1071
    :try_start_68
    invoke-interface/range {v113 .. v113}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_44

    .line 1077
    :goto_4f
    invoke-virtual/range {v93 .. v93}, Lcom/android/server/LightsService;->systemReady()V

    .line 1081
    move-object/from16 v17, v4

    .line 1082
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 1083
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 1084
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 1085
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 1086
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v63

    .line 1087
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v78

    .line 1088
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v125

    .line 1089
    .local v24, thermistorF:Lcom/android/server/ThermistorObserver;
    move-object/from16 v25, v135

    .line 1090
    .local v25, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v35, v127

    .line 1091
    .local v35, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v26, v133

    .line 1092
    .local v26, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v28, v47

    .line 1093
    .local v28, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v30, v140

    .line 1094
    .local v30, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v31, v89

    .line 1095
    .local v31, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v27, v117

    .line 1096
    .local v27, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v33, v95

    .line 1097
    .local v33, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v34, v67

    .line 1098
    .local v34, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v36, v107

    .line 1099
    .local v36, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v37, v60

    .line 1100
    .local v37, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v38, v129

    .line 1101
    .local v38, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v32, v123

    .line 1102
    .local v32, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v39, v80

    .line 1103
    .local v39, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v40, v91

    .line 1104
    .local v40, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v41, v55

    .line 1111
    .local v41, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v41}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/ThermistorObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1231
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1232
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_1a
    const-string v3, "SystemServer"

    const-string v9, "!@End of System ServerThread"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1238
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    return-void

    .line 150
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #thermistorF:Lcom/android/server/ThermistorObserver;
    .end local v25           #usbF:Lcom/android/server/usb/UsbService;
    .end local v26           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v27           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v28           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v29           #safeMode:Z
    .end local v30           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v31           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v32           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v33           #locationF:Lcom/android/server/LocationManagerService;
    .end local v34           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v35           #throttleF:Lcom/android/server/ThrottleService;
    .end local v36           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v37           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v38           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v39           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v40           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v41           #bluetoothF:Landroid/server/BluetoothService;
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v51           #avrcp:Landroid/server/AvrcpStubService;
    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v60           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v62           #config:Landroid/content/res/Configuration;
    .end local v63           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v66           #contentService:Landroid/content/ContentService;
    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v69           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .end local v72           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .end local v74           #dEncService:Lcom/android/server/DirEncryptService;
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v78           #dock:Lcom/android/server/DockObserver;
    .end local v80           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v83           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v85           #factoryTest:I
    .end local v86           #factoryTestStr:Ljava/lang/String;
    .end local v89           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v91           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #lights:Lcom/android/server/LightsService;
    .end local v95           #location:Lcom/android/server/LocationManagerService;
    .end local v97           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v99           #metrics:Landroid/util/DisplayMetrics;
    .end local v107           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .end local v113           #pm:Landroid/content/pm/IPackageManager;
    .end local v117           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v119           #serial:Lcom/android/server/SerialService;
    .end local v121           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v123           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v125           #thermistor:Lcom/android/server/ThermistorObserver;
    .end local v127           #throttle:Lcom/android/server/ThrottleService;
    .end local v129           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v133           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v135           #usb:Lcom/android/server/usb/UsbService;
    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .end local v139           #w:Landroid/view/WindowManager;
    .end local v140           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v142           #wfd:Lcom/samsung/wfd/WfdService;
    .end local v144           #wifi:Lcom/android/server/WifiService;
    .end local v146           #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .end local v147           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v149           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_1b
    const/16 v116, 0x0

    goto/16 :goto_0

    .line 156
    .restart local v116       #reboot:Z
    :cond_1c
    const/16 v115, 0x0

    .restart local v115       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 164
    .end local v115           #reason:Ljava/lang/String;
    .end local v116           #reboot:Z
    .restart local v86       #factoryTestStr:Ljava/lang/String;
    :cond_1d
    invoke-static/range {v86 .. v86}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v85

    goto/16 :goto_2

    .line 241
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v51       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v57       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v60       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v63       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v66       #contentService:Landroid/content/ContentService;
    .restart local v69       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v71       #cryptState:Ljava/lang/String;
    .restart local v72       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v74       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v78       #dock:Lcom/android/server/DockObserver;
    .restart local v85       #factoryTest:I
    .restart local v91       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    .restart local v105       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v107       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v111       #onlyCore:Z
    .restart local v113       #pm:Landroid/content/pm/IPackageManager;
    .restart local v117       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v119       #serial:Lcom/android/server/SerialService;
    .restart local v121       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v125       #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v127       #throttle:Lcom/android/server/ThrottleService;
    .restart local v133       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v135       #usb:Lcom/android/server/usb/UsbService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    .restart local v142       #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v144       #wifi:Lcom/android/server/WifiService;
    .restart local v146       #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .restart local v147       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v149       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_1e
    :try_start_69
    const-string v3, "1"

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v111, 0x1

    goto/16 :goto_3

    .line 249
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 270
    .restart local v87       #firstBoot:Z
    :catch_0
    move-exception v82

    .line 271
    .local v82, e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v82

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_69} :catch_1

    goto/16 :goto_6

    .line 387
    .end local v71           #cryptState:Ljava/lang/String;
    .end local v82           #e:Ljava/lang/Throwable;
    .end local v87           #firstBoot:Z
    .end local v111           #onlyCore:Z
    :catch_1
    move-exception v82

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v54

    .line 388
    .end local v54           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v82, e:Ljava/lang/RuntimeException;
    :goto_51
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v82

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 278
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v82           #e:Ljava/lang/RuntimeException;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    .restart local v71       #cryptState:Ljava/lang/String;
    .restart local v87       #firstBoot:Z
    .restart local v111       #onlyCore:Z
    :catch_2
    move-exception v82

    .line 279
    .local v82, e:Ljava/lang/Throwable;
    :try_start_6a
    const-string v3, "SystemServer"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v82

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6a} :catch_1

    goto/16 :goto_7

    .line 285
    .end local v82           #e:Ljava/lang/Throwable;
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 296
    .end local v74           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v75       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_3
    move-exception v82

    .line 297
    .restart local v82       #e:Ljava/lang/Throwable;
    :try_start_6b
    const-string v3, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v82

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_6b} :catch_61

    .line 298
    const/16 v74, 0x0

    .end local v75           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v74       #dEncService:Lcom/android/server/DirEncryptService;
    goto/16 :goto_9

    .line 335
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v54           #battery:Lcom/android/server/BatteryService;
    .end local v82           #e:Ljava/lang/Throwable;
    .end local v93           #lights:Lcom/android/server/LightsService;
    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v94       #lights:Lcom/android/server/LightsService;
    .restart local v138       #vibrator:Lcom/android/server/VibratorService;
    :cond_21
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_a

    :cond_22
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 354
    :cond_23
    const/4 v3, 0x1

    move/from16 v0, v85

    if-ne v0, v3, :cond_24

    .line 355
    :try_start_6c
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 387
    :catch_4
    move-exception v82

    move-object/from16 v137, v138

    .end local v138           #vibrator:Lcom/android/server/VibratorService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v93, v94

    .end local v94           #lights:Lcom/android/server/LightsService;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    goto :goto_51

    .line 357
    .end local v93           #lights:Lcom/android/server/LightsService;
    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v94       #lights:Lcom/android/server/LightsService;
    .restart local v138       #vibrator:Lcom/android/server/VibratorService;
    :cond_24
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v56, Landroid/server/BluetoothService;

    move-object/from16 v0, v56

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_6c} :catch_4

    .line 359
    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .local v56, bluetooth:Landroid/server/BluetoothService;
    :try_start_6d
    const-string v3, "bluetooth"

    move-object/from16 v0, v56

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 360
    invoke-virtual/range {v56 .. v56}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 362
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 363
    new-instance v58, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_6d
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_6d} :catch_65

    .line 364
    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v58, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_6e
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v58

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 366
    const-string v3, "SystemServer"

    const-string v9, "AvrcpStubService -->"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v52, Landroid/server/AvrcpStubService;

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Landroid/server/AvrcpStubService;-><init>(Landroid/content/Context;)V
    :try_end_6e
    .catch Ljava/lang/RuntimeException; {:try_start_6e .. :try_end_6e} :catch_66

    .line 368
    .end local v51           #avrcp:Landroid/server/AvrcpStubService;
    .local v52, avrcp:Landroid/server/AvrcpStubService;
    :try_start_6f
    const-string v3, "bluetooth_avrcp"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 369
    invoke-virtual/range {v56 .. v56}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_6f} :catch_67

    move-object/from16 v51, v52

    .end local v52           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v51       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v57, v58

    .end local v58           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v57       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v55, v56

    .end local v56           #bluetooth:Landroid/server/BluetoothService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_c

    .line 413
    .end local v71           #cryptState:Ljava/lang/String;
    .end local v87           #firstBoot:Z
    .end local v94           #lights:Lcom/android/server/LightsService;
    .end local v111           #onlyCore:Z
    .end local v138           #vibrator:Lcom/android/server/VibratorService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v67       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v80       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v83       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v89       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    .restart local v95       #location:Lcom/android/server/LocationManagerService;
    .restart local v97       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v123       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    .restart local v140       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_5
    move-exception v82

    .line 414
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 421
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v82

    .line 422
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 431
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v82

    .line 432
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "SystemServer"

    const-string v9, "Failure starting CustomFrequencyManagerService Service"

    move-object/from16 v0, v82

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 437
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v82

    .line 438
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 443
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v82

    .line 444
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 466
    .end local v82           #e:Ljava/lang/Throwable;
    .restart local v103       #mountService:Lcom/android/server/MountService;
    :catch_a
    move-exception v82

    .line 467
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 478
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v82

    .line 479
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 487
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v82

    .line 488
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 495
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v82

    .line 496
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 505
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v82

    .line 506
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v82

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 514
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v82

    .line 515
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 522
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v82

    .line 523
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 533
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v82

    .line 534
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 541
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v82

    .line 542
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 549
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v82

    .line 550
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 557
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v82

    .line 558
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 567
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v82

    move-object/from16 v8, v105

    .line 568
    .end local v105           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 575
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v82

    .line 576
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 583
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v82

    .line 584
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 607
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v82

    .line 608
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v3, "starting Wi-Fi Display Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 620
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v82

    .line 621
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 629
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v82

    .line 630
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 638
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v82

    .line 639
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 646
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v82

    .line 647
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 664
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v82

    .line 665
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 671
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v82

    .line 672
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 680
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v82

    .line 681
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 688
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v82

    .line 689
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 696
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v82

    .line 697
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 704
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v82

    .line 705
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 712
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v82

    .line 713
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 720
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v82

    .line 721
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 732
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v82

    .line 733
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_64
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 741
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v82

    .line 742
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 750
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v82

    .line 751
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 758
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v82

    .line 759
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 766
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v82

    .line 767
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting ThermistorObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 775
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v82

    .line 776
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_65
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 784
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v82

    .line 785
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_66
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v82

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 792
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v82

    .line 793
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 802
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v82

    .line 803
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 812
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v82

    .line 813
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v82

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    .line 820
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v82

    .line 821
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_67
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 827
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v82

    .line 828
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 834
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v82

    .line 835
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 842
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v82

    .line 843
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting AtCmdFwd Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 854
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v82

    .line 855
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 861
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v82

    .line 862
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 873
    .end local v82           #e:Ljava/lang/Throwable;
    .restart local v112       #packageMgr:Landroid/content/pm/PackageManager;
    :catch_35
    move-exception v82

    .line 874
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v82

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    .line 884
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v82

    .line 885
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v82

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_40

    .line 917
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v82

    .line 918
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v82

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41

    .line 927
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v82

    .line 928
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_68
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 934
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v82

    .line 935
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v82

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_43

    .line 942
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v82

    .line 943
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 950
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v82

    .line 951
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "Fail to start face detection service"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 967
    .end local v82           #e:Ljava/lang/Throwable;
    .restart local v131       #tvoutEnable:Ljava/lang/String;
    .restart local v132       #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_25
    :try_start_70
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v49, v0

    .line 969
    .local v49, arg:[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v49, v3

    .line 971
    move-object/from16 v0, v132

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v65

    .line 972
    .local v65, constructor:Ljava/lang/reflect/Constructor;
    const-string v9, "tvoutservice"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v65

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_3c

    goto/16 :goto_46

    .line 974
    .end local v49           #arg:[Ljava/lang/Class;
    .end local v65           #constructor:Ljava/lang/reflect/Constructor;
    .end local v132           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_3c
    move-exception v82

    .line 975
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Tvout Service"

    move-object/from16 v0, v82

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_46

    .line 982
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_3d
    move-exception v82

    .line 983
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 993
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v82

    .line 994
    .restart local v82       #e:Ljava/lang/Throwable;
    :goto_69
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1010
    .end local v82           #e:Ljava/lang/Throwable;
    .end local v103           #mountService:Lcom/android/server/MountService;
    .end local v112           #packageMgr:Landroid/content/pm/PackageManager;
    .end local v131           #tvoutEnable:Ljava/lang/String;
    .restart local v29       #safeMode:Z
    :cond_26
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_49

    .line 1017
    :catch_3f
    move-exception v82

    .line 1018
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1023
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_40
    move-exception v82

    .line 1024
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1030
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_41
    move-exception v82

    .line 1031
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1045
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_42
    move-exception v82

    .line 1046
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1052
    .end local v82           #e:Ljava/lang/Throwable;
    :catch_43
    move-exception v82

    .line 1053
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1072
    .end local v82           #e:Ljava/lang/Throwable;
    .restart local v62       #config:Landroid/content/res/Configuration;
    .restart local v99       #metrics:Landroid/util/DisplayMetrics;
    .restart local v139       #w:Landroid/view/WindowManager;
    :catch_44
    move-exception v82

    .line 1073
    .restart local v82       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 258
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #safeMode:Z
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v62           #config:Landroid/content/res/Configuration;
    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v80           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v82           #e:Ljava/lang/Throwable;
    .end local v83           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v89           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v95           #location:Lcom/android/server/LocationManagerService;
    .end local v97           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v99           #metrics:Landroid/util/DisplayMetrics;
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .end local v123           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v129           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v139           #w:Landroid/view/WindowManager;
    .end local v140           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    .restart local v71       #cryptState:Ljava/lang/String;
    .restart local v87       #firstBoot:Z
    .restart local v105       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v111       #onlyCore:Z
    :catch_45
    move-exception v3

    goto/16 :goto_5

    .line 993
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v54           #battery:Lcom/android/server/BatteryService;
    .end local v71           #cryptState:Ljava/lang/String;
    .end local v87           #firstBoot:Z
    .end local v105           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v111           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v67       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v81       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v83       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v89       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v95       #location:Lcom/android/server/LocationManagerService;
    .restart local v97       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v103       #mountService:Lcom/android/server/MountService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v112       #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v123       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v131       #tvoutEnable:Ljava/lang/String;
    .restart local v140       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_46
    move-exception v82

    move-object/from16 v80, v81

    .end local v81           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v80       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_69

    .line 927
    .end local v60           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v131           #tvoutEnable:Ljava/lang/String;
    .restart local v61       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_47
    move-exception v82

    move-object/from16 v60, v61

    .end local v61           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v60       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_68

    .line 820
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v112           #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v48       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_48
    move-exception v82

    move-object/from16 v47, v48

    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_67

    .line 784
    .end local v119           #serial:Lcom/android/server/SerialService;
    .restart local v120       #serial:Lcom/android/server/SerialService;
    :catch_49
    move-exception v82

    move-object/from16 v119, v120

    .end local v120           #serial:Lcom/android/server/SerialService;
    .restart local v119       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_66

    .line 775
    .end local v135           #usb:Lcom/android/server/usb/UsbService;
    .restart local v136       #usb:Lcom/android/server/usb/UsbService;
    :catch_4a
    move-exception v82

    move-object/from16 v135, v136

    .end local v136           #usb:Lcom/android/server/usb/UsbService;
    .restart local v135       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_65

    .line 732
    .end local v140           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v141       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4b
    move-exception v82

    move-object/from16 v140, v141

    .end local v141           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v140       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_64

    .line 704
    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v68       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_4c
    move-exception v82

    move-object/from16 v67, v68

    .end local v68           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v67       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_63

    .line 696
    .end local v95           #location:Lcom/android/server/LocationManagerService;
    .restart local v96       #location:Lcom/android/server/LocationManagerService;
    :catch_4d
    move-exception v82

    move-object/from16 v95, v96

    .end local v96           #location:Lcom/android/server/LocationManagerService;
    .restart local v95       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_62

    .line 680
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #notification:Lcom/android/server/NotificationManagerService;
    :catch_4e
    move-exception v82

    move-object/from16 v109, v110

    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_61

    .line 638
    .end local v127           #throttle:Lcom/android/server/ThrottleService;
    .restart local v128       #throttle:Lcom/android/server/ThrottleService;
    :catch_4f
    move-exception v82

    move-object/from16 v127, v128

    .end local v128           #throttle:Lcom/android/server/ThrottleService;
    .restart local v127       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_60

    .line 620
    .end local v63           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v64       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_50
    move-exception v82

    move-object/from16 v63, v64

    .end local v64           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v63       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_5f

    .line 607
    .end local v142           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v143       #wfd:Lcom/samsung/wfd/WfdService;
    :catch_51
    move-exception v82

    move-object/from16 v142, v143

    .end local v143           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v142       #wfd:Lcom/samsung/wfd/WfdService;
    goto/16 :goto_5e

    .line 583
    .end local v144           #wifi:Lcom/android/server/WifiService;
    .restart local v145       #wifi:Lcom/android/server/WifiService;
    :catch_52
    move-exception v82

    move-object/from16 v144, v145

    .end local v145           #wifi:Lcom/android/server/WifiService;
    .restart local v144       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_5d

    .line 575
    .end local v147           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v148       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_53
    move-exception v82

    move-object/from16 v147, v148

    .end local v148           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v147       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_5c

    .line 567
    :catch_54
    move-exception v82

    goto/16 :goto_5b

    .line 557
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v105       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v106       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_55
    move-exception v82

    move-object/from16 v12, v106

    .end local v106           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_5a

    .line 549
    .end local v129           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v130       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_56
    move-exception v82

    move-object/from16 v129, v130

    .end local v130           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v129       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_59

    .line 514
    .end local v123           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v124       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_57
    move-exception v82

    move-object/from16 v123, v124

    .end local v124           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v123       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_58

    .line 505
    .end local v83           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v84       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_58
    move-exception v82

    move-object/from16 v83, v84

    .end local v84           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v83       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_57

    .line 495
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v77       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_59
    move-exception v82

    move-object/from16 v76, v77

    .end local v77           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_56

    .line 487
    .end local v97           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v98       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_5a
    move-exception v82

    move-object/from16 v97, v98

    .end local v98           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v97       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_55

    .line 466
    .end local v103           #mountService:Lcom/android/server/MountService;
    .restart local v104       #mountService:Lcom/android/server/MountService;
    :catch_5b
    move-exception v82

    move-object/from16 v103, v104

    .end local v104           #mountService:Lcom/android/server/MountService;
    .restart local v103       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_54

    .line 452
    .end local v103           #mountService:Lcom/android/server/MountService;
    :catch_5c
    move-exception v3

    goto/16 :goto_13

    .line 431
    .end local v72           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v73       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :catch_5d
    move-exception v82

    move-object/from16 v72, v73

    .end local v73           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v72       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    goto/16 :goto_53

    .line 413
    .end local v89           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_5e
    move-exception v82

    move-object/from16 v89, v90

    .end local v90           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v89       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_52

    .line 387
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v80           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v83           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v89           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v95           #location:Lcom/android/server/LocationManagerService;
    .end local v97           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .end local v123           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v129           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v140           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    .restart local v114       #power:Lcom/android/server/PowerManagerService;
    :catch_5f
    move-exception v82

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v54

    .end local v54           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v114

    .end local v114           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_51

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    .restart local v71       #cryptState:Ljava/lang/String;
    .restart local v87       #firstBoot:Z
    .restart local v111       #onlyCore:Z
    :catch_60
    move-exception v82

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v54

    .end local v54           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v44, v45

    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_51

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v74           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_61
    move-exception v82

    move-object/from16 v74, v75

    .end local v75           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v74       #dEncService:Lcom/android/server/DirEncryptService;
    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v54

    .end local v54           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_51

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v93           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #lights:Lcom/android/server/LightsService;
    :catch_62
    move-exception v82

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v54

    .end local v54           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v93, v94

    .end local v94           #lights:Lcom/android/server/LightsService;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_51

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v93           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v94       #lights:Lcom/android/server/LightsService;
    :catch_63
    move-exception v82

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v93, v94

    .end local v94           #lights:Lcom/android/server/LightsService;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_51

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v93           #lights:Lcom/android/server/LightsService;
    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v94       #lights:Lcom/android/server/LightsService;
    .restart local v138       #vibrator:Lcom/android/server/VibratorService;
    :catch_64
    move-exception v82

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v137, v138

    .end local v138           #vibrator:Lcom/android/server/VibratorService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v93, v94

    .end local v94           #lights:Lcom/android/server/LightsService;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_51

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .end local v93           #lights:Lcom/android/server/LightsService;
    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v56       #bluetooth:Landroid/server/BluetoothService;
    .restart local v94       #lights:Lcom/android/server/LightsService;
    .restart local v138       #vibrator:Lcom/android/server/VibratorService;
    :catch_65
    move-exception v82

    move-object/from16 v55, v56

    .end local v56           #bluetooth:Landroid/server/BluetoothService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v137, v138

    .end local v138           #vibrator:Lcom/android/server/VibratorService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v93, v94

    .end local v94           #lights:Lcom/android/server/LightsService;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_51

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v93           #lights:Lcom/android/server/LightsService;
    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v56       #bluetooth:Landroid/server/BluetoothService;
    .restart local v58       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v94       #lights:Lcom/android/server/LightsService;
    .restart local v138       #vibrator:Lcom/android/server/VibratorService;
    :catch_66
    move-exception v82

    move-object/from16 v57, v58

    .end local v58           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v57       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v55, v56

    .end local v56           #bluetooth:Landroid/server/BluetoothService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v137, v138

    .end local v138           #vibrator:Lcom/android/server/VibratorService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v93, v94

    .end local v94           #lights:Lcom/android/server/LightsService;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_51

    .end local v51           #avrcp:Landroid/server/AvrcpStubService;
    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v93           #lights:Lcom/android/server/LightsService;
    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v52       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v56       #bluetooth:Landroid/server/BluetoothService;
    .restart local v58       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v94       #lights:Lcom/android/server/LightsService;
    .restart local v138       #vibrator:Lcom/android/server/VibratorService;
    :catch_67
    move-exception v82

    move-object/from16 v51, v52

    .end local v52           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v51       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v57, v58

    .end local v58           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v57       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v55, v56

    .end local v56           #bluetooth:Landroid/server/BluetoothService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v137, v138

    .end local v138           #vibrator:Lcom/android/server/VibratorService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v93, v94

    .end local v94           #lights:Lcom/android/server/LightsService;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_51

    .end local v69           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .end local v93           #lights:Lcom/android/server/LightsService;
    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .restart local v70       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v94       #lights:Lcom/android/server/LightsService;
    .restart local v138       #vibrator:Lcom/android/server/VibratorService;
    :catch_68
    move-exception v82

    move-object/from16 v69, v70

    .end local v70           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v69       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    move-object/from16 v137, v138

    .end local v138           #vibrator:Lcom/android/server/VibratorService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v93, v94

    .end local v94           #lights:Lcom/android/server/LightsService;
    .restart local v93       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_51

    .line 270
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    :catch_69
    move-exception v82

    move-object/from16 v44, v45

    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_50

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v54           #battery:Lcom/android/server/BatteryService;
    .end local v71           #cryptState:Ljava/lang/String;
    .end local v87           #firstBoot:Z
    .end local v111           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v67       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v80       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v83       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v89       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v95       #location:Lcom/android/server/LocationManagerService;
    .restart local v97       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v123       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v129       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v140       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_27
    move-object/from16 v8, v105

    .end local v105           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_48

    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v76           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v80           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v83           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v89           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v93           #lights:Lcom/android/server/LightsService;
    .end local v95           #location:Lcom/android/server/LocationManagerService;
    .end local v97           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .end local v123           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v129           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .end local v140           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v56       #bluetooth:Landroid/server/BluetoothService;
    .restart local v71       #cryptState:Ljava/lang/String;
    .restart local v87       #firstBoot:Z
    .restart local v94       #lights:Lcom/android/server/LightsService;
    .restart local v105       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v111       #onlyCore:Z
    .restart local v138       #vibrator:Lcom/android/server/VibratorService;
    :cond_28
    move-object/from16 v55, v56

    .end local v56           #bluetooth:Landroid/server/BluetoothService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_c
.end method
