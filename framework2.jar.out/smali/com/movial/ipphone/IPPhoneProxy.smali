.class public Lcom/movial/ipphone/IPPhoneProxy;
.super Landroid/os/Handler;
.source "IPPhoneProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x2710

.field private static final DELAY_BROADCAST_OPERATORNAME:I = 0x3e8

.field private static final DELAY_REBIND_IPSERVICE:I = 0x1388

.field private static final EVENT_BIND_TO_IPSERVICE:I = 0x5

.field private static final EVENT_BROADCAST_OPERATORNAME:I = 0x6

.field public static final EVENT_EMERGENCY_PREF_CHANGED:I = 0x7

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_REQUEST_VOICE_RADIO_TECH_DONE:I = 0x3

.field private static final EVENT_RIL_CONNECTED:I = 0x4

.field private static final EVENT_VOICE_RADIO_TECH_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "IPPhoneProxy"

.field private static final TAG:Ljava/lang/String; = "IPPhoneProxy"

.field public static final lockForRadioTechnologyChange:Ljava/lang/Object;

.field private static mRegistered:Z


# instance fields
.field private final binded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field private forceEmergency:Z

.field private mActivePhone:Lcom/android/internal/telephony/Phone;

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mIPPhone:Lcom/movial/ipphone/IPPhone;

.field private mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

.field private mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

.field private mIPStateListener:Lcom/movial/ipphone/IPStateListener;

.field protected mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

.field private mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field private mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOperatorName:Ljava/lang/String;

.field private mOutgoingPhone:Ljava/lang/String;

.field private mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

.field private mRealName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetModemOnRadioTechnologyChange:Z

.field private mRilVersion:I

.field private mRingingCall:Lcom/android/internal/telephony/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/movial/ipphone/IPPhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    .line 169
    const/4 v0, 0x0

    sput-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 8
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 175
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    iput-boolean v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    .line 172
    iput-boolean v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    .line 466
    new-instance v1, Lcom/movial/ipphone/IPPhoneProxy$1;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPPhoneProxy$1;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 496
    new-instance v1, Lcom/movial/ipphone/IPPhoneProxy$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/movial/ipphone/IPPhoneProxy$2;-><init>(Lcom/movial/ipphone/IPPhoneProxy;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mObserver:Landroid/database/ContentObserver;

    .line 507
    new-instance v1, Lcom/movial/ipphone/IPPhoneProxy$3;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPPhoneProxy$3;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    .line 536
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 537
    new-instance v1, Ljava/util/concurrent/CyclicBarrier;

    invoke-direct {v1, v7}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    .line 538
    new-instance v1, Lcom/movial/ipphone/IPPhoneProxy$4;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPPhoneProxy$4;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 176
    const-string v1, "IPPhoneProxy"

    invoke-static {v1}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 179
    new-instance v1, Lcom/movial/ipphone/IPPhone;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2, p2, p3}, Lcom/movial/ipphone/IPPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    .line 181
    sget-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CELL_ONLY"

    invoke-static {v1, v2, v6}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/movial/ipphone/IPPhoneSettings;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "CELL_ONLY"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "GBA_INIT"

    invoke-static {v1, v2, v4}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 192
    new-instance v1, Lcom/movial/ipphone/EmergencyCallController;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, p0, v2}, Lcom/movial/ipphone/EmergencyCallController;-><init>(Lcom/movial/ipphone/IPPhoneProxy;Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    .line 198
    new-instance v2, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 203
    new-instance v1, Lcom/movial/ipphone/IPSMSDispatcher;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v3, v3, Lcom/movial/ipphone/IPPhone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v4, v4, Lcom/movial/ipphone/IPPhone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v1, v2, v3, v4}, Lcom/movial/ipphone/IPSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

    .line 205
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 207
    new-instance v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    .line 208
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 209
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 212
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setIccCardProxy(Lcom/android/internal/telephony/uicc/IccCardProxy;)V

    .line 214
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v7, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 216
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v1, "com.movial.gba_initialized"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v1, "com.movial.terminate_stack"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "com.movial.reread_isim_records"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->unbindService(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/movial/ipphone/IPPhoneProxy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->updateNetworkName(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IIPRegistry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/movial/ipphone/IPPhoneProxy;Lcom/movial/ipphone/IIPRegistry;)Lcom/movial/ipphone/IIPRegistry;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/movial/ipphone/IPPhoneProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/movial/ipphone/IPPhoneProxy;)Ljava/util/concurrent/CyclicBarrier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindToIPRegistry()V

    return-void
