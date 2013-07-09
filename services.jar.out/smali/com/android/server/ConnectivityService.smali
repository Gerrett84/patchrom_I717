.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;,
        Lcom/android/server/ConnectivityService$VpnCallback;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$MyHandler;,
        Lcom/android/server/ConnectivityService$FeatureUser;,
        Lcom/android/server/ConnectivityService$RouteAttributes;,
        Lcom/android/server/ConnectivityService$RadioAttributes;
    }
.end annotation


# static fields
.field private static final ADD:Z = true

.field private static final ALL_TETHER_DISABLE:I = 0x1

.field private static final ALL_TETHER_ENABLE:I = 0x3

.field private static final DBG:Z = true

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x6d

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x66

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x6c

.field private static final EVENT_INET_CONDITION_CHANGE:I = 0x68

.field private static final EVENT_INET_CONDITION_HOLD_END:I = 0x69

.field private static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x65

.field private static final EVENT_RESTORE_DNS:I = 0x6f

.field private static final EVENT_SEND_STICKY_BROADCAST_INTENT:I = 0x70

.field private static final EVENT_SET_DEPENDENCY_MET:I = 0x6e

.field private static final EVENT_SET_MOBILE_DATA:I = 0x6b

.field private static final EVENT_SET_NETWORK_PREFERENCE:I = 0x67

.field private static final EVENT_SET_POLICY_DATA_ENABLE:I = 0x71

.field private static final INET_CONDITION_LOG_MAX_SIZE:I = 0x1e

.field private static final INVALID_MSG_ARG:I = -0x1

.field private static final LOGD_RULES:Z = false

.field private static final MAX_HOSTROUTE_CYCLE_COUNT:I = 0xa

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final ONLY_WIFI_AND_BT_TEHTER_ENABLE:I = 0x2

.field private static final REMOVE:Z = false

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static final TO_DEFAULT_TABLE:Z = true

.field private static final TO_SECONDARY_TABLE:Z = false

.field private static final VDBG:Z = false

.field private static final VZW_APPS_APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "vzw.telephony.appsapn-restore"

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private mActiveDefaultNetwork:I

.field private mAddedRoutes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmMgrSvc:Lcom/android/server/AlarmManagerService;

.field private mCWPPProute:Landroid/net/RouteInfo;

.field private mCWWifiRoutes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCWWifigatewayAddress:I

