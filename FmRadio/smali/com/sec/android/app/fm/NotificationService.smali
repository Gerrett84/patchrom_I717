.class public Lcom/sec/android/app/fm/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"


# static fields
.field static isRunning:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mKeepPlaying:Z

.field private mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

.field private mStopServiceReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/NotificationService;->mKeepPlaying:Z

    .line 200
    new-instance v0, Lcom/sec/android/app/fm/NotificationService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationService$1;-><init>(Lcom/sec/android/app/fm/NotificationService;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mStopServiceReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/fm/NotificationService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/sec/android/app/fm/NotificationService;->mKeepPlaying:Z

    return p1
.end method

.method private createFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.fm.player"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v1, "com.android.fm.player.on"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v1, "com.android.fm.player.off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "com.android.fm.player.tune.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "com.android.fm.player.tune.prev"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "com.android.fm.player.tune"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    return-object v0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationService;->createFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mStopServiceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.fm.notification.service.stop"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->terminate()V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mStopServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 129
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 137
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/fm/NotificationService;->isRunning:Z

    .line 138
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationService;->unregisterBroadcastReceiver()V

    .line 142
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "FM NotificationService onDestroy unregister rec"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    iget-boolean v2, p0, Lcom/sec/android/app/fm/NotificationService;->mKeepPlaying:Z

    if-nez v2, :cond_0

    .line 147
    :try_start_0
    const-string v2, "NotificationService"

    const-string v3, "service killed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v2, "FMPlayer"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    .line 149
    .local v1, player:Lcom/samsung/media/fmradio/FMPlayer;
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1           #player:Lcom/samsung/media/fmradio/FMPlayer;
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .line 57
    .local v2, n:I
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationService;->registerBroadcastReceiver()V

    .line 58
    sput-boolean v4, Lcom/sec/android/app/fm/NotificationService;->isRunning:Z

    .line 61
    if-eqz p1, :cond_1

    .line 62
    const-string v4, "com.android.fm.notification.service.notification"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, action:Ljava/lang/String;
    const-string v4, "show.notification"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    iget-object v4, p0, Lcom/sec/android/app/fm/NotificationService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v4, :cond_0

    .line 65
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/sec/android/app/fm/NotificationService;->mAudioManager:Landroid/media/AudioManager;

    .line 76
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/fm/NotificationService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "onStartCommand startForeground"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    const/4 v4, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/fm/FMNotificationManager;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/fm/NotificationService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "FM NotificationService onStartCommand registered rec"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.fm.player.on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 96
    const-string v4, "NotificationService"

    const-string v5, "NotificationReceiver.ON_ACTION"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.fm.player.on"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/NotificationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    :cond_2
    :goto_1
    return v2

    .line 81
    .restart local v0       #action:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[onStartCommand] WiredHeasetOn is false"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v0           #action:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.fm.player.off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 101
    const-string v4, "NotificationService"

    const-string v5, "NotificationReceiver.OFF_ACTION"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.fm.player.off"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/NotificationService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.fm.player.tune.prev"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 104
    const-string v4, "NotificationService"

    const-string v5, "NotificationReceiver.PREV_ACTION"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.fm.player.tune.prev"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/NotificationService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 106
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.fm.player.tune.next"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 107
    const-string v4, "NotificationService"

    const-string v5, "NotificationReceiver.NEXT_ACTION"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.fm.player.tune.next"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/NotificationService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 111
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.fm.player.tune"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    const-string v4, "NotificationService"

    const-string v5, "NotificationReceiver.TUNE_ACTION"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.player.tune"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v3, tuneIntent:Landroid/content/Intent;
    const-string v4, "freq"

    const-string v5, "freq"

    sget v6, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/NotificationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