.end method

.method static synthetic access$200(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    return-void
.end method

.method static synthetic access$300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/EmergencyCallController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->setIPSMSDispatcher(Z)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    sput-boolean p0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return p0
.end method

.method static synthetic access$700(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->broadcastOperatorName()V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-static {p0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private bindService()V
    .locals 4

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CELL_ONLY"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    :goto_0
    return-void

    .line 607
    :cond_0
    new-instance v0, Lcom/movial/ipphone/IPPhoneProxy$5;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhoneProxy$5;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    .line 612
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private bindToIPRegistry()V
    .locals 6

    .prologue
    .line 578
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 579
    :try_start_0
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 580
    const-string v2, "IPPhoneProxy"

    const-string v4, "bindToIPRegistry"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v2}, Ljava/util/concurrent/CyclicBarrier;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/movial/ipphone/IIPRegistry;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.movial.ipservice"

    const-string v4, "com.movial.ipservice.IPService"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->waitConnectionResponse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 591
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 592
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "IPPhoneProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService FAILED. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private broadcastOperatorName()V
    .locals 0

    .prologue
    .line 1619
    return-void
.end method

.method private deleteAndCreatePhone(I)V
    .locals 4
    .parameter "newVoiceRadioTech"

    .prologue
    .line 392
    const-string v1, "Unknown"

    .line 393
    .local v1, outgoingPhoneName:Ljava/lang/String;
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 395
    .local v0, oldPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 396
    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    .line 399
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching Voice Phone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "GSM"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 402
    if-eqz v0, :cond_1

    .line 403
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 404
    const-string v2, "Disposing old phone.."

    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 405
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->dispose()V

    .line 415
    :cond_1
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 416
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 421
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 422
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->removeReferences()V

    .line 425
    :cond_3
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_4

    .line 426
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 429
    :cond_4
    const/4 v0, 0x0

    .line 430
    return-void

    .line 399
    :cond_5
    const-string v2, "CDMA"

    goto :goto_0

    .line 417
    :cond_6
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method public static getRegister()Z
    .locals 1

    .prologue
    .line 1782
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 306
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 314
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 310
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method private setCall(Z)V
    .locals 4
    .parameter "result"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 435
    .local v0, f:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 436
    .local v1, g:Lcom/android/internal/telephony/Call;
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 438
    .local v2, r:Lcom/android/internal/telephony/Call;
    if-eqz p1, :cond_0

    .line 439
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 440
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 441
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 448
    :goto_0
    const/4 v0, 0x0

    .line 449
    const/4 v1, 0x0

    .line 450
    const/4 v2, 0x0

    .line 451
    return-void

    .line 443
    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 444
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 445
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    goto :goto_0
.end method

.method private setIPSMSDispatcher(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 461
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIPSMSDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setIPSMSDispatcher(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 464
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setIPSMSDispatcher(Lcom/android/internal/telephony/SMSDispatcher;)V

    goto :goto_0
.end method

.method private unbindService(Z)V
    .locals 4
    .parameter "restart"

    .prologue
    const/4 v3, 0x0

    .line 616
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 620
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    .line 621
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 623
    sput-boolean v3, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    .line 624
    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    .line 627
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->unbindService()V

    .line 629
    if-eqz p1, :cond_1

    .line 630
    const/4 v0, 0x5

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/movial/ipphone/IPPhoneProxy;->sendEmptyMessageDelayed(IJ)Z

    .line 631
    :cond_1
    return-void
.end method

.method private updateNetworkName(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 1580
    const-string v5, "showSpn"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1581
    .local v3, showSpn:Z
    const-string v5, "spn"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1582
    .local v4, spn:Ljava/lang/String;
    const-string v5, "showPlmn"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1583
    .local v2, showPlmn:Z
    const-string v5, "plmn"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1585
    .local v1, plmn:Ljava/lang/String;
    const-string v5, "IMS_WIFICALL"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1586
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_6

    const-string v5, "1"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "null"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_8

    const-string v5, "1"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "null"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRealName:Ljava/lang/String;

    .line 1589
    :cond_0
    const-string v0, ""

    .line 1590
    .local v0, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1591
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_a

    const-string v5, "1"

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "null"

    .end local v4           #spn:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_b

    const-string v5, "1"

    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v1, "null"

    .end local v1           #plmn:Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1594
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1595
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1596
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName:Ljava/lang/String;

    .line 1599
    :cond_5
    :goto_6
    return-void

    .line 1586
    .end local v0           #name:Ljava/lang/String;
    .restart local v1       #plmn:Ljava/lang/String;
    .restart local v4       #spn:Ljava/lang/String;
    :cond_6
    const-string v5, "0"

    goto/16 :goto_0

    :cond_7
    move-object v5, v4

    goto/16 :goto_1

    :cond_8
    const-string v5, "0"

    goto/16 :goto_2

    :cond_9
    move-object v5, v1

    goto :goto_3

    .line 1591
    .restart local v0       #name:Ljava/lang/String;
    :cond_a
    const-string v5, "0"

    goto :goto_4

    .end local v4           #spn:Ljava/lang/String;
    :cond_b
    const-string v5, "0"

    goto :goto_5

    .line 1597
    .end local v1           #plmn:Ljava/lang/String;
    :cond_c
    const-string v5, "IMS_WIFICALL"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1598
    const/4 v5, 0x6

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v5, v6, v7}, Lcom/movial/ipphone/IPPhoneProxy;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6
.end method

.method private updatePhoneObject(I)V
    .locals 7
    .parameter "newVoiceRadioTech"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 318
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_1

    .line 319
    iget v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRilVersion:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 324
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LTE ON CDMA property is set. Use CDMA Phone newVoiceRadioTech = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Active Phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 388
    :goto_0
    return-void

    .line 330
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LTE ON CDMA property is set. Switch to CDMALTEPhone newVoiceRadioTech = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Active Phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 333
    const/4 p1, 0x6

    .line 349
    :cond_1
    if-nez p1, :cond_5

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring voice radio technology changed message. newVoiceRadioTech = Unknown. Active Phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_2
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v6, :cond_4

    :cond_3
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 341
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring voice radio technology changed message. newVoiceRadioTech = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Active Phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :cond_5
    const/4 v1, 0x0

    .line 358
    .local v1, oldPowerState:Z
    iget-boolean v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v2, :cond_6

    .line 359
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 360
    const/4 v1, 0x1

    .line 361
    const-string v2, "Setting Radio Power to Off"

    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 366
    :cond_6
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->deleteAndCreatePhone(I)V

    .line 368
    iget-boolean v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 369
    const-string v2, "Resetting Radio"

    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 376
    :cond_7
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->setmIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    .line 378
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    .line 380
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 383
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    const-string v2, "phoneName"

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-static {v0, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private waitConnectionResponse()V
    .locals 5

    .prologue
    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IPPhoneProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitConnectionResponse FAILED. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPPhoneProxy;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public IsDomesticRoaming()Z
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    return v0
.end method

.method public IsInternationalRoaming()Z
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v0

    return v0
.end method

.method public SimSlotActivation(Z)V
    .locals 0
    .parameter "activation"

    .prologue
    .line 1815
    return-void
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 904
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->acceptCall()V

    .line 906
    :goto_0
    return-void

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    goto :goto_0
.end method

.method public acceptCall(I)V
    .locals 1
    .parameter "callType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 909
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->acceptCall()V

    .line 911
    :goto_0
    return-void

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    goto :goto_0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 1363
    return-void
.end method

.method public addUserToConfCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1767
    const/4 v0, 0x0

    return-object v0
.end method

.method public akaAuthenticate([B[BLandroid/os/Message;)V
    .locals 1
    .parameter "rand"
    .parameter "autn"
    .parameter "onComplete"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->akaAuthenticate([B[BLandroid/os/Message;)V

    .line 1564
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 924
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->canConference()Z

    move-result v0

    .line 925
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    goto :goto_0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 944
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->canTransfer()Z

    move-result v0

    .line 945
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "onComplete"

    .prologue
    .line 1693
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    .line 1694
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "onComplete"

    .prologue
    .line 1702
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    .line 1703
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->clearDisconnected()V

    .line 955
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 956
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 929
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->conference()V

    .line 931
    :goto_0
    return-void

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "CallType"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1004
    invoke-virtual {p0, p1, p2, p3}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 984
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 985
    .local v0, isEmergencyCall:Z
    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    if-eqz v1, :cond_1

    .line 986
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v1, p1}, Lcom/movial/ipphone/EmergencyCallController;->transitToDialingState(Ljava/lang/String;)V

    .line 989
    :cond_1
    sget-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v1, :cond_2

    .line 990
    const-string v1, "IPPhoneProxy"

    const-string v2, "ims call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1, p1}, Lcom/movial/ipphone/IPPhone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 995
    :goto_0
    return-object v1

    .line 994
    :cond_2
    const-string v1, "IPPhoneProxy"

    const-string v2, "gsm call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0
.end method

.method public dialConferenceCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1763
    const/4 v0, 0x0

    return-object v0
.end method

.method public dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1656
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1657
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 670
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1213
    return-void
.end method

.method public disableQos(I)I
    .locals 1
    .parameter "qosId"

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableQos(I)I

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1551
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V

    .line 1552
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 1553
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 935
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 936
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1209
    return-void
.end method

.method public enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I
    .locals 1
    .parameter "qosSpec"
    .parameter "type"

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 1412
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 1414
    :goto_0
    return-void

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->exitEmergencyCallbackMode()V

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 949
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->explicitCallTransfer()V

    .line 951
    :goto_0
    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    goto :goto_0
.end method

.method public gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V
    .locals 1
    .parameter "rand"
    .parameter "autn"
    .parameter "onComplete"

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V

    .line 1568
    return-void
.end method

.method public gbaAuthenticateNaf([BLandroid/os/Message;)V
    .locals 1
    .parameter "nafId"
    .parameter "onComplete"

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->gbaAuthenticateNaf([BLandroid/os/Message;)V

    .line 1572
    return-void
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivePhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1135
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "commandInterfacecbFlavour"
    .parameter "onComplete"

    .prologue
    .line 1664
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 1666
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1090
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1092
    :goto_0
    return-void

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1124
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->getCallWaiting(Landroid/os/Message;)V

    .line 1126
    :goto_0
    return-void

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getCatService()Lcom/android/internal/telephony/cat/CatService;
    .locals 1

    .prologue
    .line 1802
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaCurrIdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1777
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 1368
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 1201
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmergencyCallPowerState()Z
    .locals 1

    .prologue
    .line 1634
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getDesiredPowerState()Z

    move-result v0

    .line 1637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEmergencyPreference()I
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0}, Lcom/movial/ipphone/EmergencyCallController;->getEmergencyPreference()I

    move-result v0

    return v0
.end method

.method public getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0}, Lcom/movial/ipphone/EmergencyCallController;->getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v0

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 941
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFDNavailable()Z
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v0

    return v0
.end method

.method public getForceEmergencyMode()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ID"

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiInCDMAGSMPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImeiInCDMAGSMPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getImsForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getImsRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1172
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getMute()Z

    move-result v0

    .line 1173
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 1159
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1112
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 1114
    :goto_0
    return-void

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    .line 785
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneIndex()I
    .locals 1

    .prologue
    .line 1774
    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1736
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1155
    return-void
.end method

.method public getQosStatus(I)I
    .locals 1
    .parameter "qosId"

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getQosStatus(I)I

    move-result v0

    return v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSMSPavailable()Z

    move-result v0

    return v0
.end method

.method public getSMSavailable()Z
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSMSavailable()Z

    move-result v0

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 638
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 639
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    goto :goto_0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSktImsiM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSktImsiM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSktIrm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1381
    return-void
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1797
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 3

    .prologue
    .line 677
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 678
    .local v0, mGsm:Lcom/android/internal/telephony/Phone$State;
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 680
    .local v1, mIP:Lcom/android/internal/telephony/Phone$State;
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    .line 682
    :goto_0
    return-object v2

    .line 681
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_3

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 682
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    return v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 250
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 251
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error! This handler was not registered for this message type. Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPPhoneProxy;->loge(Ljava/lang/String;)V

    .line 302
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 303
    return-void

    .line 254
    :pswitch_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/movial/ipphone/IPPhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRilVersion:I

    goto :goto_0

    .line 262
    :cond_0
    const-string v3, "Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 263
    const/4 v3, -0x1

    iput v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRilVersion:I

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 271
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    array-length v3, v3

    if-eqz v3, :cond_1

    .line 272
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 273
    .local v2, newVoiceTech:I
    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhoneProxy;->updatePhoneObject(I)V

    goto :goto_0

    .line 275
    .end local v2           #newVoiceTech:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice Radio Technology event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no tech!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPPhoneProxy;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice Radio Technology event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPPhoneProxy;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 284
    .local v1, emergencyCallPref:I
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v3, v1}, Lcom/movial/ipphone/EmergencyCallController;->setEmergencyPreference(I)V

    .line 285
    const-string v3, "IPPhoneProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update mEmergencyCallPref to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 289
    .end local v1           #emergencyCallPref:I
    :pswitch_4
    const-string v3, "IPPhoneProxy"

    const-string v4, "EVENT_BIND_TO_IPSERVICE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    goto/16 :goto_0

    .line 294
    :pswitch_5
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->broadcastOperatorName()V

    goto/16 :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialString"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1183
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1187
    return-void
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isMMICode(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialString"

    .prologue
    .line 1820
    const/4 v0, 0x0

    return v0
.end method

.method public isManualNetSelAllowed()Z
    .locals 1

    .prologue
    .line 1709
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->isManualNetSelAllowed()Z

    move-result v0

    .line 1710
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isManualNetSelAllowed()Z

    move-result v0

    goto :goto_0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialStr"

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public modifyQos(ILcom/android/internal/telephony/QosSpec;)I
    .locals 1
    .parameter "qosId"
    .parameter "qosSpec"

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->modifyQos(ILcom/android/internal/telephony/QosSpec;)I

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    .line 1377
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1229
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1250
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1358
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1481
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1428
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 842
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 755
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 756
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1448
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 861
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 862
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 832
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 822
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 745
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 746
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1473
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 775
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 776
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 765
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 766
    return-void
.end method

.method public registerForNewIMSCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1755
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 736
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1457
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 725
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 726
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1465
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 881
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 870
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 871
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 872
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 795
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 796
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1438
    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 889
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 852
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 813
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 805
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1489
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 715
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 716
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 914
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->rejectCall()V

    .line 916
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    goto :goto_0
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1557
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 1558
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    .line 1559
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 1560
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "nonce"
    .parameter "response"

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 1515
    return-void
.end method

.method public resumeQos(I)I
    .locals 1
    .parameter "qosId"

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->resumeQos(I)I

    move-result v0

    return v0
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1143
    return-void
.end method

.method public selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "operatorNumeric"
    .parameter "operatorAlphaLong"
    .parameter "response"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1147
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1409
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 1016
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->sendDtmf(C)V

    .line 1018
    :goto_0
    return-void

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "ussdMessge"

    .prologue
    .line 789
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->sendUssdResponse(Ljava/lang/String;)V

    .line 791
    :goto_0
    return-void

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 1225
    return-void
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 6
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 1684
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    move-result v0

    .line 1685
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1673
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    .line 1674
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 7
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 1105
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/movial/ipphone/IPPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 1107
    :goto_0
    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 1097
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1099
    :goto_0
    return-void

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 1129
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 1131
    :goto_0
    return-void

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1255
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 1260
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 1373
    return-void
.end method

.method public setDataReadinessChecks(ZZZ)V
    .locals 1
    .parameter "checkConnectivity"
    .parameter "checkSubscription"
    .parameter "tryDataCalls"

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setDataReadinessChecks(ZZZ)V

    .line 1652
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1237
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 1179
    return-void
.end method

.method public setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/EmergencyCallController;->setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V

    .line 1631
    return-void
.end method

.method public setForceEmergencyMode(Z)V
    .locals 6
    .parameter "force"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 229
    const-string v1, "IPPhoneProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setForceEmergencyMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "CELL_ONLY"

    invoke-static {v1, v4, v2}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    if-nez p1, :cond_2

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    .line 232
    if-nez p1, :cond_3

    :goto_1
    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    .line 235
    :cond_0
    iget-boolean v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    if-eq p1, v1, :cond_1

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.movial.force_emergency_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "force"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v1, p1}, Lcom/movial/ipphone/EmergencyCallController;->notifyForceEmergencyModeChanged(Z)V

    .line 241
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iput-boolean p1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    .line 242
    return-void

    :cond_2
    move v1, v3

    .line 231
    goto :goto_0

    :cond_3
    move v2, v3

    .line 232
    goto :goto_1
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"
    .parameter "onComplete"

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1577
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1068
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 1167
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->setMute(Z)V

    .line 1169
    :goto_0
    return-void

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1139
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1497
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1498
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1163
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1164
    return-void
.end method

.method public setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1192
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 1118
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1121
    :goto_0
    return-void

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 1742
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1151
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1032
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1385
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .parameter "ttyMode"
    .parameter "onComplete"

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1353
    return-void
.end method

.method public setTransmitPower(ILandroid/os/Message;)V
    .locals 1
    .parameter "powerLevel"
    .parameter "onCompleted"

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTransmitPower(ILandroid/os/Message;)V

    .line 1645
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1
    .parameter "f"

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 1217
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1086
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 1021
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->startDtmf(C)V

    .line 1023
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 1026
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->stopDtmf()V

    .line 1028
    :goto_0
    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    goto :goto_0
.end method

.method public suspendQos(I)I
    .locals 1
    .parameter "qosId"

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->suspendQos(I)I

    move-result v0

    return v0
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 919
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->switchHoldingAndActive()V

    .line 921
    :goto_0
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0
.end method

.method public unSetOnUnsolOemHookExtApp(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unSetOnUnsolOemHookExtApp(Landroid/os/Handler;)V

    .line 1197
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1433
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 847
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 760
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 761
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1453
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 865
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 866
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 867
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 837
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 827
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 750
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 751
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 1477
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 780
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 781
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 770
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 771
    return-void
.end method

.method public unregisterForNewIMSCall(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1758
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 740
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 741
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 1461
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 730
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 731
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 1469
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 885
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 876
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 877
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 800
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 801
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1443
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 893
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 857
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 817
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 809
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 1493
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 1485
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 720
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 721
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1502
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1503
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1205
    return-void
.end method
