.class public Lcom/samsung/wfd/WFDTxService;
.super Landroid/app/Service;
.source "WFDTxService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WFDTxService"

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
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wfd/WFDTxService;->m_bAlive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    iput v1, p0, Lcom/samsung/wfd/WFDTxService;->WDTS_PLAY:I

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/wfd/WFDTxService;->WDTS_PAUSE:I

    .line 81
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDTxService;->mBlockedRemoteEvents:Z

    .line 82
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDTxService;->mPrivateEventsMode:Z

    .line 83
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDTxService;->mScreenLock:Z

    .line 84
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDTxService;->mPhoneCall:Z

    .line 85
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDTxService;->mPauseMode:Z

    return-void
.end method

.method public static isAlive()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/samsung/wfd/WFDTxService;->m_bAlive:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 102
    const-string v3, "WFDTxService"

    const-string v4, "create WFD Tx service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/samsung/wfd/WFDTxService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 105
    .local v1, WifiMgr:Landroid/net/wifi/WifiManager;
    const-string v3, "WifiDisplay"

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/wfd/WFDTxService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 106
    iget-object v3, p0, Lcom/samsung/wfd/WFDTxService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 108
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/samsung/wfd/WFDTxService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 109
    .local v0, PowerMgr:Landroid/os/PowerManager;
    const v3, 0x2000001a

    const-string v4, "WifiDisplay"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/wfd/WFDTxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 110
    iget-object v3, p0, Lcom/samsung/wfd/WFDTxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 112
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/wfd/WFDTxService;->mCurrentWDState:I

    .line 117
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/wfd/WFDTxService;->m_bAlive:Z

    .line 122
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDTxService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 123
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WFDNative;->setContext(Landroid/content/Context;)V

    .line 128
    const-string v3, "WFDTxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnCreate thread="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/wfd/WFDTxService;->getMainLooper()Landroid/os/Looper;

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

    .line 129
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "WFDTxService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/samsung/wfd/WFDTxService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/samsung/wfd/WFDTxService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WFDTxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/samsung/wfd/WFDTxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 155
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wfd/WFDTxService;->m_bAlive:Z

    .line 157
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->stop()Z

    .line 158
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "WFDTxService"

    const-string v1, "onLowMemory!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wfd/WFDTxService;->m_bAlive:Z

    .line 135
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 136
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 140
    const-string v0, "WFDTxService"

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

    .line 141
    const/4 v0, 0x0

    const/16 v1, 0xbb8

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/wfd/WFDNative;->start(IIII)Z

    .line 142
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 143
    return-void
.end method
