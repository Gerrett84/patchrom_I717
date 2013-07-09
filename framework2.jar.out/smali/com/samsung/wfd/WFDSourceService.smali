.class public Lcom/samsung/wfd/WFDSourceService;
.super Landroid/app/Service;
.source "WFDSourceService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WFDSourceService"

.field private static m_bAlive:Z


# instance fields
.field private final WDTS_PAUSE:I

.field private final WDTS_PLAY:I

.field private mBlockedRemoteEvents:Z

.field private mCurrentWDState:I

.field private mHeight:I

.field private mPauseMode:Z

.field private mPhoneCall:Z

.field private mPrivateEventsMode:Z

.field private mQuality:I

.field private mScreenLock:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PLAY:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PAUSE:I

    .line 66
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mBlockedRemoteEvents:Z

    .line 67
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPrivateEventsMode:Z

    .line 68
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mScreenLock:Z

    .line 69
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPhoneCall:Z

    .line 70
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPauseMode:Z

    return-void
.end method

.method public static isAlive()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 87
    const-string v3, "WFDSourceService"

    const-string v4, "create WFD Source service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/samsung/wfd/WFDSourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 90
    .local v1, WifiMgr:Landroid/net/wifi/WifiManager;
    const-string v3, "WFDSourceService"

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 91
    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 93
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/samsung/wfd/WFDSourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 94
    .local v0, PowerMgr:Landroid/os/PowerManager;
    const v3, 0x2000001a

    const-string v4, "WFDSourceService"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 95
    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 97
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/wfd/WFDSourceService;->mCurrentWDState:I

    .line 102
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 105
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 106
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WFDNative;->setContext(Landroid/content/Context;)V

    .line 108
    const-string v3, "WFDSourceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnCreate thread="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "WFDSourceService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 144
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 145
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->stop()Z

    .line 146
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "WFDSourceService"

    const-string v1, "onLowMemory!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 115
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 116
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 120
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "WFDSourceService"

    const-string v1, "wait(sleep) for 10s"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-wide/16 v0, 0x4e20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    const-string v0, "WFDSourceService"

    const-string v1, "wfd native start port : 3000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    const/16 v1, 0xbb8

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/wfd/WFDNative;->start(IIII)Z

    .line 130
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 131
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method
