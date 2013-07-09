.class public Lcom/samsung/wfd/WfdService;
.super Lcom/samsung/wfd/IWfdManager$Stub;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdService$1;,
        Lcom/samsung/wfd/WfdService$WfdStateMachine;,
        Lcom/samsung/wfd/WfdService$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x23000

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WfdService"


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mContext:Landroid/content/Context;

.field private mInterface:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mResolutionBitMask:I

.field private mWfdInfo:Lcom/samsung/wfd/WfdInfo;

.field private final mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

.field private final mWfdSupported:Z

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final r_1024_768:I

.field private final r_1152_864:I

.field private final r_1280_1024:I

.field private final r_1280_720:I

.field private final r_1280_768:I

.field private final r_1280_800:I

.field private final r_1360_768:I

.field private final r_1366_768:I

.field private final r_1400_1050:I

.field private final r_1400_900:I

.field private final r_1600_1200:I

.field private final r_1600_900:I

.field private final r_1680_1024:I

.field private final r_1680_1050:I

.field private final r_1920_1080:I

.field private final r_1920_1200:I

.field private final r_640_360:I

.field private final r_640_480:I

.field private final r_720_480:I

.field private final r_720_576:I

.field private final r_800_480:I

.field private final r_800_600:I

.field private final r_854_480:I

.field private final r_864_480:I

.field private final r_unknown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 177
    invoke-direct {p0}, Lcom/samsung/wfd/IWfdManager$Stub;-><init>()V

    .line 97
    iput v2, p0, Lcom/samsung/wfd/WfdService;->r_unknown:I

    .line 98
    iput v3, p0, Lcom/samsung/wfd/WfdService;->r_640_480:I

    .line 99
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_720_480:I

    .line 100
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_720_576:I

    .line 101
    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1280_720:I

    .line 102
    const/16 v1, 0x10

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1920_1080:I

    .line 103
    const/16 v1, 0x20

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_800_600:I

    .line 104
    const/16 v1, 0x40

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1024_768:I

    .line 105
    const/16 v1, 0x80

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1152_864:I

    .line 106
    const/16 v1, 0x100

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1280_768:I

    .line 107
    const/16 v1, 0x200

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1280_800:I

    .line 108
    const/16 v1, 0x400

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1360_768:I

    .line 109
    const/16 v1, 0x800

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1366_768:I

    .line 110
    const/16 v1, 0x1000

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1280_1024:I

    .line 111
    const/16 v1, 0x2000

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1400_1050:I

    .line 112
    const/16 v1, 0x4000

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1400_900:I

    .line 113
    const v1, 0x8000

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1600_900:I

    .line 114
    const/high16 v1, 0x1

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1600_1200:I

    .line 115
    const/high16 v1, 0x2

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1680_1024:I

    .line 116
    const/high16 v1, 0x4

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1680_1050:I

    .line 117
    const/high16 v1, 0x8

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_1920_1200:I

    .line 118
    const/high16 v1, 0x10

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_800_480:I

    .line 119
    const/high16 v1, 0x20

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_854_480:I

    .line 120
    const/high16 v1, 0x40

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_864_480:I

    .line 121
    const/high16 v1, 0x80

    iput v1, p0, Lcom/samsung/wfd/WfdService;->r_640_360:I

    .line 159
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 162
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 173
    iput v2, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    .line 178
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    .line 180
    const-string v1, "wifi.interface"

    const-string v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mInterface:Ljava/lang/String;

    .line 182
    const-string v1, "wlan.wfd.status"

    const-string v2, "disconnected"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-boolean v3, p0, Lcom/samsung/wfd/WfdService;->mWfdSupported:Z

    .line 189
    new-instance v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v2, "WfdService"

    iget-boolean v3, p0, Lcom/samsung/wfd/WfdService;->mWfdSupported:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;-><init>(Lcom/samsung/wfd/WfdService;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    .line 190
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->start()V

    .line 192
    new-instance v1, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v1}, Lcom/samsung/wfd/WfdInfo;-><init>()V

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 197
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 199
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 201
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_0

    .line 203
    const-string v1, "WfdService"

    const-string v2, "Failed to set up connection with wifi p2p service"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iput-object v4, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 211
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v1, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v1, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    invoke-direct {v2, p0, v4}, Lcom/samsung/wfd/WfdService$WifiStateReceiver;-><init>(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    return-void

    .line 207
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    const-string v1, "WfdService"

    const-string v2, "mWifiP2pManager is null !"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/wfd/WfdService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/wfd/WfdService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService;->setWfdState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/wfd/WfdService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    return p1
.end method

.method static synthetic access$702(Lcom/samsung/wfd/WfdService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/wfd/WfdService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WfdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WfdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method private getDefaultDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 317
    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setWfdState(I)V
    .locals 7
    .parameter "wfdState"

    .prologue
    const/high16 v6, 0x800

    .line 222
    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 224
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWfdState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    const-string v3, "wfd_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFI_DISPLAY_RES"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, activityIntent:Landroid/content/Intent;
    const/4 v2, -0x1

    .line 233
    .local v2, wfdActivityState:I
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    const/4 v3, 0x5

    if-ne v3, p1, :cond_0

    .line 236
    const/4 v2, 0x1

    .line 241
    :goto_0
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    const-string v3, "resBitMask"

    iget v4, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    iget-object v3, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 244
    return-void

    .line 238
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WfdService from from pid="

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

    .line 373
    :cond_0
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceAccessPermission()V

    .line 360
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 361
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceAccessPermission()V

    .line 339
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    return-object v0
.end method

.method public getWfdSinkResolution()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I

    return v0
.end method

.method public getWfdState()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isSessionEstablished()Z
    .locals 2

    .prologue
    .line 351
    const-string v0, "wlan.wfd.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setWfdEnabledDialog(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService;->enforceChangePermission()V

    .line 325
    if-eqz p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v1, 0x2206f

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 330
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
