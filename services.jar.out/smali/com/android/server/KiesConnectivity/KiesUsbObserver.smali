.class public Lcom/android/server/KiesConnectivity/KiesUsbObserver;
.super Landroid/os/Binder;
.source "KiesUsbObserver.java"


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static mSystemReady:Z


# instance fields
.field private CDFS_ADB_FUNCTION_STRING:Ljava/lang/String;

.field private CDFS_FUNCTION_STRING:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCDFSEventObserver:Landroid/os/UEventObserver;

.field private final mContext:Landroid/content/Context;

.field private mFileObserver:Landroid/os/FileObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;

.field private usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mSystemReady:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    iput-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mFileObserver:Landroid/os/FileObserver;

    .line 48
    iput-object v4, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 50
    const-string v2, "mass_storage"

    iput-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->CDFS_FUNCTION_STRING:Ljava/lang/String;

    .line 51
    const-string v2, "mass_storage,adb"

    iput-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->CDFS_ADB_FUNCTION_STRING:Ljava/lang/String;

    .line 74
    new-instance v2, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;

    invoke-direct {v2, p0}, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V

    iput-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    new-instance v2, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;

    invoke-direct {v2, p0}, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V

    iput-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mCDFSEventObserver:Landroid/os/UEventObserver;

    .line 54
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mContext:Landroid/content/Context;

    .line 55
    new-instance v2, Lcom/android/server/KiesConnectivity/KiesUsbManager;

    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .line 56
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-virtual {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mHandler:Landroid/os/Handler;

    .line 57
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mCDFSEventObserver:Landroid/os/UEventObserver;

    const-string v3, "SWITCH_NAME=USB_MESSAGE"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 58
    const-string v2, "usb"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    iput-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 60
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 64
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultCurrentFunctions()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, config:Ljava/lang/String;
    sget-object v2, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbManager.getDefaultCurrentFunctions(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v2, "askon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "askon,adb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mtp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mtp,adb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ptp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ptp,adb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->usbManager:Landroid/hardware/usb/UsbManager;

    const-string v3, "mass_storage"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 72
    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->getUsbMode()I

    move-result v0

    return v0
.end method

.method private getUsbMode()I
    .locals 5

    .prologue
    .line 119
    const-string v2, "sys.usb.config"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, config:Ljava/lang/String;
    sget-object v2, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUsbMode() -> sys.usb.config : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v2, "mass_storage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mass_storage,acm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mass_storage,acm,adb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mass_storage,adb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    :cond_0
    const/16 v1, 0x7d0

    .line 129
    .local v1, usbMode:I
    :goto_0
    return v1

    .line 126
    .end local v1           #usbMode:I
    :cond_1
    const/4 v1, -0x1

    .restart local v1       #usbMode:I
    goto :goto_0
.end method

.method private isAdbEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, enabled:I
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 139
    if-ne v0, v1, :cond_0

    .line 142
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private sendMsg(II)V
    .locals 4
    .parameter "usbState"
    .parameter "usbMode"

    .prologue
    const/4 v1, -0x1

    .line 150
    move v0, p2

    .line 152
    .local v0, arg1:I
    if-eq p1, v1, :cond_0

    if-ne p2, v1, :cond_1

    .line 153
    :cond_0
    sget-object v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    const-string v2, "sendMsg -> wrong argument"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 157
    :cond_1
    const/16 v1, 0x7d0

    if-eq p2, v1, :cond_2

    .line 158
    sget-object v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    const-string v2, "sendMsg -> UsbMode is not mtp"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 164
    if-nez p1, :cond_3

    .line 165
    const/4 v0, 0x0

    .line 167
    :cond_3
    sget-object v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMsg ->usbState is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UsbMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 171
    :cond_4
    sget-object v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    const-string v2, "sendMsg -> mHandler is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method systemReady()V
    .locals 2

    .prologue
    .line 208
    monitor-enter p0

    .line 209
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mSystemReady:Z

    .line 210
    sget-object v0, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;

    const-string v1, "systemReady done"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit p0

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