.field mCWdnsServers:[Ljava/lang/String;

.field private mCWwsm:Landroid/net/wifi/WifiStateMachine;

.field private mCWwst:Landroid/net/wifi/WifiStateTracker;

.field private mCneObj:Ljava/lang/Object;

.field private mCneStarted:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentLinkProperties:[Landroid/net/LinkProperties;

.field private mDefaultConnectionSequence:I

.field private mDefaultDns:Ljava/net/InetAddress;

.field private mDefaultInetCondition:I

.field private mDefaultInetConditionPublished:I

.field private mDefaultProxy:Landroid/net/ProxyProperties;

.field private mDefaultProxyDisabled:Z

.field private mDefaultProxyLock:Ljava/lang/Object;

.field private mDnsLock:Ljava/lang/Object;

.field private mDnsOverridden:Z

.field private mFeatureUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ConnectivityService$FeatureUser;",
            ">;"
        }
    .end annotation
.end field

.field private mFmcEnabled:Z

.field private mFmcSM:Lcom/android/server/FmcStateMachine;

.field private mGlobalProxy:Landroid/net/ProxyProperties;

.field private final mGlobalProxyLock:Ljava/lang/Object;

.field private mHSM:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

.field private mHandler:Landroid/os/Handler;

.field private mInetConditionChangeInFlight:Z

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mIsMobilePolicyEnabled:Z

.field private mLinkManager:Lcom/android/server/ILinkManager;

.field private mListener:Landroid/net/IFmcEventListener;

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNetConfigs:[Landroid/net/NetworkConfig;

.field private mNetRequestersPids:[Ljava/util/List;

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockCausedBy:Ljava/lang/String;

.field private mNetTransitionWakeLockSerialNumber:I

.field private mNetTransitionWakeLockTimeout:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkPreference:I

.field mNetworksDefined:I

.field private mNumDnsEntries:I

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPowerMgrSvc:Lcom/android/server/PowerManagerService;

.field private mPriorityList:[I

.field mProtectedNetworks:Ljava/util/List;

.field mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

.field private mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

.field private mRouteIdCtr:I

.field private mRulesLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mSystemReady:Z

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTetheringConfigValid:Z

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mVpn:Lcom/android/server/connectivity/Vpn;

.field private qosManager:Lcom/android/server/QosManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 33
    .parameter "context"
    .parameter "netd"
    .parameter "statsService"
    .parameter "policyManager"

    .prologue
    .line 441
    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 176
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 179
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mIsMobilePolicyEnabled:Z

    .line 187
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    .line 189
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 191
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 218
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 220
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 221
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 222
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 223
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 225
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    .line 227
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    .line 228
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mRouteIdCtr:I

    .line 336
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    .line 337
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCneObj:Ljava/lang/Object;

    .line 338
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    .line 339
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->qosManager:Lcom/android/server/QosManager;

    .line 349
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 357
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    .line 364
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 365
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    .line 366
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 369
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 370
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    .line 377
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mCWWifigatewayAddress:I

    .line 379
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCWPPProute:Landroid/net/RouteInfo;

    .line 380
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCWdnsServers:[Ljava/lang/String;

    .line 430
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mFmcSM:Lcom/android/server/FmcStateMachine;

    .line 431
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mListener:Landroid/net/IFmcEventListener;

    .line 432
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mFmcEnabled:Z

    .line 1746
    new-instance v2, Lcom/android/server/ConnectivityService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 442
    const-string v2, "ConnectivityService starting up"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 445
    const/16 v2, 0x13

    new-array v2, v2, [Lcom/android/server/ConnectivityService$RouteAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

    .line 446
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    const/16 v2, 0x13

    if-ge v14, v2, :cond_0

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

    new-instance v3, Lcom/android/server/ConnectivityService$RouteAttributes;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/ConnectivityService$RouteAttributes;-><init>(Lcom/android/server/ConnectivityService;)V

    aput-object v3, v2, v14

    .line 446
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 450
    :cond_0
    new-instance v13, Landroid/os/HandlerThread;

    const-string v2, "ConnectivityServiceThread"

    invoke-direct {v13, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 451
    .local v13, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->isCneAware()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 453
    new-instance v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v5, "ConnectivityServiceHSM"

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;-><init>(Lcom/android/server/ConnectivityService;Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHSM:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mHSM:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->start()V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mHSM:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    .line 463
    :goto_1
    const-string v2, "net.hostname"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 466
    .local v16, id:Ljava/lang/String;
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 467
    new-instance v2, Ljava/lang/String;

    const-string v3, "android-"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 468
    .local v24, name:Ljava/lang/String;
    const-string v2, "net.hostname"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .end local v16           #id:Ljava/lang/String;
    .end local v24           #name:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_dns_server"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 475
    .local v11, dns:Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 476
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 480
    :cond_3
    :try_start_0
    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_2
    const-string v2, "missing Context"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 486
    const-string v2, "missing INetworkManagementService"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    .line 487
    const-string v2, "missing INetworkPolicyManager"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 490
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 496
    :goto_3
    const-string v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/PowerManager;

    .line 498
    .local v28, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "ConnectivityService"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 502
    const/16 v2, 0x13

    new-array v2, v2, [Landroid/net/NetworkStateTracker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 504
    const/16 v2, 0x13

    new-array v2, v2, [Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getPersistedNetworkPreference()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 508
    const/16 v2, 0xe

    new-array v2, v2, [Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    .line 509
    const/16 v2, 0x13

    new-array v2, v2, [Landroid/net/NetworkConfig;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    .line 514
    .local v32, raStrings:[Ljava/lang/String;
    move-object/from16 v8, v32

    .local v8, arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v19, v0

    .local v19, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_4
    move/from16 v0, v19

    if-ge v15, v0, :cond_7

    aget-object v31, v8, v15

    .line 515
    .local v31, raString:Ljava/lang/String;
    new-instance v30, Lcom/android/server/ConnectivityService$RadioAttributes;

    invoke-direct/range {v30 .. v31}, Lcom/android/server/ConnectivityService$RadioAttributes;-><init>(Ljava/lang/String;)V

    .line 516
    .local v30, r:Lcom/android/server/ConnectivityService$RadioAttributes;
    move-object/from16 v0, v30

    iget v2, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    const/16 v3, 0xd

    if-le v2, v3, :cond_5

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 514
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 459
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v11           #dns:Ljava/lang/String;
    .end local v15           #i$:I
    .end local v19           #len$:I
    .end local v28           #powerManager:Landroid/os/PowerManager;
    .end local v30           #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v31           #raString:Ljava/lang/String;
    .end local v32           #raStrings:[Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/android/server/ConnectivityService$MyHandler;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/ConnectivityService$MyHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    goto/16 :goto_1

    .line 481
    .restart local v11       #dns:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 482
    .local v12, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting defaultDns using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 491
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v12

    .line 493
    .local v12, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to register INetworkPolicyListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 520
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v15       #i$:I
    .restart local v19       #len$:I
    .restart local v28       #powerManager:Landroid/os/PowerManager;
    .restart local v30       #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .restart local v31       #raString:Ljava/lang/String;
    .restart local v32       #raStrings:[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_6

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 525
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/ConnectivityService$RadioAttributes;->mType:I

    aput-object v30, v2, v3

    goto/16 :goto_5

    .line 528
    .end local v30           #r:Lcom/android/server/ConnectivityService$RadioAttributes;
    .end local v31           #raString:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 530
    .local v23, naStrings:[Ljava/lang/String;
    move-object/from16 v8, v23

    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_6
    move/from16 v0, v19

    if-ge v15, v0, :cond_b

    aget-object v22, v8, v15

    .line 532
    .local v22, naString:Ljava/lang/String;
    :try_start_2
    new-instance v20, Landroid/net/NetworkConfig;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 533
    .local v20, n:Landroid/net/NetworkConfig;
    move-object/from16 v0, v20

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_8

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 530
    .end local v20           #n:Landroid/net/NetworkConfig;
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 538
    .restart local v20       #n:Landroid/net/NetworkConfig;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_9

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_7

    .line 550
    .end local v20           #n:Landroid/net/NetworkConfig;
    :catch_2
    move-exception v2

    goto :goto_7

    .line 543
    .restart local v20       #n:Landroid/net/NetworkConfig;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mRadioAttributes:[Lcom/android/server/ConnectivityService$RadioAttributes;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    aget-object v2, v2, v3

    if-nez v2, :cond_a

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to use undefined radio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_7

    .line 548
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput-object v20, v2, v3

    .line 549
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 555
    .end local v20           #n:Landroid/net/NetworkConfig;
    .end local v22           #naString:Ljava/lang/String;
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v29

    .line 558
    .local v29, protectedNetworks:[I
    move-object/from16 v8, v29

    .local v8, arr$:[I
    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_8
    move/from16 v0, v19

    if-ge v15, v0, :cond_d

    aget v27, v8, v15

    .line 559
    .local v27, p:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v27

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 562
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring protectedNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_9

    .line 567
    .end local v27           #p:I
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .line 569
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v17, v2, -0x1

    .line 570
    .local v17, insertionPoint:I
    const/4 v10, 0x0

    .line 571
    .local v10, currentLowest:I
    const/16 v26, 0x0

    .line 572
    .end local v8           #arr$:[I
    .local v26, nextLowest:I
    :goto_a
    const/4 v2, -0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_13

    .line 573
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .local v8, arr$:[Landroid/net/NetworkConfig;
    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    move/from16 v18, v17

    .end local v17           #insertionPoint:I
    .local v18, insertionPoint:I
    :goto_b
    move/from16 v0, v19

    if-ge v15, v0, :cond_12

    aget-object v21, v8, v15

    .line 574
    .local v21, na:Landroid/net/NetworkConfig;
    if-nez v21, :cond_e

    move/from16 v17, v18

    .line 573
    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    :goto_c
    add-int/lit8 v15, v15, 0x1

    move/from16 v18, v17

    .end local v17           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    goto :goto_b

    .line 575
    :cond_e
    move-object/from16 v0, v21

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-ge v2, v10, :cond_f

    move/from16 v17, v18

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    goto :goto_c

    .line 576
    .end local v17           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    :cond_f
    move-object/from16 v0, v21

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-le v2, v10, :cond_11

    .line 577
    move-object/from16 v0, v21

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v0, v26

    if-lt v2, v0, :cond_10

    if-nez v26, :cond_1c

    .line 578
    :cond_10
    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v26, v0

    move/from16 v17, v18

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    goto :goto_c

    .line 582
    .end local v17           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    add-int/lit8 v17, v18, -0x1

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    move-object/from16 v0, v21

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput v3, v2, v18

    goto :goto_c

    .line 584
    .end local v17           #insertionPoint:I
    .end local v21           #na:Landroid/net/NetworkConfig;
    .restart local v18       #insertionPoint:I
    :cond_12
    move/from16 v10, v26

    .line 585
    const/16 v26, 0x0

    move/from16 v17, v18

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    goto :goto_a

    .line 589
    .end local v8           #arr$:[Landroid/net/NetworkConfig;
    :cond_13
    const/16 v2, 0x13

    new-array v2, v2, [Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    .line 590
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v8, arr$:[I
    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_d
    move/from16 v0, v19

    if-ge v15, v0, :cond_14

    aget v14, v8, v15

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v14

    .line 590
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 594
    :cond_14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    .line 596
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 598
    const-string v2, "cm.test.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 607
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    array-length v0, v8

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_f
    move/from16 v0, v19

    if-ge v15, v0, :cond_19

    aget v25, v8, v15

    .line 608
    .local v25, netType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v25

    iget v2, v2, Landroid/net/NetworkConfig;->radio:I

    packed-switch v2, :pswitch_data_0

    .line 651
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to create a DataStateTracker for an unknown radio type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v25

    iget v3, v3, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 607
    :cond_15
    :goto_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 598
    .end local v25           #netType:I
    :cond_16
    const/4 v2, 0x0

    goto :goto_e

    .line 610
    .restart local v25       #netType:I
    :pswitch_1
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_18

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v3, Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v25

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move/from16 v0, v25

    invoke-direct {v3, v0, v5}, Landroid/net/wifi/WifiStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v25

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 655
    :cond_17
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    const/4 v3, 0x0

    aput-object v3, v2, v25

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v25

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_10

    .line 620
    :cond_18
    const/16 v2, 0xd

    move/from16 v0, v25

    if-ne v0, v2, :cond_17

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v3, Landroid/net/wifi/WifiP2pStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v25

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move/from16 v0, v25

    invoke-direct {v3, v0, v5}, Landroid/net/wifi/WifiP2pStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v25

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_11

    .line 627
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v3, Landroid/net/MobileDataStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v25

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move/from16 v0, v25

    invoke-direct {v3, v0, v5}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v25

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_11

    .line 632
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    new-instance v3, Landroid/net/DummyDataStateTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v25

    iget-object v5, v5, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    move/from16 v0, v25

    invoke-direct {v3, v0, v5}, Landroid/net/DummyDataStateTracker;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v25

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_11

    .line 637
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v3

    aput-object v3, v2, v25

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_11

    .line 641
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->makeWimaxStateTracker()Landroid/net/NetworkStateTracker;

    move-result-object v3

    aput-object v3, v2, v25

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    if-eqz v2, :cond_17

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_11

    .line 647
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-static {}, Landroid/net/EthernetDataTracker;->getInstance()Landroid/net/EthernetDataTracker;

    move-result-object v3

    aput-object v3, v2, v25

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_11

    .line 661
    .end local v25           #netType:I
    :cond_19
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 662
    .local v9, b:Landroid/os/IBinder;
    invoke-static {v9}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 664
    .local v4, nmService:Landroid/os/INetworkManagementService;
    new-instance v2, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceTypes()[I

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    .line 670
    new-instance v2, Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/ConnectivityService$VpnCallback;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    invoke-direct {v2, v3, v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 673
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {v4, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-interface {v4, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 680
    :goto_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    .line 683
    new-instance v2, Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6d

    invoke-direct {v2, v3, v5}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 686
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->loadGlobalProxy()V

    .line 687
    return-void

    .line 665
    :cond_1b
    const/4 v2, 0x0

    goto :goto_12

    .line 675
    :catch_3
    move-exception v12

    .line 676
    .restart local v12       #e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering observer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_13

    .end local v4           #nmService:Landroid/os/INetworkManagementService;
    .end local v9           #b:Landroid/os/IBinder;
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v17           #insertionPoint:I
    .local v8, arr$:[Landroid/net/NetworkConfig;
    .restart local v18       #insertionPoint:I
    .restart local v21       #na:Landroid/net/NetworkConfig;
    :cond_1c
    move/from16 v17, v18

    .end local v18           #insertionPoint:I
    .restart local v17       #insertionPoint:I
    goto/16 :goto_c

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$004(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/ConnectivityService;->mRouteIdCtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mRouteIdCtr:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/ConnectivityService;)Ljava/net/InetAddress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    return v0
.end method

.method static synthetic access$11302(Lcom/android/server/ConnectivityService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput p1, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    return p1
.end method

.method static synthetic access$11600(Lcom/android/server/ConnectivityService;)[Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/server/ConnectivityService;Ljava/util/Collection;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->writePidDns(Ljava/util/Collection;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11900(Lcom/android/server/ConnectivityService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$12100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V

    return-void
.end method

.method static synthetic access$12900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Vpn;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$13000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/android/server/ConnectivityService;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$13700(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/ConnectivityService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/ConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforcePreference()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mFmcEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/ConnectivityService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput p1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    return p1
.end method

.method static synthetic access$6808(Lcom/android/server/ConnectivityService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    return v0
.end method

.method static synthetic access$6902(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/ConnectivityService;)[Lcom/android/server/ConnectivityService$RouteAttributes;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/ConnectivityService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput p1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    return p1
.end method

.method private addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 7
    .parameter "p"
    .parameter "r"
    .parameter "toDefaultTable"

    .prologue
    .line 1594
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    move-result v0

    return v0
.end method

.method private addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "lp"
    .parameter "addr"

    .prologue
    const/4 v0, 0x1

    .line 1602
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZ)Z

    move-result v0

    return v0
.end method

.method private bumpDns()V
    .locals 6

    .prologue
    .line 2732
    const-string v3, "net.dnschange"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2733
    .local v2, propVal:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2734
    .local v1, n:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2736
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2739
    :cond_0
    :goto_0
    const-string v3, "net.dnschange"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2744
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2748
    const/high16 v3, 0x800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2749
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2750
    return-void

    .line 2737
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 3661
    .local p0, value:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    .line 3662
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3664
    :cond_0
    return-object p0
.end method

.method private createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 5
    .parameter "info"

    .prologue
    .line 5960
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x2000

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 5961
    .local v0, ni:Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5962
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 5963
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 5965
    return-object v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    return-void
.end method

.method private enforcePreference()V
    .locals 3

    .prologue
    .line 829
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    :cond_0
    return-void

    .line 832
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    const/4 v0, 0x0

    .local v0, t:I
    :goto_0
    const/16 v1, 0xd

    if-gt v0, v1, :cond_0

    .line 836
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tearing down "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in enforcePreference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 842
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 835
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    return-void
.end method

.method private enforceTetherChangePermission()V
    .locals 3

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    return-void
.end method

.method private getConnectivityChangeDelay()I
    .locals 4

    .prologue
    .line 799
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 802
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "conn.connectivity_change_delay"

    const/16 v3, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 805
    .local v1, defaultDelay:I
    const-string v2, "connectivity_change_delay"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;
    .locals 4
    .parameter "tracker"
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 884
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 885
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 888
    .end local v0           #info:Landroid/net/NetworkInfo;
    .local v1, info:Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 890
    .end local v1           #info:Landroid/net/NetworkInfo;
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_0
    return-object v0
.end method

.method private getNetworkInfo(II)Landroid/net/NetworkInfo;
    .locals 4
    .parameter "networkType"
    .parameter "uid"

    .prologue
    .line 921
    const/4 v0, 0x0

    .line 922
    .local v0, info:Landroid/net/NetworkInfo;
    const-string v2, ""

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 923
    if-eqz p1, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 926
    const/16 p1, 0xc

    .line 930
    :cond_1
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 931
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v2, p1

    .line 932
    .local v1, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v1, :cond_2

    .line 933
    invoke-direct {p0, v1, p2}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 936
    .end local v1           #tracker:Landroid/net/NetworkStateTracker;
    :cond_2
    return-object v0
.end method

.method private getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    .locals 5
    .parameter "networkType"

    .prologue
    .line 1003
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1005
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1006
    new-instance v1, Landroid/net/NetworkState;

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    .line 1010
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPersistedNetworkPreference()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 810
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 812
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "network_preference"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 814
    .local v1, networkPrefSetting:I
    if-eq v1, v3, :cond_0

    .line 818
    .end local v1           #networkPrefSetting:I
    :goto_0
    return v1

    .restart local v1       #networkPrefSetting:I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getRestoreDefaultNetworkDelay(I)I
    .locals 5
    .parameter "networkType"

    .prologue
    .line 2857
    const-string v3, "VZW"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2858
    const/16 v3, 0xc

    if-ne p1, v3, :cond_1

    .line 2859
    const-string v3, "vzw.telephony.appsapn-restore"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2861
    .local v1, restoreVzwAppsApnDelayStr:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2864
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2887
    .end local v1           #restoreVzwAppsApnDelayStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 2865
    .restart local v1       #restoreVzwAppsApnDelayStr:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2871
    .end local v1           #restoreVzwAppsApnDelayStr:Ljava/lang/String;
    :cond_1
    const-string v3, "android.telephony.apn-restore"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2873
    .local v0, restoreDefaultNetworkDelayStr:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2876
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 2877
    :catch_1
    move-exception v3

    .line 2881
    :cond_2
    const v2, 0xea60

    .line 2883
    .local v2, ret:I
    const/16 v3, 0x12

    if-gt p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    .line 2885
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1

    iget v2, v3, Landroid/net/NetworkConfig;->restoreTime:I

    goto :goto_0
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 3542
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3543
    const/4 p1, 0x0

    .line 3545
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3546
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 3554
    :goto_0
    return-void

    .line 3547
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-ne v0, p1, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 3553
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3548
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 3550
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v0, :cond_3

    .line 3551
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    .line 3553
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleConnect(Landroid/net/NetworkInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    const/4 v6, -0x1

    const/4 v10, 0x0

    .line 2296
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 2299
    .local v4, type:I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    .line 2300
    .local v1, isFailover:Z
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v5, v4

    .line 2304
    .local v3, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2305
    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v4, :cond_4

    .line 2306
    iget v5, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v5, v5, v6

    iget v5, v5, Landroid/net/NetworkConfig;->priority:I

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v6, v6, v4

    iget v6, v6, Landroid/net/NetworkConfig;->priority:I

    if-gt v5, v6, :cond_1

    :cond_0
    iget v5, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v5, v6, :cond_3

    .line 2315
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 2368
    :cond_2
    :goto_0
    return-void

    .line 2319
    :cond_3
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v2, v5, v6

    .line 2322
    .local v2, otherNet:Landroid/net/NetworkStateTracker;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Policy requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " teardown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2325
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2326
    const-string v5, "Network declined teardown request"

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2327
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto :goto_0

    .line 2332
    .end local v2           #otherNet:Landroid/net/NetworkStateTracker;
    :cond_4
    monitor-enter p0

    .line 2336
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2337
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x6c

    iget v8, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v9, -0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2343
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2344
    iput v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 2348
    iput v10, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2349
    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    .line 2350
    iput-boolean v10, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 2354
    :cond_6
    invoke-interface {v3, v10}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 2355
    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 2356
    invoke-direct {p0, v4, v10}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 2357
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 2360
    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2361
    .local v0, iface:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2363
    :try_start_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2364
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 2343
    .end local v0           #iface:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .locals 12
    .parameter "info"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2189
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    aget-object v7, v7, v8

    invoke-interface {v7, v9}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 2191
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    .line 2192
    .local v4, reason:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 2195
    .local v0, extraInfo:Ljava/lang/String;
    if-nez v4, :cond_6

    .line 2196
    const-string v5, "."

    .line 2200
    .local v5, reasonText:Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempt to connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2202
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2204
    .local v2, intent:Landroid/content/Intent;
    const-string v7, ""

    const-string v8, "VZW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2206
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/16 v8, 0x12

    if-ne v7, v8, :cond_7

    .line 2207
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 2208
    .local v3, ni:Landroid/net/NetworkInfo;
    const-string v7, "networkInfo"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2216
    .end local v3           #ni:Landroid/net/NetworkInfo;
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    if-nez v7, :cond_0

    .line 2217
    const-string v7, "noConnectivity"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2219
    :cond_0
    if-eqz v4, :cond_1

    .line 2220
    const-string v7, "reason"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2222
    :cond_1
    if-eqz v0, :cond_2

    .line 2223
    const-string v7, "extraInfo"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2225
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2226
    const-string v7, "isFailover"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2227
    invoke-virtual {p1, v9}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2230
    :cond_3
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2231
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 2232
    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v7, v11, :cond_9

    .line 2233
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v8, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v7, v7, v8

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 2234
    .local v6, switchTo:Landroid/net/NetworkInfo;
    const-string v7, "otherNetwork"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2241
    .end local v6           #switchTo:Landroid/net/NetworkInfo;
    :cond_4
    :goto_2
    const-string v7, "inetCondition"

    iget v8, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2243
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2244
    .local v1, immediateIntent:Landroid/content/Intent;
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2245
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2246
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2251
    iget v7, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v7, v11, :cond_5

    .line 2252
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v8, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v7, v7, v8

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 2254
    :cond_5
    return-void

    .line 2198
    .end local v1           #immediateIntent:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #reasonText:Ljava/lang/String;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #reasonText:Ljava/lang/String;
    goto/16 :goto_0

    .line 2210
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_7
    const-string v7, "networkInfo"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 2213
    :cond_8
    const-string v7, "networkInfo"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 2236
    :cond_9
    iput v9, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2237
    const-string v7, "noConnectivity"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2
.end method

.method private handleConnectivityChange(IZ)V
    .locals 13
    .parameter "netType"
    .parameter "doReset"

    .prologue
    const/4 v10, 0x0

    .line 2377
    if-eqz p2, :cond_3

    const/4 v9, 0x3

    .line 2383
    .local v9, resetMask:I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V

    .line 2385
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aget-object v1, v11, p1

    .line 2386
    .local v1, curLp:Landroid/net/LinkProperties;
    const/4 v7, 0x0

    .line 2388
    .local v7, newLp:Landroid/net/LinkProperties;
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v11, v11, p1

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2389
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v11, v11, p1

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 2397
    if-eqz v1, :cond_5

    .line 2398
    invoke-virtual {v1, v7}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 2399
    invoke-virtual {v1, v7}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v0

    .line 2400
    .local v0, car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    iget-object v11, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-eqz v11, :cond_b

    .line 2401
    :cond_0
    iget-object v11, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 2402
    .local v5, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet4Address;

    if-eqz v11, :cond_2

    .line 2403
    or-int/lit8 v9, v9, 0x1

    .line 2405
    :cond_2
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet6Address;

    if-eqz v11, :cond_1

    .line 2406
    or-int/lit8 v9, v9, 0x2

    goto :goto_1

    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v1           #curLp:Landroid/net/LinkProperties;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #linkAddr:Landroid/net/LinkAddress;
    .end local v7           #newLp:Landroid/net/LinkProperties;
    .end local v9           #resetMask:I
    :cond_3
    move v9, v10

    .line 2377
    goto :goto_0

    .line 2410
    .restart local v0       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .restart local v1       #curLp:Landroid/net/LinkProperties;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v7       #newLp:Landroid/net/LinkProperties;
    .restart local v9       #resetMask:I
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: addresses changed linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n   car="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2430
    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2431
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V

    .line 2441
    :cond_6
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aput-object v7, v11, p1

    .line 2442
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v11, v11, p1

    invoke-virtual {v11}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v11

    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;

    aget-object v12, v12, p1

    invoke-direct {p0, v7, v1, v11, v12}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZLcom/android/server/ConnectivityService$RouteAttributes;)Z

    move-result v8

    .line 2447
    .local v8, resetDns:Z
    if-nez v9, :cond_7

    if-eqz v8, :cond_9

    .line 2448
    :cond_7
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v11, v11, p1

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    .line 2449
    .local v6, linkProperties:Landroid/net/LinkProperties;
    if-eqz v6, :cond_9

    .line 2450
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 2451
    .local v4, iface:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 2452
    if-eqz v9, :cond_8

    .line 2453
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetConnections("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2454
    invoke-static {v4, v9}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 2458
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_8

    .line 2459
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v11, v4, v10}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 2462
    :cond_8
    if-eqz v8, :cond_9

    .line 2465
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v10, v4}, Landroid/os/INetworkManagementService;->flushInterfaceDnsCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2478
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #linkProperties:Landroid/net/LinkProperties;
    :cond_9
    :goto_3
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v10, v10, p1

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    const-string v11, "linkPropertiesChanged"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2480
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2481
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v11, v11, p1

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/connectivity/Tethering;->handleTetherIfaceChange(Landroid/net/NetworkInfo;)V

    .line 2484
    :cond_a
    return-void

    .line 2416
    .end local v8           #resetDns:Z
    .restart local v0       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: address are the same reset per doReset linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2422
    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_c
    const/4 v9, 0x3

    .line 2424
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: interface not not equivalent reset both linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2466
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #linkProperties:Landroid/net/LinkProperties;
    .restart local v8       #resetDns:Z
    :catch_0
    move-exception v2

    .line 2468
    .local v2, e:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception resetting dns cache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private handleDeprecatedGlobalHttpProxy()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3557
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "http_proxy"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3559
    .local v3, proxy:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3560
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3561
    .local v0, data:[Ljava/lang/String;
    aget-object v4, v0, v8

    .line 3562
    .local v4, proxyHost:Ljava/lang/String;
    const/16 v5, 0x1f90

    .line 3563
    .local v5, proxyPort:I
    array-length v6, v0

    if-le v6, v9, :cond_0

    .line 3565
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 3570
    :cond_0
    new-instance v2, Landroid/net/ProxyProperties;

    aget-object v6, v0, v8

    const-string v7, ""

    invoke-direct {v2, v6, v5, v7}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3571
    .local v2, p:Landroid/net/ProxyProperties;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 3573
    .end local v0           #data:[Ljava/lang/String;
    .end local v2           #p:Landroid/net/ProxyProperties;
    .end local v4           #proxyHost:Ljava/lang/String;
    .end local v5           #proxyPort:I
    :cond_1
    :goto_0
    return-void

    .line 3566
    .restart local v0       #data:[Ljava/lang/String;
    .restart local v4       #proxyHost:Ljava/lang/String;
    .restart local v5       #proxyPort:I
    :catch_0
    move-exception v1

    .line 3567
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .locals 22
    .parameter "info"

    .prologue
    .line 1961
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v18

    .line 1963
    .local v18, prevNetType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v20, v0

    aget-object v17, v20, v18

    .line 1972
    .local v17, pids:Ljava/util/List;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_0

    .line 1973
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 1977
    .local v16, pid:Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 1972
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1981
    .end local v5           #i:I
    .end local v16           #pid:Ljava/lang/Integer;
    .end local v17           #pids:Ljava/util/List;
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v20, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1983
    .local v8, intent:Landroid/content/Intent;
    const-string v20, ""

    const-string v21, "VZW"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1985
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    const/16 v21, 0x12

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 1986
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v14

    .line 1987
    .local v14, ni:Landroid/net/NetworkInfo;
    const-string v20, "networkInfo"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1995
    .end local v14           #ni:Landroid/net/NetworkInfo;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1996
    const-string v20, "isFailover"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1997
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1999
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 2000
    const-string v20, "reason"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2002
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 2003
    const-string v20, "extraInfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2007
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 2008
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->tryFailover(I)V

    .line 2009
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    invoke-interface/range {v20 .. v20}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v19

    .line 2011
    .local v19, switchTo:Landroid/net/NetworkInfo;
    const-string v20, "otherNetwork"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2017
    .end local v19           #switchTo:Landroid/net/NetworkInfo;
    :cond_4
    :goto_2
    const-string v20, "inetCondition"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2020
    const/4 v4, 0x1

    .line 2021
    .local v4, doReset:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v20, v0

    aget-object v20, v20, v18

    invoke-interface/range {v20 .. v20}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v11

    .line 2022
    .local v11, linkProperties:Landroid/net/LinkProperties;
    if-eqz v11, :cond_a

    .line 2023
    invoke-virtual {v11}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    .line 2024
    .local v15, oldIface:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 2025
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v3, arr$:[Landroid/net/NetworkStateTracker;
    array-length v10, v3

    .local v10, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_3
    if-ge v6, v10, :cond_a

    aget-object v13, v3, v6

    .line 2026
    .local v13, networkStateTracker:Landroid/net/NetworkStateTracker;
    if-nez v13, :cond_9

    .line 2025
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1989
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v4           #doReset:Z
    .end local v6           #i$:I
    .end local v10           #len$:I
    .end local v11           #linkProperties:Landroid/net/LinkProperties;
    .end local v13           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v15           #oldIface:Ljava/lang/String;
    :cond_6
    const-string v20, "networkInfo"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1992
    :cond_7
    const-string v20, "networkInfo"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 2013
    :cond_8
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2014
    const-string v20, "noConnectivity"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 2027
    .restart local v3       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v4       #doReset:Z
    .restart local v6       #i$:I
    .restart local v10       #len$:I
    .restart local v11       #linkProperties:Landroid/net/LinkProperties;
    .restart local v13       #networkStateTracker:Landroid/net/NetworkStateTracker;
    .restart local v15       #oldIface:Ljava/lang/String;
    :cond_9
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 2028
    .local v12, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 2029
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 2030
    .local v9, l:Landroid/net/LinkProperties;
    if-eqz v9, :cond_5

    .line 2031
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2032
    const/4 v4, 0x0

    .line 2041
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v6           #i$:I
    .end local v9           #l:Landroid/net/LinkProperties;
    .end local v10           #len$:I
    .end local v12           #networkInfo:Landroid/net/NetworkInfo;
    .end local v13           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v15           #oldIface:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V

    .line 2043
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2044
    .local v7, immediateIntent:Landroid/content/Intent;
    const-string v20, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2045
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2046
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v8, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 2051
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 2052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v21, v0

    aget-object v20, v20, v21

    invoke-interface/range {v20 .. v20}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 2055
    :cond_b
    return-void
.end method

.method private handleDnsConfigurationChange(I)V
    .locals 13
    .parameter "netType"

    .prologue
    .line 2819
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v10, p1

    .line 2820
    .local v5, nt:Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2821
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    .line 2822
    .local v6, p:Landroid/net/LinkProperties;
    if-nez v6, :cond_1

    .line 2852
    .end local v6           #p:Landroid/net/LinkProperties;
    :cond_0
    :goto_0
    return-void

    .line 2823
    .restart local v6       #p:Landroid/net/LinkProperties;
    :cond_1
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    .line 2824
    .local v1, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .line 2825
    .local v0, changed:Z
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2826
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 2827
    .local v4, network:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2828
    :try_start_0
    iget-boolean v10, p0, Lcom/android/server/ConnectivityService;->mDnsOverridden:Z

    if-nez v10, :cond_3

    .line 2829
    const-string v2, ""

    .line 2830
    .local v2, domain:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDomainName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2831
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDomainName()Ljava/lang/String;

    move-result-object v2

    .line 2833
    :cond_2
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v4, v10, v1, v2}, Lcom/android/server/ConnectivityService;->updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    .line 2835
    .end local v2           #domain:Ljava/lang/String;
    :cond_3
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2850
    .end local v4           #network:Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    goto :goto_0

    .line 2835
    .restart local v4       #network:Ljava/lang/String;
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 2838
    .end local v4           #network:Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2844
    :goto_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v8, v10, p1

    .line 2845
    .local v8, pids:Ljava/util/List;
    const/4 v9, 0x0

    .local v9, y:I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 2846
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 2847
    .local v7, pid:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v1, v10}, Lcom/android/server/ConnectivityService;->writePidDns(Ljava/util/Collection;I)Z

    move-result v0

    .line 2845
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2840
    .end local v7           #pid:Ljava/lang/Integer;
    .end local v8           #pids:Ljava/util/List;
    .end local v9           #y:I
    :catch_0
    move-exception v3

    .line 2841
    .local v3, e:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception setting dns servers: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleInetConditionChange(II)V
    .locals 6
    .parameter "netType"
    .parameter "condition"

    .prologue
    .line 3416
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3417
    const-string v1, "handleInetConditionChange: no active default network - ignore"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3449
    :cond_0
    :goto_0
    return-void

    .line 3420
    :cond_1
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-eq v1, p1, :cond_2

    .line 3421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionChange: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3430
    :cond_2
    iput p2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    .line 3432
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    if-nez v1, :cond_0

    .line 3435
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_3

    .line 3436
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_up_delay"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3442
    .local v0, delay:I
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 3443
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    iget v4, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    iget v5, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3439
    .end local v0           #delay:I
    :cond_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_down_delay"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delay:I
    goto :goto_1
.end method

.method private handleInetConditionHoldEnd(II)V
    .locals 3
    .parameter "netType"
    .parameter "sequence"

    .prologue
    .line 3453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionHoldEnd: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", published condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3457
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z

    .line 3459
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3460
    const-string v1, "handleInetConditionHoldEnd: no active default network - ignoring"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3481
    :goto_0
    return-void

    .line 3463
    :cond_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    .line 3464
    const-string v1, "handleInetConditionHoldEnd: event hold for obsolete network - ignoring"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3474
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3475
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3476
    const-string v1, "handleInetConditionHoldEnd: default network not connected - ignoring"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3479
    :cond_2
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3480
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleSetDependencyMet(IZ)V
    .locals 2
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 1740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetDependencyMet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setDependencyMet(Z)V

    .line 1744
    :cond_0
    return-void
.end method

.method private handleSetMobileData(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 1853
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1857
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 1884
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 1886
    :cond_1
    return-void
.end method

.method private handleSetNetworkPreference(I)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 784
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    iget v1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v1, p1, :cond_0

    .line 788
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 789
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "network_preference"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 790
    monitor-enter p0

    .line 791
    :try_start_0
    iput p1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 792
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforcePreference()V

    .line 796
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 792
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleSetPolicyDataEnable(IZ)V
    .locals 2
    .parameter "networkType"
    .parameter "enabled"

    .prologue
    .line 1898
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1900
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1901
    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setPolicyDataEnable(Z)V

    .line 1904
    if-nez p1, :cond_0

    .line 1905
    iput-boolean p2, p0, Lcom/android/server/ConnectivityService;->mIsMobilePolicyEnabled:Z

    .line 1909
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :cond_0
    return-void
.end method

.method private isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z
    .locals 7
    .parameter "tracker"
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 861
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, iface:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 866
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 867
    .local v1, networkCostly:Z
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 868
    .local v2, uidRules:I
    monitor-exit v4

    .line 870
    if-eqz v1, :cond_0

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 871
    const/4 v3, 0x1

    .line 875
    :cond_0
    return v3

    .line 868
    .end local v1           #networkCostly:Z
    .end local v2           #uidRules:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isNetworkMeteredUnchecked(I)Z
    .locals 2
    .parameter "networkType"

    .prologue
    .line 1044
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1045
    .local v0, state:Landroid/net/NetworkState;
    if-eqz v0, :cond_0

    .line 1047
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->isNetworkMetered(Landroid/net/NetworkState;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1051
    :goto_0
    return v1

    .line 1048
    :catch_0
    move-exception v1

    .line 1051
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSignedApplication(I)Z
    .locals 16
    .parameter "uid"

    .prologue
    .line 5827
    const-string v14, "Entered into isSignedApplication"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5829
    const/4 v2, 0x0

    .line 5830
    .local v2, callingPackageInfo:Landroid/content/pm/PackageInfo;
    const/4 v12, 0x0

    .line 5832
    .local v12, permissionPackageInfo:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 5833
    .local v8, mPackageManager:Landroid/content/pm/PackageManager;
    move/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 5835
    .local v3, callingPackageName:[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v3, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5838
    const/4 v14, 0x0

    :try_start_0
    aget-object v14, v3, v14

    const/16 v15, 0x40

    invoke-virtual {v8, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 5839
    const-string v14, "com.verizon.permissions.vzwappapn"

    const/16 v15, 0x40

    invoke-virtual {v8, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 5848
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 5850
    .local v4, callingPackageSignatures:[Landroid/content/pm/Signature;
    if-eqz v4, :cond_2

    .line 5852
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "signature: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5854
    iget-object v13, v12, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 5856
    .local v13, permissionPackageSignatures:[Landroid/content/pm/Signature;
    array-length v10, v4

    .line 5857
    .local v10, numberOfCallingPackageSignatures:I
    array-length v11, v13

    .line 5859
    .local v11, numberOfPermissionPackageSignatures:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v10, :cond_2

    .line 5860
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "signature: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v4, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5861
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    if-ge v7, v11, :cond_1

    .line 5863
    aget-object v14, v4, v6

    aget-object v15, v13, v7

    invoke-virtual {v14, v15}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 5865
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Signature of the calling post loaded application matched with verizon provided signatures "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v4, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5866
    const/4 v14, 0x1

    .line 5900
    .end local v4           #callingPackageSignatures:[Landroid/content/pm/Signature;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v10           #numberOfCallingPackageSignatures:I
    .end local v11           #numberOfPermissionPackageSignatures:I
    .end local v13           #permissionPackageSignatures:[Landroid/content/pm/Signature;
    :goto_2
    return v14

    .line 5841
    :catch_0
    move-exception v5

    .line 5843
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 5844
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Handling NameNotFoundException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5845
    const/4 v14, 0x0

    goto :goto_2

    .line 5861
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #callingPackageSignatures:[Landroid/content/pm/Signature;
    .restart local v6       #i:I
    .restart local v7       #j:I
    .restart local v10       #numberOfCallingPackageSignatures:I
    .restart local v11       #numberOfPermissionPackageSignatures:I
    .restart local v13       #permissionPackageSignatures:[Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5859
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5873
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v10           #numberOfCallingPackageSignatures:I
    .end local v11           #numberOfPermissionPackageSignatures:I
    .end local v13           #permissionPackageSignatures:[Landroid/content/pm/Signature;
    :cond_2
    :try_start_1
    iget-object v14, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_5

    .line 5875
    const-string v14, "It is a preloaded application"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5876
    const/4 v14, 0x0

    aget-object v14, v3, v14

    const/16 v15, 0x80

    invoke-virtual {v8, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v1, v14, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 5879
    .local v1, bundle:Landroid/os/Bundle;
    if-nez v1, :cond_3

    .line 5880
    const-string v14, "This preloaded application does not have the meta-data tag."

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5881
    const/4 v14, 0x0

    goto :goto_2

    .line 5884
    :cond_3
    const-string v14, "com.verizon.VZWAPPAPN"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5886
    .local v9, metaDataValue:Ljava/lang/String;
    if-eqz v9, :cond_5

    const-string v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "VerizonDefinedPermission"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 5887
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Its a preloaded application with metadata "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5888
    const/4 v14, 0x1

    goto :goto_2

    .line 5892
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v9           #metaDataValue:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 5895
    .restart local v5       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 5896
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5899
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const-string v14, "It is neither a preloaded app nor a post loaded app with correct signature"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5900
    const/4 v14, 0x0

    goto/16 :goto_2
.end method

.method private loadGlobalProxy()V
    .locals 7

    .prologue
    .line 3522
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3523
    .local v4, res:Landroid/content/ContentResolver;
    const-string v5, "global_http_proxy_host"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3524
    .local v1, host:Ljava/lang/String;
    const-string v5, "global_http_proxy_port"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3525
    .local v2, port:I
    const-string v5, "global_http_proxy_exclusion_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3527
    .local v0, exclList:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3528
    new-instance v3, Landroid/net/ProxyProperties;

    invoke-direct {v3, v1, v2, v0}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3529
    .local v3, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3530
    :try_start_0
    iput-object v3, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 3531
    monitor-exit v6

    .line 3533
    .end local v3           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_0
    return-void

    .line 3531
    .restart local v3       #proxyProperties:Landroid/net/ProxyProperties;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 3607
    const-string v0, "ConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 3611
    const-string v0, "ConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 3619
    const-string v0, "ConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 3615
    const-string v0, "ConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    return-void
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "info"
    .parameter "bcastType"

    .prologue
    .line 2159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2160
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "networkInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2161
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2162
    const-string v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2163
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2165
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2166
    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2168
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2169
    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2172
    :cond_2
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2173
    return-object v0
.end method

.method private makeVendorCne(Lcom/android/server/QosManager;)Ljava/lang/Object;
    .locals 7
    .parameter "qosMgr"

    .prologue
    .line 3843
    :try_start_0
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/com.quicinc.cne.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 3846
    .local v1, cneClassLoader:Ldalvik/system/PathClassLoader;
    const-string v4, "com.quicinc.cne.CNE"

    invoke-virtual {v1, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3847
    .local v0, cneClass:Ljava/lang/Class;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/android/server/ConnectivityService;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Lcom/android/server/QosManager;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 3849
    .local v2, cneConstructor:Ljava/lang/reflect/Constructor;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 3854
    .end local v0           #cneClass:Ljava/lang/Class;
    .end local v1           #cneClassLoader:Ldalvik/system/PathClassLoader;
    .end local v2           #cneConstructor:Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v4

    .line 3850
    :catch_0
    move-exception v3

    .line 3851
    .local v3, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception in makeVendorCne "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3853
    const-string v4, "Could not make vendor Cne obj. Disabling CNE"

    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3854
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeWimaxStateTracker()Landroid/net/NetworkStateTracker;
    .locals 20

    .prologue
    .line 691
    const/4 v13, 0x0

    .line 692
    .local v13, wimaxStateTrackerClass:Ljava/lang/Class;
    const/4 v10, 0x0

    .line 700
    .local v10, wimaxServiceClass:Ljava/lang/Class;
    const/4 v12, 0x0

    .line 702
    .local v12, wimaxStateTracker:Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1110039

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 705
    .local v3, isWimaxEnabled:Z
    if-eqz v3, :cond_0

    .line 707
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040044

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 709
    .local v6, wimaxJarLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040045

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 711
    .local v7, wimaxLibLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040046

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 713
    .local v9, wimaxManagerClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040047

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 715
    .local v11, wimaxServiceClassName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040048

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 718
    .local v14, wimaxStateTrackerClassName:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "wimaxJarLocation: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 719
    new-instance v5, Ldalvik/system/DexClassLoader;

    new-instance v17, Landroid/content/ContextWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v6, v0, v7, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 724
    .local v5, wimaxClassLoader:Ldalvik/system/DexClassLoader;
    :try_start_1
    invoke-virtual {v5, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 725
    .local v8, wimaxManagerClass:Ljava/lang/Class;
    invoke-virtual {v5, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 726
    invoke-virtual {v5, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 737
    :try_start_2
    const-string v17, "Starting Wimax Service... "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 739
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-class v19, Landroid/os/Handler;

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 741
    .local v16, wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/net/NetworkStateTracker;

    move-object v12, v0

    .line 744
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 746
    .local v15, wmxSrvConst:Ljava/lang/reflect/Constructor;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 747
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v12, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 748
    .local v4, svcInvoker:Landroid/os/IBinder;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 750
    const-string v17, "WiMax"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v12

    .line 761
    .end local v4           #svcInvoker:Landroid/os/IBinder;
    .end local v5           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v6           #wimaxJarLocation:Ljava/lang/String;
    .end local v7           #wimaxLibLocation:Ljava/lang/String;
    .end local v8           #wimaxManagerClass:Ljava/lang/Class;
    .end local v9           #wimaxManagerClassName:Ljava/lang/String;
    .end local v11           #wimaxServiceClassName:Ljava/lang/String;
    .end local v14           #wimaxStateTrackerClassName:Ljava/lang/String;
    .end local v15           #wmxSrvConst:Ljava/lang/reflect/Constructor;
    .end local v16           #wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v17

    .line 727
    .restart local v5       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v6       #wimaxJarLocation:Ljava/lang/String;
    .restart local v7       #wimaxLibLocation:Ljava/lang/String;
    .restart local v9       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v11       #wimaxServiceClassName:Ljava/lang/String;
    .restart local v14       #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 728
    .local v2, ex:Ljava/lang/ClassNotFoundException;
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception finding Wimax classes: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 729
    const/16 v17, 0x0

    goto :goto_0

    .line 731
    .end local v2           #ex:Ljava/lang/ClassNotFoundException;
    .end local v5           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v6           #wimaxJarLocation:Ljava/lang/String;
    .end local v7           #wimaxLibLocation:Ljava/lang/String;
    .end local v9           #wimaxManagerClassName:Ljava/lang/String;
    .end local v11           #wimaxServiceClassName:Ljava/lang/String;
    .end local v14           #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 732
    .local v2, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v17, "Wimax Resources does not exist!!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 733
    const/16 v17, 0x0

    goto :goto_0

    .line 752
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v5       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v6       #wimaxJarLocation:Ljava/lang/String;
    .restart local v7       #wimaxLibLocation:Ljava/lang/String;
    .restart local v8       #wimaxManagerClass:Ljava/lang/Class;
    .restart local v9       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v11       #wimaxServiceClassName:Ljava/lang/String;
    .restart local v14       #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 753
    .local v2, ex:Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception creating Wimax classes: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 754
    const/16 v17, 0x0

    goto :goto_0

    .line 757
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v6           #wimaxJarLocation:Ljava/lang/String;
    .end local v7           #wimaxLibLocation:Ljava/lang/String;
    .end local v8           #wimaxManagerClass:Ljava/lang/Class;
    .end local v9           #wimaxManagerClassName:Ljava/lang/String;
    .end local v11           #wimaxServiceClassName:Ljava/lang/String;
    .end local v14           #wimaxStateTrackerClassName:Ljava/lang/String;
    :cond_0
    const-string v17, "Wimax is not enabled or not added to the network attributes!!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 758
    const/16 v17, 0x0

    goto :goto_0
.end method

.method private modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z
    .locals 9
    .parameter "ifaceName"
    .parameter "lp"
    .parameter "r"
    .parameter "cycleCount"
    .parameter "doAdd"
    .parameter "toDefaultTable"

    .prologue
    const/4 v8, 0x0

    .line 1629
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1630
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyRoute got unexpected null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    move v0, v8

    .line 1697
    :goto_0
    return v0

    .line 1634
    :cond_1
    const/16 v0, 0xa

    if-le p4, v0, :cond_2

    .line 1635
    const-string v0, "Error modifying route - too much recursion"

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    move v0, v8

    .line 1636
    goto :goto_0

    .line 1639
    :cond_2
    invoke-virtual {p3}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1640
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1641
    .local v3, bestRoute:Landroid/net/RouteInfo;
    if-eqz v3, :cond_3

    .line 1642
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1644
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1650
    :goto_1
    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    .line 1653
    .end local v3           #bestRoute:Landroid/net/RouteInfo;
    :cond_3
    if-eqz p5, :cond_7

    .line 1656
    if-eqz p6, :cond_6

    .line 1657
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1659
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    :cond_4
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1648
    .restart local v3       #bestRoute:Landroid/net/RouteInfo;
    :cond_5
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    goto :goto_1

    .line 1661
    .end local v3           #bestRoute:Landroid/net/RouteInfo;
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1663
    :catch_0
    move-exception v7

    .line 1665
    .local v7, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception trying to add a route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    move v0, v8

    .line 1666
    goto :goto_0

    .line 1671
    .end local v7           #e:Ljava/lang/Exception;
    :cond_7
    if-eqz p6, :cond_8

    .line 1672
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1674
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1677
    :try_start_2
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1678
    :catch_1
    move-exception v7

    .restart local v7       #e:Ljava/lang/Exception;
    move v0, v8

    .line 1681
    goto/16 :goto_0

    .line 1689
    .end local v7           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1690
    :catch_2
    move-exception v7

    .restart local v7       #e:Ljava/lang/Exception;
    move v0, v8

    .line 1693
    goto/16 :goto_0
.end method

.method private modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZ)Z
    .locals 7
    .parameter "lp"
    .parameter "addr"
    .parameter "doAdd"
    .parameter "toDefaultTable"

    .prologue
    .line 1611
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1612
    .local v3, bestRoute:Landroid/net/RouteInfo;
    if-nez v3, :cond_0

    .line 1613
    invoke-static {p2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    .line 1624
    :goto_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    move-result v0

    return v0

    .line 1615
    :cond_0
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1617
    invoke-static {p2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    goto :goto_0

    .line 1621
    :cond_1
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v3

    goto :goto_0
.end method

.method private static native native_CWServiceConfigureRoutingTable_JNI(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private reassessPidDns(IZ)V
    .locals 13
    .parameter "myPid"
    .parameter "doBump"

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_4

    aget v2, v0, v3

    .line 2677
    .local v2, i:I
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v11, v11, v2

    invoke-virtual {v11}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2676
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2680
    :cond_1
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v11, v2

    .line 2681
    .local v6, nt:Landroid/net/NetworkStateTracker;
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2683
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 2684
    .local v7, p:Landroid/net/LinkProperties;
    if-eqz v7, :cond_0

    .line 2685
    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v9, v11, v2

    .line 2686
    .local v9, pids:Ljava/util/List;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 2687
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 2688
    .local v8, pid:Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, p1, :cond_3

    .line 2689
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    .line 2690
    .local v1, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->writePidDns(Ljava/util/Collection;I)Z

    .line 2691
    if-eqz p2, :cond_2

    .line 2692
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    .line 2706
    .end local v1           #dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #p:Landroid/net/LinkProperties;
    .end local v8           #pid:Ljava/lang/Integer;
    .end local v9           #pids:Ljava/util/List;
    :cond_2
    :goto_2
    return-void

    .line 2686
    .restart local v4       #j:I
    .restart local v6       #nt:Landroid/net/NetworkStateTracker;
    .restart local v7       #p:Landroid/net/LinkProperties;
    .restart local v8       #pid:Ljava/lang/Integer;
    .restart local v9       #pids:Ljava/util/List;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2700
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #p:Landroid/net/LinkProperties;
    .end local v8           #pid:Ljava/lang/Integer;
    .end local v9           #pids:Ljava/util/List;
    :cond_4
    const/4 v2, 0x1

    .line 2701
    .restart local v2       #i:I
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2702
    .local v10, prop:Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5

    .line 2703
    if-eqz p2, :cond_2

    .line 2704
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->bumpDns()V

    goto :goto_2

    .line 2708
    :cond_5
    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2700
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 7
    .parameter "p"
    .parameter "r"
    .parameter "toDefaultTable"

    .prologue
    const/4 v4, 0x0

    .line 1598
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ConnectivityService;->modifyRoute(Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZ)Z

    move-result v0

    return v0
.end method

.method private removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 2
    .parameter "lp"
    .parameter "addr"

    .prologue
    .line 1606
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/ConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZ)Z

    move-result v0

    return v0
.end method

.method private sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 2120
    const-string v1, ""

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2122
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2123
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2124
    .local v0, ni:Landroid/net/NetworkInfo;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2125
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2134
    .end local v0           #ni:Landroid/net/NetworkInfo;
    :goto_0
    return-void

    .line 2127
    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2128
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 2131
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2132
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    .locals 3
    .parameter "info"
    .parameter "delayMs"

    .prologue
    .line 2138
    const-string v1, ""

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2140
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2141
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->createNewNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2142
    .local v0, ni:Landroid/net/NetworkInfo;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2143
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    .line 2152
    .end local v0           #ni:Landroid/net/NetworkInfo;
    :goto_0
    return-void

    .line 2145
    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2146
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    goto :goto_0

    .line 2149
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2150
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private sendFailOverBroadcast()V
    .locals 2

    .prologue
    .line 2113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.FAILOVER_CHANGED_TO_MOBILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2114
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2115
    return-void
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 1
    .parameter "info"
    .parameter "bcastType"

    .prologue
    .line 2177
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2178
    return-void
.end method

.method private sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V
    .locals 1
    .parameter "info"
    .parameter "bcastType"
    .parameter "delayMs"

    .prologue
    .line 2181
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 2182
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2155
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2156
    return-void
.end method

.method private sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    .locals 4
    .parameter "proxy"

    .prologue
    .line 3576
    if-nez p1, :cond_0

    new-instance p1, Landroid/net/ProxyProperties;

    .end local p1
    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {p1, v1, v2, v3}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3577
    .restart local p1
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending Proxy Broadcast for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3579
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3581
    const-string v1, "proxy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3582
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3583
    return-void
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 2257
    monitor-enter p0

    .line 2258
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 2259
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2261
    :cond_0
    const/high16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2266
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2267
    monitor-exit p0

    .line 2268
    return-void

    .line 2267
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendStickyBroadcastDelayed(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "delayMs"

    .prologue
    .line 2271
    if-gtz p2, :cond_0

    .line 2272
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2281
    :goto_0
    return-void

    .line 2278
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x70

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setBufferSize(Ljava/lang/String;)V
    .locals 5
    .parameter "bufferSizes"

    .prologue
    .line 2650
    :try_start_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2652
    .local v2, values:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 2653
    const-string v1, "/sys/kernel/ipv4/tcp_"

    .line 2654
    .local v1, prefix:Ljava/lang/String;
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2655
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_0
    return-void

    .line 2661
    .restart local v2       #values:[Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid buffersize string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2663
    .end local v2           #values:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2664
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set tcp buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    .locals 12
    .parameter "u"
    .parameter "ignoreDups"

    .prologue
    .line 1414
    iget v4, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 1415
    .local v4, networkType:I
    iget-object v2, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 1416
    .local v2, feature:Ljava/lang/String;
    iget v5, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 1417
    .local v5, pid:I
    iget v7, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 1419
    .local v7, uid:I
    const/4 v6, 0x0

    .line 1420
    .local v6, tracker:Landroid/net/NetworkStateTracker;
    const/4 v0, 0x0

    .line 1426
    .local v0, callTeardown:Z
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1428
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopUsingNetworkFeature: net "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", net is invalid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1431
    const/4 v10, -0x1

    .line 1510
    :goto_0
    return v10

    .line 1436
    :cond_0
    monitor-enter p0

    .line 1438
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1443
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1501
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1446
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x65

    invoke-virtual {v10, v11, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1447
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 1448
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1456
    if-nez p2, :cond_3

    .line 1457
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1458
    .local v9, x:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v9, p1}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1460
    const/4 v10, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1466
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v9           #x:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_3
    invoke-virtual {p0, v4, v2}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v8

    .line 1468
    .local v8, usedNetworkType:I
    const-string v10, ""

    const-string v11, "VZW"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1469
    const/4 v10, 0x5

    if-ne v8, v10, :cond_4

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->isSignedApplication(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1471
    const/16 v8, 0xc

    .line 1475
    :cond_4
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v10, v8

    .line 1476
    if-nez v6, :cond_5

    .line 1478
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopUsingNetworkFeature: net "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " no known tracker for used net type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1481
    const/4 v10, -0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 1483
    :cond_5
    if-eq v8, v4, :cond_7

    .line 1484
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 1485
    .local v1, currentPid:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1486
    const/4 v10, 0x1

    invoke-direct {p0, v5, v10}, Lcom/android/server/ConnectivityService;->reassessPidDns(IZ)V

    .line 1487
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_6

    .line 1492
    const/4 v10, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 1494
    :cond_6
    const/4 v0, 0x1

    .line 1501
    .end local v1           #currentPid:Ljava/lang/Integer;
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1503
    if-eqz v0, :cond_8

    .line 1505
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopUsingNetworkFeature: teardown net "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1507
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->teardown()Z

    .line 1508
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1497
    :cond_7
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopUsingNetworkFeature: net "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not a known feature - dropping"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1510
    :cond_8
    const/4 v10, -0x1

    goto/16 :goto_0
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .locals 2
    .parameter "netTracker"

    .prologue
    const/4 v0, 0x1

    .line 848
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    invoke-interface {p1, v0}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 852
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryFailover(I)V
    .locals 5
    .parameter "prevNetType"

    .prologue
    .line 2063
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2064
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    if-ne v3, p1, :cond_0

    .line 2065
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 2075
    :cond_0
    const/4 v2, 0x0

    .local v2, checkType:I
    :goto_0
    const/16 v3, 0x12

    if-gt v2, v3, :cond_5

    .line 2076
    if-ne v2, p1, :cond_2

    .line 2075
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2077
    :cond_2
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 2078
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2079
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 2093
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v3, v2

    .line 2094
    .local v1, checkTracker:Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2095
    .local v0, checkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2096
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2097
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 2099
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to switch to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2109
    .end local v0           #checkInfo:Landroid/net/NetworkInfo;
    .end local v1           #checkTracker:Landroid/net/NetworkStateTracker;
    .end local v2           #checkType:I
    :cond_5
    return-void
.end method

.method private updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 11
    .parameter "network"
    .parameter "iface"
    .parameter
    .parameter "domains"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2755
    .local p3, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .line 2756
    .local v0, changed:Z
    const/4 v7, 0x0

    .line 2759
    .local v7, last:I
    new-instance v3, Ljava/io/File;

    const-string v9, "/sdcard/Android/data/com.test.LTEfunctionality/files/blockdns"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2760
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2762
    const-string v9, "net.dns1"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2763
    const-string v9, "net.dns2"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    const-string v9, "adding dns null for IOT TEST (block dns)"

    invoke-direct {p0, v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2765
    const/4 v9, 0x1

    .line 2814
    :goto_0
    return v9

    .line 2769
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    if-eqz v9, :cond_2

    .line 2770
    add-int/lit8 v7, v7, 0x1

    .line 2771
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 2772
    .local v8, value:Ljava/lang/String;
    const-string v9, "net.dns1"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2774
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no dns provided for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - using "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2776
    const/4 v0, 0x1

    .line 2777
    const-string v9, "net.dns1"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    .end local v8           #value:Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v7, 0x1

    .local v4, i:I
    :goto_1
    iget v9, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    if-gt v4, v9, :cond_5

    .line 2795
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "net.dns"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2797
    .local v6, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 2798
    const-string v9, ""

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2780
    .end local v4           #i:I
    .end local v6           #key:Ljava/lang/String;
    :cond_2
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 2781
    .local v1, dns:Ljava/net/InetAddress;
    add-int/lit8 v7, v7, 0x1

    .line 2782
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "net.dns"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2783
    .restart local v6       #key:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 2784
    .restart local v8       #value:Ljava/lang/String;
    if-nez v0, :cond_4

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2790
    :cond_4
    const/4 v0, 0x1

    .line 2791
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2800
    .end local v1           #dns:Ljava/net/InetAddress;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    .restart local v4       #i:I
    :cond_5
    iput v7, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 2802
    if-eqz v0, :cond_6

    .line 2804
    :try_start_0
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {p3}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, p2, v10}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2805
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v9, p2}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2810
    :cond_6
    :goto_3
    const-string v9, "net.dns.search"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 2811
    const-string v9, "net.dns.search"

    invoke-static {v9, p4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    const/4 v0, 0x1

    :cond_7
    move v9, v0

    .line 2814
    goto/16 :goto_0

    .line 2806
    :catch_0
    move-exception v2

    .line 2807
    .local v2, e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception setting default dns interface: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZLcom/android/server/ConnectivityService$RouteAttributes;)Z
    .locals 23
    .parameter "newLp"
    .parameter "curLp"
    .parameter "isLinkDefault"
    .parameter "ra"

    .prologue
    .line 2496
    const/16 v18, 0x0

    .line 2497
    .local v18, routesToAdd:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    new-instance v5, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v5}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 2498
    .local v5, dnsDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v16, Landroid/net/LinkProperties$CompareResult;

    invoke-direct/range {v16 .. v16}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 2499
    .local v16, routeDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    new-instance v12, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v12}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 2500
    .local v12, localAddrDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    if-eqz p2, :cond_5

    .line 2502
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v16

    .line 2503
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v5

    .line 2504
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v12

    .line 2511
    :cond_0
    :goto_0
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v19

    if-eqz v19, :cond_6

    :cond_1
    const/16 v17, 0x1

    .line 2513
    .local v17, routesChanged:Z
    :goto_1
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/RouteInfo;

    .line 2514
    .local v15, r:Landroid/net/RouteInfo;
    if-nez p3, :cond_3

    invoke-virtual {v15}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v19

    if-nez v19, :cond_4

    .line 2515
    :cond_3
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 2517
    :cond_4
    if-nez p3, :cond_2

    .line 2519
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_2

    .line 2505
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v15           #r:Landroid/net/RouteInfo;
    .end local v17           #routesChanged:Z
    :cond_5
    if-eqz p1, :cond_0

    .line 2506
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 2507
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 2508
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v12, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_0

    .line 2511
    :cond_6
    const/16 v17, 0x0

    goto :goto_1

    .line 2523
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v17       #routesChanged:Z
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/RouteInfo;

    .line 2524
    .restart local v15       #r:Landroid/net/RouteInfo;
    if-nez p3, :cond_9

    invoke-virtual {v15}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v19

    if-nez v19, :cond_a

    .line 2525
    :cond_9
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_3

    .line 2528
    :cond_a
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 2532
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    .line 2533
    .local v10, ifaceName:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 2536
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10, v15}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2537
    :catch_0
    move-exception v6

    .line 2539
    .local v6, e:Ljava/lang/Exception;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception trying to remove a route: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 2546
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #ifaceName:Ljava/lang/String;
    .end local v15           #r:Landroid/net/RouteInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2547
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v19, "enabled"

    const-string v20, "TETHER_ALWAYS_ON_MODE"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 2548
    iget-object v0, v12, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v19

    if-eqz v19, :cond_c

    .line 2549
    iget-object v0, v12, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/LinkAddress;

    .line 2552
    .local v11, la:Landroid/net/LinkAddress;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v21

    invoke-interface/range {v19 .. v21}, Landroid/os/INetworkManagementService;->delSrcRoute([BI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 2553
    :catch_1
    move-exception v6

    .line 2554
    .restart local v6       #e:Ljava/lang/Exception;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception while trying to remove src route: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 2559
    .end local v6           #e:Ljava/lang/Exception;
    .end local v11           #la:Landroid/net/LinkAddress;
    :cond_c
    iget-object v0, v12, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v19

    if-eqz v19, :cond_11

    .line 2560
    const/4 v7, 0x0

    .local v7, gw4Addr:Ljava/net/InetAddress;
    const/4 v8, 0x0

    .line 2561
    .local v8, gw6Addr:Ljava/net/InetAddress;
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    .line 2562
    .restart local v10       #ifaceName:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 2563
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/RouteInfo;

    .line 2564
    .restart local v15       #r:Landroid/net/RouteInfo;
    invoke-virtual {v15}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 2565
    invoke-virtual {v15}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 2566
    invoke-virtual {v15}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    goto :goto_5

    .line 2568
    :cond_e
    invoke-virtual {v15}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v8

    goto :goto_5

    .line 2570
    .end local v15           #r:Landroid/net/RouteInfo;
    :cond_f
    iget-object v0, v12, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/LinkAddress;

    .line 2572
    .restart local v11       #la:Landroid/net/LinkAddress;
    :try_start_2
    invoke-virtual {v11}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 2573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v21

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v10, v1, v2, v3}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 2579
    :catch_2
    move-exception v6

    .line 2581
    .restart local v6       #e:Ljava/lang/Exception;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception while trying to add src route: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_6

    .line 2576
    .end local v6           #e:Ljava/lang/Exception;
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v21

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v10, v1, v2, v3}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 2589
    .end local v7           #gw4Addr:Ljava/net/InetAddress;
    .end local v8           #gw6Addr:Ljava/net/InetAddress;
    .end local v10           #ifaceName:Ljava/lang/String;
    .end local v11           #la:Landroid/net/LinkAddress;
    :cond_11
    if-eqz v17, :cond_13

    .line 2591
    if-eqz p2, :cond_12

    .line 2592
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/net/InetAddress;

    .line 2593
    .local v14, oldDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_7

    .line 2596
    .end local v14           #oldDns:Ljava/net/InetAddress;
    :cond_12
    if-eqz p1, :cond_15

    .line 2597
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 2598
    .local v13, newDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_8

    .line 2603
    .end local v13           #newDns:Ljava/net/InetAddress;
    :cond_13
    iget-object v0, v5, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/net/InetAddress;

    .line 2604
    .restart local v14       #oldDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14}, Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_9

    .line 2606
    .end local v14           #oldDns:Ljava/net/InetAddress;
    :cond_14
    iget-object v0, v5, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 2607
    .restart local v13       #newDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_a

    .line 2610
    .end local v13           #newDns:Ljava/net/InetAddress;
    :cond_15
    return v17
.end method

.method private writePidDns(Ljava/util/Collection;I)Z
    .locals 7
    .parameter
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 2714
    .local p1, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v4, 0x1

    .line 2715
    .local v4, j:I
    const/4 v0, 0x0

    .line 2716
    .local v0, changed:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 2717
    .local v1, dns:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 2718
    .local v2, dnsString:Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.dns"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2719
    :cond_0
    const/4 v0, 0x1

    .line 2720
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.dns"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 2723
    goto :goto_0

    .line 2724
    .end local v1           #dns:Ljava/net/InetAddress;
    .end local v2           #dnsString:Ljava/lang/String;
    :cond_2
    return v0
.end method


# virtual methods
.method public ResetCwDefaultService(Ljava/lang/String;)V
    .locals 11
    .parameter "strCWInterfaceName"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3074
    const-string v5, "ConnectivityService"

    const-string v6, "CW_SISO : ResetCwDefaultService Entered"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    const-string v4, "wlan0"

    .line 3076
    .local v4, szWifiIntfName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 3079
    .local v0, dnsServers:[Ljava/lang/String;
    const-string v5, "wifi.interface"

    const-string v6, "wlan0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3080
    const-string v5, "ConnectivityService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Interface Name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mCWWifiRoutes:Ljava/util/Collection;

    if-eqz v5, :cond_1

    .line 3084
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mCWPPProute:Landroid/net/RouteInfo;

    invoke-interface {v5, p1, v6}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3091
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mCWWifiRoutes:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 3092
    .local v3, route:Landroid/net/RouteInfo;
    const-string v5, "ConnectivityService"

    const-string v6, "CW_SISO ResetCwDefaultService : Trying to add wlan as default route "

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v5, v4, v3}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3095
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #route:Landroid/net/RouteInfo;
    :catch_0
    move-exception v1

    .line 3096
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ConnectivityService"

    const-string v6, "CW_SISO ResetCwDefaultService : addRoute exception "

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3100
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v5, "net.dns1"

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mCWdnsServers:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3101
    const-string v5, "net.dns2"

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mCWdnsServers:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3103
    iput-object v10, p0, Lcom/android/server/ConnectivityService;->mCWWifiRoutes:Ljava/util/Collection;

    .line 3104
    iput-object v10, p0, Lcom/android/server/ConnectivityService;->mCWPPProute:Landroid/net/RouteInfo;

    .line 3105
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mCWdnsServers:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v8

    .line 3106
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mCWdnsServers:[Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v9

    .line 3111
    :goto_2
    return-void

    .line 3085
    :catch_1
    move-exception v1

    .line 3086
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "ConnectivityService"

    const-string v6, "CW_SISO ResetCwDefaultService : removeRoute exception "

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3108
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v5, "ConnectivityService"

    const-string v6, "CW_SISO : mCWWifiRoutes is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public SetCwDefaultService(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 21
    .parameter "strInterfaceName"
    .parameter "strWagIPAddr"
    .parameter "nWagDestPort"
    .parameter "strWagSignalingIPAddr"

    .prologue
    .line 2963
    const-string v18, "ConnectivityService"

    const-string v19, "CW_SISO : SetCwDefaultService Entered"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "net."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2968
    .local v13, prefix:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v8, v0, [Ljava/lang/String;

    .line 2971
    .local v8, dnsServers:[Ljava/lang/String;
    const/4 v14, 0x0

    .line 2972
    .local v14, remoteAddr:Ljava/net/InetAddress;
    const/4 v4, 0x0

    .line 2973
    .local v4, WifiGWAddress:I
    const-string v17, "wlan0"

    .line 2974
    .local v17, szWifiIntfName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2975
    .local v6, destination:Landroid/net/LinkAddress;
    const/4 v3, 0x0

    .line 2978
    .local v3, LocalAddr:Ljava/net/InetAddress;
    const-string v18, "wifi.interface"

    const-string v19, "wlan0"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2980
    const-string v18, "ConnectivityService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CW_SISO : SetCwDefaultService Interface Name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "gw"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2983
    .local v10, gatewayAddress:Ljava/lang/String;
    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "dns1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v8, v18

    .line 2984
    const/16 v18, 0x1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "dns2"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v8, v18

    .line 2985
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "local-ip"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2986
    .local v12, ipAddress:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "remote-ip"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2988
    .local v15, remoteipAddress:Ljava/lang/String;
    const-string v18, "ConnectivityService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CW_SISO : SetCwDefaultService interface="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ipAddress="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " gateway="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " DNS1="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v8, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " DNS2="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v8, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Remote IP="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    .line 2993
    const-string v18, "ConnectivityService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CW_SISO SetCwDefaultService : Trying to Set the Default interface : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v5, v18, v19

    .line 2997
    .local v5, curLp:Landroid/net/LinkProperties;
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mCWWifiRoutes:Ljava/util/Collection;

    .line 2999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mCWWifiRoutes:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/RouteInfo;

    .line 3001
    .local v16, route:Landroid/net/RouteInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/InetAddress;)I

    move-result v4

    .line 3002
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/ConnectivityService;->mCWWifigatewayAddress:I

    .line 3004
    const-string v18, "ConnectivityService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CW_SISO SetCwDefaultService : WifiGWAddress :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3007
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3014
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3015
    :catch_0
    move-exception v9

    .line 3016
    .local v9, e:Ljava/lang/Exception;
    :try_start_3
    const-string v18, "ConnectivityService"

    const-string v19, "CW_SISO SetCwDefaultService : removeRoute 2 exception "

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3046
    .end local v5           #curLp:Landroid/net/LinkProperties;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v16           #route:Landroid/net/RouteInfo;
    :catch_1
    move-exception v9

    .line 3047
    .restart local v9       #e:Ljava/lang/Exception;
    :goto_2
    const-string v18, "ConnectivityService"

    const-string v19, "CW_SISO SetCwDefaultService :  exception "

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 3051
    .end local v9           #e:Ljava/lang/Exception;
    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/android/server/ConnectivityService;->native_CWServiceConfigureRoutingTable_JNI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3053
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 3054
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lcom/android/server/ConnectivityService;->native_CWServiceConfigureRoutingTable_JNI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3061
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mCWdnsServers:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "net.dns1"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mCWdnsServers:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-string v20, "net.dns1"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3065
    const-string v18, "net.dns1"

    const/16 v19, 0x0

    aget-object v19, v8, v19

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3066
    const-string v18, "net.dns2"

    const/16 v19, 0x1

    aget-object v19, v8, v19

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    :goto_4
    return-void

    .line 3008
    .restart local v5       #curLp:Landroid/net/LinkProperties;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v16       #route:Landroid/net/RouteInfo;
    :catch_2
    move-exception v9

    .line 3009
    .restart local v9       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v18, "ConnectivityService"

    const-string v19, "CW_SISO SetCwDefaultService : removeRoute 1 exception "

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3022
    .end local v9           #e:Ljava/lang/Exception;
    .end local v16           #route:Landroid/net/RouteInfo;
    :cond_1
    :try_start_5
    invoke-static {v15}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v14

    .line 3029
    :goto_5
    :try_start_6
    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v3

    .line 3035
    :goto_6
    :try_start_7
    new-instance v7, Landroid/net/LinkAddress;

    sget-object v18, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v7, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 3036
    .end local v6           #destination:Landroid/net/LinkAddress;
    .local v7, destination:Landroid/net/LinkAddress;
    :try_start_8
    new-instance v18, Landroid/net/RouteInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v7, v14}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mCWPPProute:Landroid/net/RouteInfo;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 3039
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mCWPPProute:Landroid/net/RouteInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 3045
    :goto_7
    :try_start_a
    const-string v18, "ConnectivityService"

    const-string v19, "CW_SISO SetCwDefaultService : Trying to setDefaultRoute Called "

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    move-object v6, v7

    .line 3049
    .end local v7           #destination:Landroid/net/LinkAddress;
    .restart local v6       #destination:Landroid/net/LinkAddress;
    goto/16 :goto_3

    .line 3023
    :catch_3
    move-exception v9

    .line 3024
    .restart local v9       #e:Ljava/lang/Exception;
    :try_start_b
    const-string v18, "ConnectivityService"

    const-string v19, "CW_SISO SetCwDefaultService : numericToInetAddress exception "

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 3030
    .end local v9           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 3031
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v18, "ConnectivityService"

    const-string v19, "CW_SISO SetCwDefaultService : numericToInetAddress 2 exception "

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_6

    .line 3040
    .end local v6           #destination:Landroid/net/LinkAddress;
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v7       #destination:Landroid/net/LinkAddress;
    :catch_5
    move-exception v9

    .line 3041
    .restart local v9       #e:Ljava/lang/Exception;
    :try_start_c
    const-string v18, "ConnectivityService"

    const-string v19, "CW_SISO SetCwDefaultService : addRoute exception "

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_7

    .line 3046
    .end local v9           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v9

    move-object v6, v7

    .end local v7           #destination:Landroid/net/LinkAddress;
    .restart local v6       #destination:Landroid/net/LinkAddress;
    goto/16 :goto_2

    .line 3057
    .end local v5           #curLp:Landroid/net/LinkProperties;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v18, "ConnectivityService"

    const-string v19, "CW_SISO : remote ip address is 0 : "

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public bringDownRat(I)Z
    .locals 5
    .parameter "ratType"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BringDownRat called for ratType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3976
    if-nez p1, :cond_0

    .line 3977
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, p1

    .line 3978
    .local v0, network:Landroid/net/NetworkStateTracker;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 3984
    .end local v0           #network:Landroid/net/NetworkStateTracker;
    :goto_0
    return v1

    .line 3980
    :cond_0
    if-eq p1, v1, :cond_1

    move v1, v2

    .line 3981
    goto :goto_0

    .line 3983
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown RatType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    move v1, v2

    .line 3984
    goto :goto_0
.end method

.method public bringUpRat(I)Z
    .locals 3
    .parameter "ratType"

    .prologue
    const/4 v0, 0x0

    .line 3954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BringUpRat called for ratType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3956
    if-nez p1, :cond_1

    .line 3957
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3958
    const-string v1, "mobile data service disabled"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3959
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->reconnect(I)Z

    .line 3969
    :cond_0
    :goto_0
    return v0

    .line 3962
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown RatType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3969
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->reconnect(I)Z

    move-result v0

    goto :goto_0
.end method

.method convertFeatureToNetworkType(ILjava/lang/String;)I
    .locals 3
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 3623
    move v0, p1

    .line 3625
    .local v0, usedNetworkType:I
    if-nez p1, :cond_a

    .line 3626
    const-string v1, "enableMMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3627
    const/4 v0, 0x2

    .line 3657
    :goto_0
    return v0

    .line 3628
    :cond_0
    const-string v1, "enableSUPL"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3629
    const/4 v0, 0x3

    goto :goto_0

    .line 3630
    :cond_1
    const-string v1, "enableDUN"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "enableDUNAlways"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3632
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 3633
    :cond_3
    const-string v1, "enableHIPRI"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3634
    const/4 v0, 0x5

    goto :goto_0

    .line 3635
    :cond_4
    const-string v1, "enableFOTA"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3636
    const/16 v0, 0xa

    goto :goto_0

    .line 3637
    :cond_5
    const-string v1, "enableIMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3638
    const/16 v0, 0xb

    goto :goto_0

    .line 3639
    :cond_6
    const-string v1, "enableCBS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3640
    const/16 v0, 0xc

    goto :goto_0

    .line 3641
    :cond_7
    const-string v1, "enable800APN"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3642
    const/16 v0, 0x12

    goto :goto_0

    .line 3643
    :cond_8
    const-string v1, "enableBIP"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3644
    const/16 v0, 0x11

    goto :goto_0

    .line 3646
    :cond_9
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any mobile netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3648
    :cond_a
    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    .line 3649
    const-string v1, "p2p"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3650
    const/16 v0, 0xd

    goto :goto_0

    .line 3652
    :cond_b
    const-string v1, "ConnectivityService"

    const-string v2, "Can\'t match any wifi netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3655
    :cond_c
    const-string v1, "ConnectivityService"

    const-string v2, "Unexpected network type"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2892
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1

    .line 2895
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2945
    :cond_0
    return-void

    .line 2900
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2901
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v6, v0, v2

    .line 2902
    .local v6, nst:Landroid/net/NetworkStateTracker;
    if-eqz v6, :cond_3

    .line 2903
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2904
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Active network: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2907
    :cond_2
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2908
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2909
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2901
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2913
    .end local v6           #nst:Landroid/net/NetworkStateTracker;
    :cond_4
    const-string v10, "Network Requester Pids:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2914
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    .end local v2           #i$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_6

    aget v5, v0, v3

    .line 2915
    .local v5, net:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2916
    .local v8, pidString:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v10, v10, v5

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 2917
    .local v7, pid:Ljava/lang/Object;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 2919
    .end local v7           #pid:Ljava/lang/Object;
    :cond_5
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2914
    add-int/lit8 v2, v3, 0x1

    .local v2, i$:I
    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_1

    .line 2921
    .end local v5           #net:I
    .end local v8           #pidString:Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2923
    const-string v10, "FeatureUsers:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2924
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3           #i$:I
    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 2925
    .local v9, requester:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2927
    .end local v9           #requester:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2929
    monitor-enter p0

    .line 2930
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NetworkTranstionWakeLock is currently "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, ""

    :goto_4
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "held."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2932
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "It was last requested for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2933
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2934
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2936
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2938
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 2939
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2940
    const-string v10, "Inet condition reports:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2941
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 2942
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2941
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2930
    .end local v1           #i:I
    :cond_8
    :try_start_1
    const-string v10, "not "

    goto :goto_4

    .line 2933
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "config"

    .prologue
    .line 3713
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 903
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 904
    .local v0, uid:I
    iget v1, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "uid"

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 910
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 4

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1017
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1019
    .local v1, token:J
    :try_start_0
    iget v3, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1020
    .local v0, state:Landroid/net/NetworkState;
    if-eqz v0, :cond_0

    .line 1022
    :try_start_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v3, v0}, Landroid/net/INetworkPolicyManager;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1028
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1026
    return-object v3

    .line 1023
    :catch_0
    move-exception v3

    .line 1026
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1028
    .end local v0           #state:Landroid/net/NetworkState;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 8

    .prologue
    .line 941
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 943
    .local v5, uid:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 944
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 945
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 946
    .local v4, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    .line 947
    invoke-direct {p0, v4, v5}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 950
    .end local v4           #tracker:Landroid/net/NetworkStateTracker;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/NetworkInfo;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/NetworkInfo;

    return-object v6

    .line 950
    .end local v0           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .locals 11

    .prologue
    .line 987
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 988
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 989
    .local v6, uid:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 990
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 991
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 992
    .local v5, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_0

    .line 993
    invoke-direct {p0, v5, v6}, Lcom/android/server/ConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 994
    .local v2, info:Landroid/net/NetworkInfo;
    new-instance v7, Landroid/net/NetworkState;

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v10

    invoke-direct {v7, v2, v9, v10}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 998
    .end local v5           #tracker:Landroid/net/NetworkStateTracker;
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/NetworkState;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/NetworkState;

    return-object v7

    .line 998
    .end local v0           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 5905
    const-string v4, "ConnectivityService"

    const-string v6, "getDhcpServerConfiguration()"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5906
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5907
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v3}, Landroid/net/DhcpServerConfiguration;-><init>()V

    .line 5909
    .local v3, serverConfig:Landroid/net/DhcpServerConfiguration;
    :try_start_0
    const-string v4, "wifiap_local_ip"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 5910
    const-string v4, "wifiap_subnet_mask"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 5911
    const-string v4, "wifiap_dhcp_enable"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, v3, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 5912
    const-string v4, "wifiap_dhcp_start_ip"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 5913
    const-string v4, "wifiap_dhcp_end_ip"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 5914
    const-string v4, "wifiap_dhcp_lease_time"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 5915
    const-string v4, "wifiap_dhcp_max_user"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpServerConfiguration;->maxClient:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5931
    .end local v3           #serverConfig:Landroid/net/DhcpServerConfiguration;
    :goto_1
    return-object v3

    .line 5911
    .restart local v3       #serverConfig:Landroid/net/DhcpServerConfiguration;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 5918
    :catch_0
    move-exception v2

    .line 5919
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "ConnectivityService"

    const-string v6, "getWifiApProfileConfiguration AP settings not found, returning"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5920
    new-instance v1, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v1}, Landroid/net/DhcpServerConfiguration;-><init>()V

    .line 5922
    .local v1, defaultServerConfig:Landroid/net/DhcpServerConfiguration;
    const-string v4, "192.168.1.1"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 5923
    const-string v4, "255.255.255.0"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 5924
    iput-boolean v5, v1, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 5925
    const-string v4, "192.168.1.100"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 5926
    const-string v4, "192.168.1.254"

    iput-object v4, v1, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 5927
    const/16 v4, 0x5a

    iput v4, v1, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 5928
    const/16 v4, 0x64

    iput v4, v1, Landroid/net/DhcpServerConfiguration;->maxClient:I

    .line 5930
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    move-object v3, v1

    .line 5931
    goto :goto_1
.end method

.method public getFmcStatus(Landroid/os/IBinder;)I
    .locals 1
    .parameter "listener"

    .prologue
    .line 3938
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mFmcSM:Lcom/android/server/FmcStateMachine;

    if-eqz v0, :cond_0

    .line 3939
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mFmcSM:Lcom/android/server/FmcStateMachine;

    invoke-virtual {v0}, Lcom/android/server/FmcStateMachine;->getStatus()I

    move-result v0

    .line 3942
    :goto_0
    return v0

    .line 3941
    :cond_0
    const-string v0, "mFmcSM is null while calling startFmc"

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3942
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 3536
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3537
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    monitor-exit v1

    return-object v0

    .line 3538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 3281
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3283
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3284
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 3286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1

    .prologue
    .line 3735
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 976
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 978
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 979
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 982
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1707
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1708
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1711
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 1708
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabledForDomestic()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1716
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1717
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1718
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mobile_data"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 1721
    .local v0, retVal:Z
    :goto_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1722
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 1725
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileDataEnabledForDomestic returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1726
    return v0

    .end local v0           #retVal:Z
    :cond_1
    move v0, v3

    .line 1718
    goto :goto_0

    .restart local v0       #retVal:Z
    :cond_2
    move v0, v3

    .line 1722
    goto :goto_1
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 915
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 917
    .local v0, uid:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkPreference()I
    .locals 2

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 777
    monitor-enter p0

    .line 778
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 779
    .local v0, preference:I
    monitor-exit p0

    .line 780
    return v0

    .line 779
    .end local v0           #preference:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 3485
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3486
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    goto :goto_0

    .line 3487
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3316
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3317
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3318
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 3320
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3336
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3337
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3292
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3293
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3300
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 3302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3307
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3308
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3309
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 3311
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfacePairs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3347
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3348
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3341
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3342
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3352
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3353
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActiveNetworkMetered()Z
    .locals 3

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1035
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1037
    .local v0, token:J
    :try_start_0
    iget v2, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->isNetworkMeteredUnchecked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1039
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1037
    return v2

    .line 1039
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isCneAware()Z
    .locals 2

    .prologue
    .line 3870
    sget v1, Landroid/net/FeatureConfig;->CNE:I

    invoke-static {v1}, Landroid/net/FeatureConfig;->isEnabled(I)Z

    move-result v0

    .line 3871
    .local v0, cne:Z
    return v0
.end method

.method public isCneStarted()Z
    .locals 1

    .prologue
    .line 3862
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    return v0
.end method

.method public isMobilePolicyDataEnable()Z
    .locals 3

    .prologue
    .line 1915
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1916
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mIsMobilePolicyEnabled:Z

    .line 1917
    .local v0, enabled:Z
    monitor-exit v2

    .line 1918
    return v0

    .line 1917
    .end local v0           #enabled:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 957
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTetheringSupported()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3360
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3361
    const-string v4, "ro.tether.denied"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 3362
    .local v0, defaultVal:I
    :goto_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_supported"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 3370
    .local v1, tetherEnabledInSettings:Z
    :goto_1
    if-eqz v1, :cond_2

    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mTetheringConfigValid:Z

    if-eqz v4, :cond_2

    :goto_2
    return v3

    .end local v0           #defaultVal:I
    .end local v1           #tetherEnabledInSettings:Z
    :cond_0
    move v0, v3

    .line 3361
    goto :goto_0

    .restart local v0       #defaultVal:I
    :cond_1
    move v1, v2

    .line 3362
    goto :goto_1

    .restart local v1       #tetherEnabledInSettings:Z
    :cond_2
    move v3, v2

    .line 3370
    goto :goto_2
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "oldPackage"
    .parameter "newPackage"

    .prologue
    .line 3701
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public prioritizeDns(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 4044
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 4045
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4050
    :goto_0
    return-void

    .line 4048
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1392

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public protectVpn(Landroid/os/ParcelFileDescriptor;)Z
    .locals 3
    .parameter "socket"

    .prologue
    .line 3676
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I

    .line 3677
    .local v0, type:I
    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3678
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/connectivity/Vpn;->protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3679
    const/4 v1, 0x1

    .line 3685
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 3690
    .end local v0           #type:I
    :goto_0
    return v1

    .line 3684
    :catchall_0
    move-exception v1

    .line 3685
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3684
    :goto_1
    throw v1

    .line 3681
    :catch_0
    move-exception v1

    .line 3685
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3690
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    .line 3686
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1

    .restart local v0       #type:I
    :catch_3
    move-exception v2

    goto :goto_0

    .line 3685
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public reconnect(I)Z
    .locals 4
    .parameter "networkType"

    .prologue
    .line 3990
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v2, p1

    .line 3992
    .local v1, network:Landroid/net/NetworkStateTracker;
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, v2}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 3993
    const-string v2, "Sending Network Connection Request to Driver."

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3994
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3998
    :goto_0
    return v2

    .line 3995
    :catch_0
    move-exception v0

    .line 3996
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network Obj is Null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3998
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public releaseLink(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 4071
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    if-nez v0, :cond_0

    .line 4073
    :goto_0
    return-void

    .line 4072
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v0, p1}, Lcom/android/server/ILinkManager;->releaseLink(I)V

    goto :goto_0
.end method

.method public removeQosRegistration(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 4107
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v0, p1}, Lcom/android/server/ILinkManager;->removeQosRegistration(I)Z

    move-result v0

    goto :goto_0
.end method

.method public reportInetCondition(II)V
    .locals 6
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    .line 3396
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.STATUS_BAR"

    const-string v5, "ConnectivityService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    .line 3402
    .local v0, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 3403
    .local v2, uid:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reports inet is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x32

    if-le p2, v3, :cond_0

    const-string v3, "connected"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "network Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3406
    .local v1, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3407
    :goto_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_1

    .line 3408
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mInetLog:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3403
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    const-string v3, "disconnected"

    goto :goto_0

    .line 3411
    .restart local v1       #s:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3413
    return-void
.end method

.method public requestCapabilities(I[I)Landroid/net/LinkCapabilities;
    .locals 11
    .parameter "id"
    .parameter "capability_keys"

    .prologue
    const/16 v10, 0xf

    const/16 v9, 0xe

    .line 4113
    iget-boolean v7, p0, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    if-nez v7, :cond_1

    const/4 v1, 0x0

    .line 4172
    :cond_0
    return-object v1

    .line 4116
    :cond_1
    new-instance v1, Landroid/net/ExtraLinkCapabilities;

    invoke-direct {v1}, Landroid/net/ExtraLinkCapabilities;-><init>()V

    .line 4117
    .local v1, cap:Landroid/net/ExtraLinkCapabilities;
    move-object v0, p2

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 4118
    .local v3, key:I
    const/4 v6, 0x0

    .line 4119
    .local v6, temp:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 4117
    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4121
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v7, p1}, Lcom/android/server/ILinkManager;->getMinAvailableForwardBandwidth(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4122
    const/4 v7, 0x4

    invoke-virtual {v1, v7, v6}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto :goto_1

    .line 4125
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v7, p1}, Lcom/android/server/ILinkManager;->getMaxAvailableForwardBandwidth(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4126
    const/4 v7, 0x5

    invoke-virtual {v1, v7, v6}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto :goto_1

    .line 4129
    :pswitch_3
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v7, p1}, Lcom/android/server/ILinkManager;->getMinAvailableReverseBandwidth(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4130
    const/16 v7, 0x8

    invoke-virtual {v1, v7, v6}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto :goto_1

    .line 4133
    :pswitch_4
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v7, p1}, Lcom/android/server/ILinkManager;->getMaxAvailableReverseBandwidth(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4134
    const/16 v7, 0x9

    invoke-virtual {v1, v7, v6}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto :goto_1

    .line 4137
    :pswitch_5
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v7, p1}, Lcom/android/server/ILinkManager;->getCurrentFwdLatency(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4138
    const/16 v7, 0xb

    invoke-virtual {v1, v7, v6}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto :goto_1

    .line 4141
    :pswitch_6
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v7, p1}, Lcom/android/server/ILinkManager;->getCurrentRevLatency(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4142
    const/16 v7, 0xd

    invoke-virtual {v1, v7, v6}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto :goto_1

    .line 4145
    :pswitch_7
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v8, p1}, Lcom/android/server/ILinkManager;->getNetworkType(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto :goto_1

    .line 4149
    :pswitch_8
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v7, p1}, Lcom/android/server/ILinkManager;->getNetworkType(I)I

    move-result v5

    .line 4150
    .local v5, netType:I
    if-lez v5, :cond_3

    .line 4151
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, v5

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v9, v7}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto :goto_1

    .line 4154
    :cond_3
    const-string v7, "unknown"

    invoke-virtual {v1, v9, v7}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 4158
    .end local v5           #netType:I
    :pswitch_9
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v7, p1}, Lcom/android/server/ILinkManager;->getNetworkType(I)I

    move-result v5

    .line 4159
    .restart local v5       #netType:I
    if-lez v5, :cond_4

    .line 4160
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v7, v5

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v10, v7}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 4163
    :cond_4
    const-string v7, "unknown"

    invoke-virtual {v1, v10, v7}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 4167
    .end local v5           #netType:I
    :pswitch_a
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v7, p1}, Lcom/android/server/ILinkManager;->getQosState(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4168
    const/16 v7, 0x14

    invoke-virtual {v1, v7, v6}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 4119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public requestLink(Landroid/net/LinkCapabilities;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 1
    .parameter "capabilities"
    .parameter "remoteIPAddress"
    .parameter "binder"

    .prologue
    .line 4062
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4063
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/ILinkManager;->requestLink(Landroid/net/LinkCapabilities;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    goto :goto_0
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)V
    .locals 5
    .parameter "forWhom"

    .prologue
    .line 3378
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3379
    monitor-enter p0

    .line 3380
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 3390
    :goto_0
    return-void

    .line 3381
    :cond_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    .line 3382
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3383
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 3384
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3385
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    iget v3, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3384
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestQoS(IILjava/lang/String;)Z
    .locals 1
    .parameter "id"
    .parameter "localPort"
    .parameter "localAddress"

    .prologue
    .line 4080
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4081
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/ILinkManager;->requestQoS(IILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestRouteToHost(II)Z
    .locals 2
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 1526
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1528
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 1529
    const/4 v1, 0x0

    .line 1532
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/ConnectivityService;->requestRouteToHostAddress(I[B)Z

    move-result v1

    goto :goto_0
.end method

.method public requestRouteToHostAddress(I[B)Z
    .locals 10
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    const/4 v6, 0x0

    .line 1545
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1546
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1547
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1550
    :cond_0
    const-string v7, ""

    const-string v8, "VZW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1551
    if-eqz p1, :cond_1

    const/4 v7, 0x5

    if-ne p1, v7, :cond_4

    :cond_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    const/16 v8, 0xc

    aget-object v7, v7, v8

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1555
    const/16 p1, 0xc

    .line 1557
    const-string v7, "ConnectivityService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestRouteToHost: Signed Application:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " using networkType"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1567
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1590
    :cond_3
    :goto_1
    return v6

    .line 1560
    :cond_4
    const/16 v7, 0x2000

    if-ne p1, v7, :cond_2

    .line 1562
    const/16 p1, 0x12

    goto :goto_0

    .line 1570
    :cond_5
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v7, p1

    .line 1572
    .local v5, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1580
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1582
    .local v3, token:J
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 1583
    .local v0, addr:Ljava/net/InetAddress;
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 1584
    .local v2, lp:Landroid/net/LinkProperties;
    invoke-direct {p0, v2, v0}, Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1588
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #lp:Landroid/net/LinkProperties;
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1585
    :catch_0
    move-exception v1

    .line 1586
    .local v1, e:Ljava/net/UnknownHostException;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestRouteToHostAddress got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1588
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public resumeQoS(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 4098
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4099
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v0, p1}, Lcom/android/server/ILinkManager;->resumeQoS(I)Z

    move-result v0

    goto :goto_0
.end method

.method public saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 5937
    const-string v2, "ConnectivityService"

    const-string v3, "saveDhcpServerConfiguration()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5938
    const/4 v0, 0x0

    .line 5939
    .local v0, changeHappened:Z
    if-nez p1, :cond_0

    .line 5940
    const/4 v0, 0x0

    .line 5955
    :goto_0
    return v0

    .line 5942
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5944
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v2, "wifiap_local_ip"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5945
    const-string v2, "wifiap_subnet_mask"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5946
    const-string v3, "wifiap_dhcp_enable"

    iget-boolean v2, p1, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5947
    const-string v2, "wifiap_dhcp_start_ip"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5948
    const-string v2, "wifiap_dhcp_end_ip"

    iget-object v3, p1, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5949
    const-string v2, "wifiap_dhcp_lease_time"

    iget v3, p1, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5950
    const-string v2, "wifiap_dhcp_max_user"

    iget v3, p1, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5952
    const/4 v0, 0x1

    goto :goto_0

    .line 5946
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setActiveDefaultNetwork(ILjava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "reason"

    .prologue
    .line 4027
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 4028
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4036
    :goto_0
    return-void

    .line 4031
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1393

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setDataDependency(IZ)V
    .locals 4
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 1731
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1733
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1735
    return-void

    .line 1733
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFmcDisabled()V
    .locals 2

    .prologue
    .line 3948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mFmcEnabled:Z

    .line 3949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFmcEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mFmcEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3950
    return-void
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .locals 6
    .parameter "proxyProperties"

    .prologue
    .line 3491
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 3492
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3493
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-ne p1, v4, :cond_1

    monitor-exit v5

    .line 3519
    :cond_0
    :goto_0
    return-void

    .line 3494
    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v4}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v5

    goto :goto_0

    .line 3513
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3495
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v5

    goto :goto_0

    .line 3497
    :cond_3
    const-string v1, ""

    .line 3498
    .local v1, host:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3499
    .local v2, port:I
    const-string v0, ""

    .line 3500
    .local v0, exclList:Ljava/lang/String;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3501
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, p1}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 3502
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 3503
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    .line 3504
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    .line 3508
    :goto_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3509
    .local v3, res:Landroid/content/ContentResolver;
    const-string v4, "global_http_proxy_host"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3510
    const-string v4, "global_http_proxy_port"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3511
    const-string v4, "global_http_proxy_exclusion_list"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3513
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3515
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-nez v4, :cond_0

    .line 3516
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    goto :goto_0

    .line 3506
    .end local v3           #res:Landroid/content/ContentResolver;
    :cond_4
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "httpProxy"
    .parameter "httpPort"

    .prologue
    .line 2949
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2950
    :cond_0
    const-string v0, "net.gprs.http-proxy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2960
    :goto_0
    return-void

    .line 2954
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 2955
    :cond_2
    const-string p2, "8080"

    .line 2958
    :cond_3
    const-string v0, "net.gprs.http-proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 8
    .parameter "enabled"

    .prologue
    const/16 v7, 0x6b

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1823
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1824
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMobileDataEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " called by PID ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1827
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1829
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1830
    const-string v2, "ConnectivityService"

    const-string v3, "CellularData is not allowed by admin"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :goto_0
    return-void

    .line 1835
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "persist.telephony.spdn"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p1, :cond_2

    .line 1838
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1839
    .local v1, intentDereg:Landroid/content/Intent;
    const-string v4, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1840
    const-string v4, "com.android.settings"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1841
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1843
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v5, v7, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v5, 0x5dc

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 1847
    .end local v1           #intentDereg:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v5, v7, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public setNetworkPreference(I)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 770
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 772
    return-void
.end method

.method public setPolicyDataEnable(IZ)V
    .locals 4
    .parameter "networkType"
    .parameter "enabled"

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x71

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1895
    return-void

    .line 1893
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRadio(IZ)Z
    .locals 3
    .parameter "netType"
    .parameter "turnOn"

    .prologue
    const/4 v1, 0x0

    .line 1064
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1065
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return v1

    .line 1068
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, p1

    .line 1069
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 6
    .parameter "turnOn"

    .prologue
    .line 1055
    const/4 v3, 0x1

    .line 1056
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1057
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 1058
    .local v4, t:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 1057
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1058
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1060
    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :cond_2
    return v3
.end method

.method public setTrackedCapabilities(I[I)V
    .locals 0
    .parameter "id"
    .parameter "capabilities"

    .prologue
    .line 4177
    return-void
.end method

.method public setUsbTethering(Z)I
    .locals 1
    .parameter "enable"

    .prologue
    .line 3325
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 3326
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3327
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    .line 3329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public startCne()V
    .locals 3

    .prologue
    .line 3822
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isCneStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3823
    new-instance v0, Lcom/android/server/QosManager;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/QosManager;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->qosManager:Lcom/android/server/QosManager;

    .line 3824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    .line 3825
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isCneAware()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3826
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->qosManager:Lcom/android/server/QosManager;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->makeVendorCne(Lcom/android/server/QosManager;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mCneObj:Ljava/lang/Object;

    .line 3827
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneObj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 3828
    const-string v0, "Vendor CNE is starting up"

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->logv(Ljava/lang/String;)V

    .line 3829
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mCneObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ILinkManager;

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    .line 3839
    :goto_0
    return-void

    .line 3833
    :cond_0
    const-string v0, "CNE is disabled."

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->logv(Ljava/lang/String;)V

    .line 3835
    :cond_1
    new-instance v0, Lcom/android/server/LinkManager;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->qosManager:Lcom/android/server/QosManager;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/LinkManager;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;Lcom/android/server/QosManager;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    goto :goto_0

    .line 3837
    :cond_2
    const-string v0, "CNE already Started"

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startFmc(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 3891
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3893
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 3894
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-nez v2, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 3897
    .local v3, networkState:Landroid/net/NetworkInfo$State;
    :goto_0
    invoke-static {p1}, Landroid/net/IFmcEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IFmcEventListener;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mListener:Landroid/net/IFmcEventListener;

    .line 3899
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v5, :cond_1

    .line 3901
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mListener:Landroid/net/IFmcEventListener;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/net/IFmcEventListener;->onFmcStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3921
    :goto_1
    return v4

    .line 3894
    .end local v3           #networkState:Landroid/net/NetworkInfo$State;
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    goto :goto_0

    .line 3903
    .restart local v3       #networkState:Landroid/net/NetworkInfo$State;
    :catch_0
    move-exception v1

    .line 3905
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in startFmc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3909
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mListener:Landroid/net/IFmcEventListener;

    invoke-static {v5, v6, p0}, Lcom/android/server/FmcStateMachine;->create(Landroid/content/Context;Landroid/net/IFmcEventListener;Lcom/android/server/ConnectivityService;)Lcom/android/server/FmcStateMachine;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mFmcSM:Lcom/android/server/FmcStateMachine;

    .line 3910
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mFmcSM:Lcom/android/server/FmcStateMachine;

    if-eqz v5, :cond_2

    .line 3912
    :try_start_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mListener:Landroid/net/IFmcEventListener;

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mFmcSM:Lcom/android/server/FmcStateMachine;

    invoke-virtual {v5}, Lcom/android/server/FmcStateMachine;->getStatus()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/net/IFmcEventListener;->onFmcStatus(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3916
    :goto_2
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mFmcSM:Lcom/android/server/FmcStateMachine;

    invoke-virtual {v4}, Lcom/android/server/FmcStateMachine;->startFmc()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/ConnectivityService;->mFmcEnabled:Z

    .line 3917
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFmcEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/ConnectivityService;->mFmcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3918
    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mFmcEnabled:Z

    goto :goto_1

    .line 3913
    :catch_1
    move-exception v1

    .line 3914
    .local v1, e:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during onFmcStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 3920
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v5, "mFmcSM is null while calling startFmc"

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "config"
    .parameter "racoon"
    .parameter "mtpd"

    .prologue
    .line 3724
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3725
    return-void
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .locals 32
    .parameter "networkType"
    .parameter "feature"
    .parameter "binder"

    .prologue
    .line 1146
    const-wide/16 v21, 0x0

    .line 1148
    .local v21, startTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 1151
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "startUsingNetworkFeature for net "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", uid="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1154
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1157
    :try_start_0
    const-string v28, "enableMMS"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_3

    .line 1158
    const/16 v20, 0x0

    .line 1159
    .local v20, restrictionPolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "enterprise_policy"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1161
    .local v8, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v8, :cond_0

    .line 1162
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v20

    .line 1164
    :cond_0
    const/4 v9, 0x0

    .line 1165
    .local v9, emergencyCallOnly:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 1166
    .local v23, token:J
    if-eqz v20, :cond_1

    .line 1167
    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v9

    .line 1169
    :cond_1
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1170
    if-eqz v9, :cond_3

    .line 1171
    const-string v28, "ConnectivityService"

    const-string v29, "Administrator blocked this device"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    const/16 v28, 0x3

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1375
    .local v11, execTime:J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1376
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .end local v8           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v9           #emergencyCallOnly:Z
    .end local v20           #restrictionPolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;
    .end local v23           #token:J
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1371
    :cond_2
    return v28

    .line 1177
    .end local v11           #execTime:J
    :cond_3
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v28, v0

    aget-object v28, v28, p1

    if-nez v28, :cond_5

    .line 1179
    :cond_4
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "startUsingNetworkFeature: invalid networkType. networkType = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1180
    const/16 v28, 0x3

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1375
    .restart local v11       #execTime:J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1376
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto :goto_0

    .line 1194
    .end local v11           #execTime:J
    :cond_5
    :try_start_2
    new-instance v13, Lcom/android/server/ConnectivityService$FeatureUser;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$FeatureUser;-><init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1197
    .local v13, f:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/ConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v27

    .line 1199
    .local v27, usedNetworkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1200
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1203
    :cond_6
    const-string v28, ""

    const-string v29, "VZW"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 1205
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "startUsingNetworkFeature usedNetworkType "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1206
    const-string v28, "startUsingNetworkFeature ConnectivityManager.TYPE_MOBILE_HIPRI 5"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1208
    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->isSignedApplication(I)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 1210
    const/16 v27, 0xc

    .line 1213
    :cond_7
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "startUsingNetworkFeature usedNetworkType "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1218
    :cond_8
    const-string v28, ""

    const-string v29, "VZW"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v28

    if-eqz v28, :cond_a

    .line 1219
    const/4 v15, 0x1

    .line 1221
    .local v15, needActivation:Z
    :try_start_3
    const-string v28, "phone"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v15

    .line 1228
    :goto_1
    const/16 v28, 0xc

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v15, v0, :cond_a

    .line 1229
    :try_start_4
    const-string v28, "Device is not activated yet"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1230
    const/16 v28, 0x3

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1375
    .restart local v11       #execTime:J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1376
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1222
    .end local v11           #execTime:J
    :catch_0
    move-exception v10

    .line 1223
    .local v10, ex:Landroid/os/RemoteException;
    :try_start_5
    const-string v28, "needsOtaServiceProvisioning returned RemoteException"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1373
    .end local v10           #ex:Landroid/os/RemoteException;
    .end local v13           #f:Lcom/android/server/ConnectivityService$FeatureUser;
    .end local v15           #needActivation:Z
    .end local v27           #usedNetworkType:I
    :catchall_0
    move-exception v28

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1375
    .restart local v11       #execTime:J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_9

    .line 1376
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1373
    :cond_9
    throw v28

    .line 1224
    .end local v11           #execTime:J
    .restart local v13       #f:Lcom/android/server/ConnectivityService$FeatureUser;
    .restart local v15       #needActivation:Z
    .restart local v27       #usedNetworkType:I
    :catch_1
    move-exception v10

    .line 1225
    .local v10, ex:Ljava/lang/NullPointerException;
    :try_start_6
    const-string v28, "needsOtaServiceProvisioning has NullPointerException"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1235
    .end local v10           #ex:Ljava/lang/NullPointerException;
    .end local v15           #needActivation:Z
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->isNetworkMeteredUnchecked(I)Z

    move-result v17

    .line 1237
    .local v17, networkMetered:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1238
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v30

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v26

    .line 1239
    .local v26, uidRules:I
    monitor-exit v29
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1240
    if-eqz v17, :cond_b

    and-int/lit8 v28, v26, 0x1

    if-eqz v28, :cond_b

    .line 1241
    :try_start_8
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "startUsingNetworkFeature: UID is restricted. UID = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1242
    const/16 v28, 0x3

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1375
    .restart local v11       #execTime:J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1376
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1239
    .end local v11           #execTime:J
    .end local v26           #uidRules:I
    :catchall_1
    move-exception v28

    :try_start_9
    monitor-exit v29
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v28

    .line 1245
    .restart local v26       #uidRules:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v28, v0

    aget-object v16, v28, v27

    .line 1246
    .local v16, network:Landroid/net/NetworkStateTracker;
    if-eqz v16, :cond_1e

    .line 1247
    new-instance v5, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v28

    move/from16 v0, v28

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1248
    .local v5, currentPid:Ljava/lang/Integer;
    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_19

    .line 1249
    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    .line 1251
    .local v18, ni:Landroid/net/NetworkInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v28

    if-nez v28, :cond_d

    .line 1252
    const-string v28, "enableDUNAlways"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_c

    .line 1253
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "special network not available ni="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {v13}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1256
    const/16 v28, 0x2

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1375
    .restart local v11       #execTime:J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1376
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1260
    .end local v11           #execTime:J
    :cond_c
    :try_start_b
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "special network not available, but try anyway ni="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1266
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->getRestoreDefaultNetworkDelay(I)I

    move-result v19

    .line 1268
    .local v19, restoreTimer:I
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1269
    const/4 v4, 0x1

    .line 1270
    .local v4, addToList:Z
    if-gez v19, :cond_13

    .line 1273
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1274
    .local v25, u:Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 1276
    const/4 v4, 0x0

    .line 1278
    invoke-virtual {v13}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 1301
    .end local v25           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_f
    :goto_2
    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v28, v0

    aget-object v28, v28, v27

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_11

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v28, v0

    aget-object v28, v28, v27

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    :cond_11
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1308
    if-ltz v19, :cond_12

    .line 1309
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x65

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v28 .. v31}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1313
    :cond_12
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v28

    if-nez v28, :cond_17

    .line 1315
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 1316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-wide v23

    .line 1319
    .restart local v23       #token:J
    :try_start_e
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1322
    :try_start_f
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1324
    const/16 v28, 0x0

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1375
    .restart local v11       #execTime:J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1376
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1284
    .end local v11           #execTime:J
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v23           #token:J
    :cond_13
    const/4 v7, -0x1

    .line 1286
    .local v7, duplicateIndex:I
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1287
    .restart local v25       #u:Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1293
    .end local v25           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_15
    if-ltz v7, :cond_f

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1295
    .local v6, dupUser:Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x65

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1296
    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1306
    .end local v6           #dupUser:Lcom/android/server/ConnectivityService$FeatureUser;
    .end local v7           #duplicateIndex:I
    .end local v14           #i$:Ljava/util/Iterator;
    :catchall_2
    move-exception v28

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v28

    .line 1322
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v23       #token:J
    :catchall_3
    move-exception v28

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1327
    .end local v23           #token:J
    :cond_16
    const/16 v28, 0x1

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1375
    .restart local v11       #execTime:J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1376
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1334
    .end local v11           #execTime:J
    :cond_17
    :try_start_12
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "startUsingNetworkFeature reconnecting to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1340
    invoke-interface/range {v16 .. v16}, Landroid/net/NetworkStateTracker;->reconnect()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result v28

    if-eqz v28, :cond_18

    .line 1341
    const/16 v28, 0x1

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1375
    .restart local v11       #execTime:J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1376
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1343
    .end local v11           #execTime:J
    :cond_18
    const/16 v28, 0x3

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1375
    .restart local v11       #execTime:J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1376
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1347
    .end local v4           #addToList:Z
    .end local v11           #execTime:J
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v18           #ni:Landroid/net/NetworkInfo;
    .end local v19           #restoreTimer:I
    :cond_19
    :try_start_13
    monitor-enter p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1350
    const/4 v4, 0x1

    .line 1351
    .restart local v4       #addToList:Z
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1352
    .restart local v25       #u:Lcom/android/server/ConnectivityService$FeatureUser;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 1353
    const/4 v4, 0x0

    .line 1358
    .end local v25           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_1b
    if-eqz v4, :cond_1d

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1363
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v28, v0

    aget-object v28, v28, v27

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1c

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v28, v0

    aget-object v28, v28, v27

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1367
    :cond_1c
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 1368
    const/16 v28, -0x1

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1375
    .restart local v11       #execTime:J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1376
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 1361
    .end local v11           #execTime:J
    :cond_1d
    :try_start_15
    invoke-virtual {v13}, Lcom/android/server/ConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    goto :goto_3

    .line 1367
    .end local v14           #i$:Ljava/util/Iterator;
    :catchall_4
    move-exception v28

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw v28
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1371
    .end local v4           #addToList:Z
    .end local v5           #currentPid:Ljava/lang/Integer;
    :cond_1e
    const/16 v28, 0x2

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v11, v29, v21

    .line 1375
    .restart local v11       #execTime:J
    const-wide/16 v29, 0xfa

    cmp-long v29, v11, v29

    if-lez v29, :cond_2

    .line 1376
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ms"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0
.end method

.method public stopFmc(Landroid/os/IBinder;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 3927
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->setFmcDisabled()V

    .line 3928
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mFmcSM:Lcom/android/server/FmcStateMachine;

    if-eqz v0, :cond_0

    .line 3929
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mFmcSM:Lcom/android/server/FmcStateMachine;

    invoke-virtual {v0}, Lcom/android/server/FmcStateMachine;->stopFmc()Z

    move-result v0

    .line 3932
    :goto_0
    return v0

    .line 3931
    :cond_0
    const-string v0, "mFmcSM is null while calling stopFmc"

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3932
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 8
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v6, 0x1

    .line 1386
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1388
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v2

    .line 1389
    .local v2, pid:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v4

    .line 1391
    .local v4, uid:I
    const/4 v3, 0x0

    .line 1392
    .local v3, u:Lcom/android/server/ConnectivityService$FeatureUser;
    const/4 v0, 0x0

    .line 1394
    .local v0, found:Z
    monitor-enter p0

    .line 1395
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 1396
    .local v5, x:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v5, v2, v4, p1, p2}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1397
    move-object v3, v5

    .line 1398
    const/4 v0, 0x1

    .line 1402
    .end local v5           #x:Lcom/android/server/ConnectivityService$FeatureUser;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1403
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 1405
    invoke-direct {p0, v3, v6}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    move-result v6

    .line 1409
    :cond_2
    return v6

    .line 1402
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public suspendQoS(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 4089
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mCneStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4090
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v0, p1}, Lcom/android/server/ILinkManager;->suspendQoS(I)Z

    move-result v0

    goto :goto_0
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 2284
    monitor-enter p0

    .line 2285
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 2286
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2287
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2290
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2292
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2293
    return-void

    .line 2290
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 3259
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 3261
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3262
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 3264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 3270
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherChangePermission()V

    .line 3272
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3273
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 3275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public updateBlockedUids(IZ)V
    .locals 3
    .parameter "uid"
    .parameter "isBlocked"

    .prologue
    .line 3876
    :try_start_0
    const-string v1, "alarm"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService;

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mAlarmMgrSvc:Lcom/android/server/AlarmManagerService;

    .line 3877
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mAlarmMgrSvc:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AlarmManagerService;->updateBlockedUids(IZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3882
    :goto_0
    :try_start_1
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService;

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mPowerMgrSvc:Lcom/android/server/PowerManagerService;

    .line 3883
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPowerMgrSvc:Lcom/android/server/PowerManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/PowerManagerService;->updateBlockedUids(IZ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3887
    :goto_1
    return-void

    .line 3878
    :catch_0
    move-exception v0

    .line 3879
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could Not Update blocked Uids with alarmManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3884
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3885
    .restart local v0       #e:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could Not Update blocked Uids with powerManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    .locals 3
    .parameter "nt"

    .prologue
    .line 2620
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v1

    .line 2621
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2623
    .local v0, bufferSizes:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 2627
    const-string v1, "net.tcp.buffersize.default"

    .line 2628
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2632
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2637
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setBufferSize(Ljava/lang/String;)V

    .line 2639
    :cond_1
    return-void
.end method

.method public updateOperatorPolicy(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 4010
    const-string v1, "Updating Operator Policy"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4011
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->isCneStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4013
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLinkManager:Lcom/android/server/ILinkManager;

    invoke-interface {v1, p1}, Lcom/android/server/ILinkManager;->updateOperatorPolicy(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4019
    :goto_0
    return v1

    .line 4014
    :catch_0
    move-exception v0

    .line 4015
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update operator policy error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4018
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "Updating Operator Policy failed"

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4019
    const/4 v1, 0x0

    goto :goto_0
.end method
