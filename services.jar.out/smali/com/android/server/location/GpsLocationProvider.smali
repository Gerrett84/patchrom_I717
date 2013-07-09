.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;,
        Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;,
        Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$Listener;,
        Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final AGPS_TYPE_SUPL_2:I = 0x3

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_COMPLETED:I = 0xf

.field private static final ENABLE:I = 0x2

.field private static final ENABLE_TRACKING:I = 0x3

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = -0x1

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_ALMANAC_CORR:I = 0x1000

.field private static final GPS_DELETE_ALMANAC_CORR_GLO:I = 0x40000

.field private static final GPS_DELETE_ALMANAC_GLO:I = 0x8000

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x800

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_EPHEMERIS_GLO:I = 0x4000

.field private static final GPS_DELETE_FREQ_BIAS_EST:I = 0x2000

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVDIR_GLO:I = 0x10000

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_SVSTEER_GLO:I = 0x20000

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_TIME_GLO:I = 0x100000

.field private static final GPS_DELETE_TIME_GPS:I = 0x80000

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x3e8

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_PROVIDER_MESSAGE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final HYBRID_PROVIDER_MESSAGE:I = 0x2

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_FLOOR_NUMBER:I = 0x80

.field private static final LOCATION_HAS_IS_INDOOR:I = 0x40

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_MAP_INDEX:I = 0x200

.field private static final LOCATION_HAS_MAP_URL:I = 0x100

.field private static final LOCATION_HAS_SOURCE_INFO:I = 0x20

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REQUEST_NETWORK_LOCATION:I = 0xd

.field private static final REQUEST_PHONE_CONTEXT_SETTINGS:I = 0xb

.field private static final REQUEST_SINGLE_SHOT:I = 0xa

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field public static final SEC_PROPERTIES_FILE:Ljava/lang/String; = "/data/data/com.android.angryGps/secgps.conf"

.field private static final SKT_AGPS_ENABLE:Ljava/lang/String; = "com.skt.intent.action.AGPS"

.field private static final SKT_CMDTYPE:Ljava/lang/String; = "cmdType"

.field private static final SKT_MSASSISTED:Ljava/lang/String; = "msAssisted"

.field private static final SKT_MSBASED:Ljava/lang/String; = "msBased"

.field private static final SKT_OFF:Ljava/lang/String; = "off"

.field private static final SKT_ON:Ljava/lang/String; = "on"

.field private static final SKT_OPTYPE:Ljava/lang/String; = "opType"

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final ULP_LOCATION_IS_FROM_GNSS:I = 0x2

.field private static final ULP_LOCATION_IS_FROM_HYBRID:I = 0x1

.field private static final ULP_NETWORK_POSITION_SRC_CELL:I = 0x2

.field private static final ULP_NETWORK_POSITION_SRC_UNKNOWN:I = 0xff

.field private static final ULP_NETWORK_POSITION_SRC_WIFI:I = 0x1

.field private static final ULP_NETWORK_POS_GET_LAST_KNOWN_LOCATION_REQUEST:I = 0x3

.field private static final ULP_NETWORK_POS_START_PERIODIC_REQUEST:I = 0x2

.field private static final ULP_NETWORK_POS_STATUS_REQUEST:I = 0x1

.field private static final ULP_NETWORK_POS_STOP_REQUEST:I = 0x4

.field private static final ULP_PHONE_CONTEXT_AGPS_OFF:I = 0x8

.field private static final ULP_PHONE_CONTEXT_AGPS_ON:I = 0x4

.field private static final ULP_PHONE_CONTEXT_AGPS_SETTING:I = 0x10

.field private static final ULP_PHONE_CONTEXT_BATTERY_CHARGING_OFF:I = 0x200

.field private static final ULP_PHONE_CONTEXT_BATTERY_CHARGING_ON:I = 0x100

.field private static final ULP_PHONE_CONTEXT_BATTERY_CHARGING_STATE:I = 0x8

.field private static final ULP_PHONE_CONTEXT_CELL_BASED_POSITION_OFF:I = 0x20

.field private static final ULP_PHONE_CONTEXT_CELL_BASED_POSITION_ON:I = 0x10

.field private static final ULP_PHONE_CONTEXT_ENH_LOCATION_SERVICES_OFF:I = 0x800

.field private static final ULP_PHONE_CONTEXT_ENH_LOCATION_SERVICES_ON:I = 0x400

.field private static final ULP_PHONE_CONTEXT_ENH_LOCATION_SERVICES_SETTING:I = 0x20

.field private static final ULP_PHONE_CONTEXT_GPS_OFF:I = 0x2

.field private static final ULP_PHONE_CONTEXT_GPS_ON:I = 0x1

.field private static final ULP_PHONE_CONTEXT_GPS_SETTING:I = 0x1

.field private static final ULP_PHONE_CONTEXT_NETWORK_POSITION_SETTING:I = 0x2

.field private static final ULP_PHONE_CONTEXT_REQUEST_TYPE_ONCHANGE:I = 0x2

.field private static final ULP_PHONE_CONTEXT_REQUEST_TYPE_SINGLE:I = 0x1

.field private static final ULP_PHONE_CONTEXT_UPDATE_TYPE_ONCHANGE:I = 0x2

.field private static final ULP_PHONE_CONTEXT_UPDATE_TYPE_SINGLE:I = 0x1

.field private static final ULP_PHONE_CONTEXT_WIFI_OFF:I = 0x80

.field private static final ULP_PHONE_CONTEXT_WIFI_ON:I = 0x40

.field private static final ULP_PHONE_CONTEXT_WIFI_SETTING:I = 0x4

.field private static final ULP_PROVIDER_SOURCE_GNSS:I = 0x1

.field private static final ULP_PROVIDER_SOURCE_HYBRID:I = 0x2

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NATIVE_PHONE_CONTEXT_SETTINGS:I = 0xc

.field private static final UPDATE_NETWORK_LOCATION:I = 0xe

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"

.field private static mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

.field private static mNtpTimeCertainty:J

.field private static mNtpTimeOffset:J

.field public static mSecProperties:Ljava/util/Properties;


# instance fields
.field private googleSuplAddr:Ljava/lang/String;

.field private googleSuplPort:I

.field private isKtGps:Z

.field private isSKAF:Z

.field private ktPositionMode:I

.field private volatile mAgpsSetting:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private volatile mBatteryCharging:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private mConfSuplServerHost:Ljava/lang/String;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private volatile mEnhServicesSetting:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private mGnssUsed:[I

.field private volatile mGpsEnabled:Z

.field private volatile mGpsSetting:Z

.field private mGpsStarted:Z

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private volatile mHybridEnabled:Z

.field private mHybridStarted:Z

.field private volatile mInitialized:Z

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

.field private mKTSuplServerHost:Ljava/lang/String;

.field private mKTSuplServerPort:I

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocMgr:Landroid/location/LocationManager;

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private mMultipleIntentCount:I

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNetworkInfo:Ljava/lang/String;

.field private mNetworkLocationListener:Landroid/location/LocationListener;

.field private volatile mNetworkProvSetting:Z

.field private mNmeaBuffer:[B

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mPendingListenerMessages:I

.field private mPendingMessageBits:I

.field private mPeriodicTimeInjection:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPositionMode:I

.field private mProperties:Ljava/util/Properties;

.field private volatile mRequestContextType:I

.field private volatile mRequestType:I

.field private mSingleShotGps:Z

.field private mSingleShotHybrid:Z

.field private mSnrs:[F

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTTFF:I

.field private final mThread:Ljava/lang/Thread;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private volatile mWifiSetting:Z

.field private mcc:I

.field private mnc:I

.field private sktSuplAddr:Ljava/lang/String;

.field private sktSuplPort:I

.field private suplPort:I

.field private suplUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 353
    sput-wide v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTimeOffset:J

    .line 354
    sput-wide v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTimeCertainty:J

    .line 2669
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    .line 2726
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 13
    .parameter "context"
    .parameter "locationManager"

    .prologue
    const/4 v12, 0x3

    const/16 v11, 0x20

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 516
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 223
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryCharging:Z

    .line 224
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    .line 225
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mAgpsSetting:Z

    .line 226
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkProvSetting:Z

    .line 227
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiSetting:Z

    .line 228
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mEnhServicesSetting:Z

    .line 267
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    .line 268
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    .line 275
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 292
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    .line 293
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    .line 296
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    .line 306
    sget-object v7, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 307
    sget-object v7, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 313
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 315
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 317
    const/16 v7, 0x3e8

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 320
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 323
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    .line 326
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    .line 329
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotHybrid:Z

    .line 338
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 340
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 342
    iput v12, p0, Lcom/android/server/location/GpsLocationProvider;->mMultipleIntentCount:I

    .line 365
    new-instance v7, Landroid/location/Location;

    const-string v8, "gps"

    invoke-direct {v7, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 366
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 367
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    .line 374
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 398
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 408
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->isSKAF:Z

    .line 416
    const-string v7, "wpde.nate.com"

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplAddr:Ljava/lang/String;

    .line 417
    const/16 v7, 0x1c6b

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplPort:I

    .line 418
    const-string v7, "supl.google.com"

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->googleSuplAddr:Ljava/lang/String;

    .line 419
    const/16 v7, 0x1c6c

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->googleSuplPort:I

    .line 425
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->isKtGps:Z

    .line 428
    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->ktPositionMode:I

    .line 430
    new-instance v7, Lcom/android/server/location/GpsLocationProvider$1;

    invoke-direct {v7, p0}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 481
    new-instance v7, Lcom/android/server/location/GpsLocationProvider$2;

    invoke-direct {v7, p0}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 2278
    new-instance v7, Lcom/android/server/location/GpsLocationProvider$3;

    invoke-direct {v7, p0}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2411
    new-instance v7, Lcom/android/server/location/GpsLocationProvider$4;

    invoke-direct {v7, p0}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationListener:Landroid/location/LocationListener;

    .line 2659
    new-array v7, v11, [I

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    .line 2660
    new-array v7, v11, [F

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    .line 2661
    new-array v7, v11, [F

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    .line 2662
    new-array v7, v11, [F

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 2663
    new-array v7, v12, [I

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    .line 2664
    new-array v7, v11, [I

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssUsed:[I

    .line 2667
    const/16 v7, 0x78

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 3130
    new-instance v7, Lcom/android/server/location/GpsLocationProvider$5;

    invoke-direct {v7, p0}, Lcom/android/server/location/GpsLocationProvider$5;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 517
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 518
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 519
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 520
    new-instance v7, Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v7, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 522
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 523
    const-string v7, "SKT"

    const-string v8, "ATT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "KTT"

    const-string v8, "ATT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 525
    :cond_0
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 527
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6, v7, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 530
    .end local v6           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 531
    .local v4, powerManager:Landroid/os/PowerManager;
    const-string v7, "GpsLocationProvider"

    invoke-virtual {v4, v9, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 532
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 534
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 535
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v10, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 536
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v10, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 538
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 539
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    const-string v7, "sms"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 541
    const-string v7, "localhost"

    const-string v8, "7275"

    invoke-virtual {v2, v7, v8}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 544
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 545
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    :try_start_0
    const-string v7, "application/vnd.omaloc-supl-init"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 553
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 556
    const-string v7, "batteryinfo"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 558
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 560
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v7, "/etc/gps.conf"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    .local v1, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 562
    .local v5, stream:Ljava/io/FileInputStream;
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-virtual {v7, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 563
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 565
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v8, "SUPL_HOST"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 566
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v8, "SUPL_PORT"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, portString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    .line 569
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 575
    :cond_2
    :goto_1
    :try_start_3
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v8, "C2K_HOST"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 576
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v8, "C2K_PORT"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 577
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    .line 579
    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 589
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    new-instance v7, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;

    invoke-direct {v7, p0}, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 590
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 593
    :goto_3
    :try_start_5
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 599
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v7, "GpsLocationProvider"

    const-string v8, "Malformed SUPL init mime type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 570
    .end local v0           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #portString:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 571
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to parse SUPL_PORT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 584
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 585
    .local v0, e:Ljava/io/IOException;
    const-string v7, "GpsLocationProvider"

    const-string v8, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 580
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #portString:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 581
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to parse C2K_PORT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 595
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    .line 596
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnable(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleDisable(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingGps(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingHybrid(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShotGps()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShotHybrid()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleAddListener(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleRemoveListener(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextRequest(II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/location/GpsLocationProvider;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextUpdate(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleNativeNetworkLocationRequest(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleNetworkLocationUpdate(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$3572(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$3608(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$3610(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->initialize()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/server/location/GpsLocationProvider;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocMgr:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/location/GpsLocationProvider;IIJFZII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 104
    invoke-direct/range {p0 .. p8}, Lcom/android/server/location/GpsLocationProvider;->native_update_criteria(IIJFZII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4802(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkInfo:Ljava/lang/String;

    return-object p1
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 500
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 501
    .local v1, messages:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 502
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 503
    .local v2, supl_init:[B
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    .end local v2           #supl_init:[B
    :cond_0
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 508
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 509
    .local v0, supl_init:[B
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 510
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "extras"

    .prologue
    .line 1616
    if-nez p1, :cond_1

    .line 1617
    const/4 v0, -0x1

    .line 1644
    .local v0, flags:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_17

    .line 1645
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 1646
    const/4 v1, 0x1

    .line 1649
    :goto_1
    return v1

    .line 1619
    .end local v0           #flags:I
    :cond_1
    const/4 v0, 0x0

    .line 1620
    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    .line 1621
    :cond_2
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 1622
    :cond_3
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    .line 1623
    :cond_4
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    .line 1624
    :cond_5
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    .line 1625
    :cond_6
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 1626
    :cond_7
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    .line 1627
    :cond_8
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x80

    .line 1628
    :cond_9
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x100

    .line 1629
    :cond_a
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x200

    .line 1630
    :cond_b
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x400

    .line 1631
    :cond_c
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    or-int/lit16 v0, v0, 0x800

    .line 1632
    :cond_d
    const-string v1, "almanac-corr"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit16 v0, v0, 0x1000

    .line 1633
    :cond_e
    const-string v1, "freq-bias-est"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    or-int/lit16 v0, v0, 0x2000

    .line 1634
    :cond_f
    const-string v1, "ephemeris-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit16 v0, v0, 0x4000

    .line 1635
    :cond_10
    const-string v1, "almanac-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1636
    :cond_11
    const-string v1, "svdir-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 1637
    :cond_12
    const-string v1, "svsteer-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    .line 1638
    :cond_13
    const-string v1, "almanac-corr-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    .line 1639
    :cond_14
    const-string v1, "time-gps"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    .line 1640
    :cond_15
    const-string v1, "time-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    .line 1641
    :cond_16
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 1649
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .locals 6
    .parameter "connType"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2728
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAGpsConnectionInfo connType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    packed-switch p1, :pswitch_data_0

    .line 2745
    :goto_0
    return-object v0

    .line 2733
    :pswitch_0
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v1, v1, v4

    if-nez v1, :cond_0

    .line 2734
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    invoke-direct {v2, p0, v4, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V

    aput-object v2, v1, v4

    .line 2735
    :cond_0
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v0, v0, v4

    goto :goto_0

    .line 2737
    :pswitch_1
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v1, v1, v5

    if-nez v1, :cond_1

    .line 2741
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V

    aput-object v2, v1, v5

    .line 2743
    :cond_1
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v0, v0, v5

    goto :goto_0

    .line 2729
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2632
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2633
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2635
    .local v6, apn:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "apn"

    aput-object v4, v2, v5

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2638
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2640
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2641
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2646
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2649
    :cond_1
    return-object v6

    .line 2643
    :catch_0
    move-exception v8

    .line 2644
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "GpsLocationProvider"

    const-string v2, "getSelectedApn cannot use cursor!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2646
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private handleAddListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1474
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1475
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1477
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate add listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    monitor-exit v2

    .line 1489
    :goto_0
    return-void

    .line 1480
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1481
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1483
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1488
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1484
    :catch_0
    move-exception v0

    .line 1485
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in addListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleDisable(I)V
    .locals 4
    .parameter "provider_message_type"

    .prologue
    const/4 v3, 0x0

    .line 1010
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDisable.provider_message_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    if-nez v0, :cond_0

    .line 1033
    :goto_0
    return-void

    .line 1020
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    .line 1023
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1024
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1027
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_cleanup()V

    .line 1029
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    .line 1031
    :cond_1
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDisable.EndGpsProvState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HybridProvState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HalState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDownloadXtraData()V
    .locals 9

    .prologue
    const/4 v7, 0x6

    .line 773
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v5, :cond_0

    .line 775
    sget-object v5, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 806
    :goto_0
    return-void

    .line 778
    :cond_0
    sget-object v5, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Downloading:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 781
    new-instance v4, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {v4, v5, v6}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    .line 782
    .local v4, xtraDownloader:Lcom/android/server/location/GpsXtraDownloader;
    invoke-virtual {v4}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    .line 783
    .local v0, data:[B
    if-eqz v0, :cond_4

    .line 784
    const-string v5, "LGT"

    const-string v6, "ATT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 785
    const/16 v5, 0xf

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 788
    :cond_1
    const-string v5, "GpsLocationProvider"

    const-string v6, "calling native_inject_xtra_data"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v5, "SKT"

    const-string v6, "ATT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "KTT"

    const-string v6, "ATT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "LGT"

    const-string v6, "ATT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 793
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 794
    .local v2, timestamp:J
    const-string v5, "persist.sys.xtra_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.angryGps.XtraSettings"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 798
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #timestamp:J
    :cond_3
    array-length v5, v0

    invoke-direct {p0, v0, v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    .line 805
    :goto_1
    sget-object v5, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    goto :goto_0

    .line 802
    :cond_4
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 803
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0x493e0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private handleEnable(I)V
    .locals 8
    .parameter "provider_message_type"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 955
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnable.provider_message_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    if-ne v0, v7, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    if-ne v0, v7, :cond_0

    .line 990
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    if-nez v0, :cond_6

    .line 962
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    .line 964
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    if-eqz v0, :cond_5

    .line 965
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 966
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 967
    const-string v0, "SKT"

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 968
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 973
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 974
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 979
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    .line 984
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    if-ne v0, v7, :cond_3

    if-ne p1, v7, :cond_3

    .line 986
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    .line 988
    :cond_3
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnable.EndGpsProvState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HybridProvState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HalState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 970
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v7, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_1

    .line 977
    :cond_5
    const-string v0, "GpsLocationProvider"

    const-string v1, "Failed to enable location provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 981
    :cond_6
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    goto :goto_3
.end method

.method private handleEnableLocationTrackingGps(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    .line 1076
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In handleEnableLocationTrackingGps. enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    if-eqz p1, :cond_0

    .line 1078
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1079
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1080
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    .line 1092
    :goto_0
    return-void

    .line 1082
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1083
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1084
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1086
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1088
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1090
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleEnableLocationTrackingHybrid(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1101
    if-ne p1, v2, :cond_1

    .line 1102
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-nez v0, :cond_0

    .line 1103
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    .line 1105
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in handleEnableLocationTrackingHybrid()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :goto_0
    return-void

    .line 1109
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    .line 1119
    :goto_1
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In handleEnableLocationTrackingHybrid.End. enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHybridStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mGpsStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1112
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-nez v0, :cond_2

    .line 1113
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1114
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 1116
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotHybrid:Z

    .line 1117
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    goto :goto_1
.end method

.method private handleInjectNtpTime()V
    .locals 19

    .prologue
    .line 726
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v2, :cond_0

    .line 728
    sget-object v2, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 770
    :goto_0
    return-void

    .line 731
    :cond_0
    sget-object v2, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Downloading:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v7

    const-wide/32 v17, 0x5265c00

    cmp-long v2, v7, v17

    if-ltz v2, :cond_1

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    .line 741
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v7

    const-wide/32 v17, 0x5265c00

    cmp-long v2, v7, v17

    if-gez v2, :cond_3

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v3

    .line 743
    .local v3, time:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v5

    .line 744
    .local v5, timeReference:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v7

    sput-wide v7, Lcom/android/server/location/GpsLocationProvider;->mNtpTimeCertainty:J

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 746
    .local v15, now:J
    sub-long v7, v3, v15

    sput-wide v7, Lcom/android/server/location/GpsLocationProvider;->mNtpTimeOffset:J

    .line 752
    sget-wide v7, Lcom/android/server/location/GpsLocationProvider;->mNtpTimeCertainty:J

    long-to-int v7, v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    .line 753
    const-wide/32 v13, 0x5265c00

    .line 762
    .end local v3           #time:J
    .end local v5           #timeReference:J
    .local v13, delay:J
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-eqz v2, :cond_2

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v7, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 769
    :cond_2
    sget-object v2, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    goto :goto_0

    .line 755
    .end local v13           #delay:J
    .end local v15           #now:J
    :cond_3
    const-string v2, "GpsLocationProvider"

    const-string v7, "requestTime failed Use system time instead of NTP time"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 757
    .restart local v15       #now:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 758
    .local v10, responseTicks:J
    sget-wide v7, Lcom/android/server/location/GpsLocationProvider;->mNtpTimeOffset:J

    add-long v8, v15, v7

    sget-wide v17, Lcom/android/server/location/GpsLocationProvider;->mNtpTimeCertainty:J

    move-wide/from16 v0, v17

    long-to-int v12, v0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    .line 759
    const-wide/32 v13, 0x5265c00

    .restart local v13       #delay:J
    goto :goto_1
.end method

.method private handleNativeNetworkLocationRequest(II)V
    .locals 8
    .parameter "type"
    .parameter "interval"

    .prologue
    .line 1189
    packed-switch p1, :pswitch_data_0

    .line 1209
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNativeNetworkLocationRequest. Inccorect request sent in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :goto_0
    return-void

    .line 1191
    :pswitch_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleNativeNetworkLocationRequest NLP start from GP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocMgr:Landroid/location/LocationManager;

    const-string v1, "network"

    int-to-long v2, p2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 1195
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocMgr:Landroid/location/LocationManager;

    const-string v1, "LocationManager.NETWORK_PROVIDER"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 1196
    .local v6, location:Landroid/location/Location;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 1197
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1198
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 1199
    .local v7, m:Landroid/os/Message;
    const/4 v0, 0x0

    iput v0, v7, Landroid/os/Message;->arg1:I

    .line 1200
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1201
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1202
    monitor-exit v1

    goto :goto_0

    .end local v7           #m:Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1205
    .end local v6           #location:Landroid/location/Location;
    :pswitch_2
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleNativeNetworkLocationRequest NLP stop from GP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    .line 1189
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleNativePhoneContextRequest(II)V
    .locals 3
    .parameter "contextType"
    .parameter "requestType"

    .prologue
    .line 1180
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    .line 1181
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    .line 1182
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNativePhoneContextRequest invoked from native layer with mRequestContextType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRequestType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextUpdate(ILandroid/os/Bundle;)V

    .line 1185
    return-void
.end method

.method private handleNativePhoneContextUpdate(ILandroid/os/Bundle;)V
    .locals 26
    .parameter "updateType"
    .parameter "settingsValues"

    .prologue
    .line 1216
    const/4 v3, 0x0

    .line 1218
    .local v3, currentContextType:I
    const/4 v5, 0x0

    .local v5, currentAgpsSetting:Z
    const/4 v7, 0x0

    .line 1219
    .local v7, currentWifiSetting:Z
    const/4 v4, 0x0

    .local v4, currentGpsSetting:Z
    const/4 v6, 0x0

    .line 1220
    .local v6, currentNetworkProvSetting:Z
    const/4 v8, 0x0

    .local v8, currentBatteryCharging:Z
    const/4 v9, 0x0

    .line 1221
    .local v9, currentEnhLocationServicesSetting:Z
    const/16 v18, 0x0

    .local v18, wasAgpsSettingAvailable:Z
    const/16 v23, 0x0

    .line 1222
    .local v23, wasWifiSettingAvailable:Z
    const/16 v21, 0x0

    .local v21, wasGpsSettingAvailable:Z
    const/16 v22, 0x0

    .line 1223
    .local v22, wasNetworkProviderSettingAvailable:Z
    const/16 v19, 0x0

    .local v19, wasBatteryChargingAvailable:Z
    const/16 v20, 0x0

    .line 1225
    .local v20, wasEnhLocationServicesSettingAvailable:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 1226
    .local v17, resolver:Landroid/content/ContentResolver;
    const-string v2, "GpsLocationProvider"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "handleNativePhoneContextUpdate called. updateType: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mRequestContextType: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mRequestType: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    if-nez v2, :cond_0

    .line 1230
    const-string v2, "GpsLocationProvider"

    const-string v24, "handleNativePhoneContextUpdate. Update obtained before request. Ignoring"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :goto_0
    return-void

    .line 1235
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v2, v0, :cond_1

    .line 1237
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 1238
    const-string v2, "gps"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 1240
    const/16 v21, 0x1

    .line 1251
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x10

    const/16 v24, 0x10

    move/from16 v0, v24

    if-ne v2, v0, :cond_2

    .line 1253
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    .line 1254
    const-string v2, "assisted_gps_enabled"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v2, v0, :cond_9

    const/4 v5, 0x1

    .line 1256
    :goto_2
    const/16 v18, 0x1

    .line 1267
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x2

    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v2, v0, :cond_3

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocMgr:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v16

    .line 1271
    .local v16, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "network"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v2, v0, :cond_b

    const/4 v14, 0x1

    .line 1272
    .local v14, networkLocProvAvailable:Z
    :goto_4
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_d

    .line 1273
    const-string v2, "network"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v14, :cond_c

    const/4 v6, 0x1

    .line 1276
    :goto_5
    const/16 v22, 0x1

    .line 1289
    .end local v14           #networkLocProvAvailable:Z
    .end local v16           #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x4

    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v2, v0, :cond_4

    .line 1292
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    .line 1293
    const-string v2, "wifi_on"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v2, v0, :cond_f

    const/4 v7, 0x1

    .line 1295
    :goto_7
    const/16 v23, 0x1

    .line 1307
    :cond_4
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x20

    const/16 v24, 0x20

    move/from16 v0, v24

    if-ne v2, v0, :cond_5

    .line 1310
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_12

    .line 1311
    const-string v2, "enhLocationServices_on"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1314
    .local v11, currentEnhLocationServicesSettingString:Ljava/lang/String;
    if-eqz v11, :cond_11

    .line 1315
    const-string v2, "1"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1320
    :goto_9
    const/16 v20, 0x1

    .line 1333
    .end local v11           #currentEnhLocationServicesSettingString:Ljava/lang/String;
    :cond_5
    :goto_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x8

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v2, v0, :cond_7

    .line 1336
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_14

    .line 1340
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1341
    .local v13, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v10

    .line 1344
    .local v10, batteryIntent:Landroid/content/Intent;
    const/4 v15, -0x1

    .line 1345
    .local v15, plugged:I
    const-string v2, "plugged"

    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 1346
    const/4 v2, 0x1

    if-eq v15, v2, :cond_6

    const/4 v2, 0x2

    if-ne v15, v2, :cond_13

    :cond_6
    const/4 v8, 0x1

    .line 1348
    :goto_b
    const/16 v19, 0x1

    .line 1363
    .end local v10           #batteryIntent:Landroid/content/Intent;
    .end local v13           #intentFilter:Landroid/content/IntentFilter;
    .end local v15           #plugged:I
    :cond_7
    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    .line 1367
    if-nez v21, :cond_15

    .line 1368
    and-int/lit8 v3, v3, -0x2

    .line 1377
    :goto_d
    if-nez v18, :cond_17

    .line 1378
    and-int/lit8 v3, v3, -0x11

    .line 1387
    :goto_e
    if-nez v22, :cond_19

    .line 1388
    and-int/lit8 v3, v3, -0x3

    .line 1397
    :goto_f
    if-nez v23, :cond_1b

    .line 1398
    and-int/lit8 v3, v3, -0x5

    .line 1407
    :goto_10
    if-nez v20, :cond_1d

    .line 1408
    and-int/lit8 v3, v3, -0x21

    .line 1417
    :goto_11
    if-nez v19, :cond_1f

    .line 1418
    and-int/lit8 v3, v3, -0x9

    :goto_12
    move-object/from16 v2, p0

    .line 1428
    invoke-direct/range {v2 .. v9}, Lcom/android/server/location/GpsLocationProvider;->native_update_settings(IZZZZZZ)Z

    .line 1431
    const-string v2, "GpsLocationProvider"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "After calling native_update_settings. currentContextType: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " sGpsSetting: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "currentAgpsSetting: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " currentNetworkProvSetting: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const-string v2, "GpsLocationProvider"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "native_update_settings. currentWifiSetting: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " currentBatteryCharging: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " currentEnhLocationServicesSetting: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1243
    :cond_8
    :try_start_1
    const-string v2, "gpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1245
    const/16 v21, 0x1

    .line 1246
    const-string v2, "gpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_1

    .line 1254
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1259
    :cond_a
    const-string v2, "agpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1261
    const/16 v18, 0x1

    .line 1262
    const-string v2, "agpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_3

    .line 1271
    .restart local v16       #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1273
    .restart local v14       #networkLocProvAvailable:Z
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1279
    :cond_d
    const-string v2, "networkProvSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1281
    const/16 v22, 0x1

    .line 1282
    const-string v2, "networkProvSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v14, :cond_e

    const/4 v6, 0x1

    :goto_13
    goto/16 :goto_6

    :cond_e
    const/4 v6, 0x0

    goto :goto_13

    .line 1293
    .end local v14           #networkLocProvAvailable:Z
    .end local v16           #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 1298
    :cond_10
    const-string v2, "wifiSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1300
    const/16 v23, 0x1

    .line 1301
    const-string v2, "wifiSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_8

    .line 1317
    .restart local v11       #currentEnhLocationServicesSettingString:Ljava/lang/String;
    :cond_11
    const-string v2, "GpsLocationProvider"

    const-string v24, "Got null pinter for call to Settings.Secure.getString(resolver,LocationManager.ENH_LOCATION_SERVICES_ENABLED)"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 1358
    .end local v11           #currentEnhLocationServicesSettingString:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1359
    .local v12, e:Ljava/lang/Exception;
    const-string v2, "GpsLocationProvider"

    const-string v24, "Exception in handleNativePhoneContextUpdate:"

    move-object/from16 v0, v24

    invoke-static {v2, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 1323
    .end local v12           #e:Ljava/lang/Exception;
    :cond_12
    :try_start_2
    const-string v2, "enhLocationServicesSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1325
    const/16 v20, 0x1

    .line 1326
    const-string v2, "enhLocationServicesSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_a

    .line 1346
    .restart local v10       #batteryIntent:Landroid/content/Intent;
    .restart local v13       #intentFilter:Landroid/content/IntentFilter;
    .restart local v15       #plugged:I
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_b

    .line 1351
    .end local v10           #batteryIntent:Landroid/content/Intent;
    .end local v13           #intentFilter:Landroid/content/IntentFilter;
    .end local v15           #plugged:I
    :cond_14
    const-string v2, "batteryCharging"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1353
    const/16 v19, 0x1

    .line 1354
    const-string v2, "batteryCharging"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    goto/16 :goto_c

    .line 1371
    :cond_15
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    if-ne v4, v2, :cond_16

    .line 1373
    and-int/lit8 v3, v3, -0x2

    .line 1375
    :cond_16
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    goto/16 :goto_d

    .line 1381
    :cond_17
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mAgpsSetting:Z

    if-ne v5, v2, :cond_18

    .line 1383
    and-int/lit8 v3, v3, -0x11

    .line 1385
    :cond_18
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/location/GpsLocationProvider;->mAgpsSetting:Z

    goto/16 :goto_e

    .line 1391
    :cond_19
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkProvSetting:Z

    if-ne v6, v2, :cond_1a

    .line 1393
    and-int/lit8 v3, v3, -0x3

    .line 1395
    :cond_1a
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkProvSetting:Z

    goto/16 :goto_f

    .line 1401
    :cond_1b
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mWifiSetting:Z

    if-ne v7, v2, :cond_1c

    .line 1403
    and-int/lit8 v3, v3, -0x5

    .line 1405
    :cond_1c
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/location/GpsLocationProvider;->mWifiSetting:Z

    goto/16 :goto_10

    .line 1411
    :cond_1d
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mEnhServicesSetting:Z

    if-ne v9, v2, :cond_1e

    .line 1413
    and-int/lit8 v3, v3, -0x21

    .line 1415
    :cond_1e
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/location/GpsLocationProvider;->mEnhServicesSetting:Z

    goto/16 :goto_11

    .line 1421
    :cond_1f
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mBatteryCharging:Z

    if-ne v8, v2, :cond_20

    .line 1423
    and-int/lit8 v3, v3, -0x9

    .line 1425
    :cond_20
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/location/GpsLocationProvider;->mBatteryCharging:Z

    goto/16 :goto_12
.end method

.method private handleNetworkLocationUpdate(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 2399
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkLocationUpdate. lat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accurancy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2402
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_send_network_location(DDF)V

    .line 2405
    :cond_0
    return-void
.end method

.method private handleRemoveListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1502
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1503
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 1505
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unneeded remove listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    monitor-exit v2

    .line 1517
    :goto_0
    return-void

    .line 1508
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1509
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1511
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1516
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in removeListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleRequestSingleShotGps()V
    .locals 2

    .prologue
    .line 1138
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    .line 1141
    return-void
.end method

.method private handleRequestSingleShotHybrid()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1144
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotHybrid:Z

    .line 1145
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingHybrid(Z)V

    .line 1146
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 817
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 821
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 20
    .parameter "state"
    .parameter "info"

    .prologue
    .line 629
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_b

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 635
    if-eqz p2, :cond_8

    .line 636
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    const/4 v11, 0x1

    .line 638
    .local v11, dataEnabled:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v11, :cond_d

    const/4 v5, 0x1

    .line 639
    .local v5, networkAvailable:Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v7

    .line 640
    .local v7, defaultApn:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 641
    const-string v7, "dummy-apn"

    .line 644
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v10, 0x0

    .line 652
    .local v10, connType:I
    const/4 v1, 0x3

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v10, 0x1

    .line 655
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v8

    .line 657
    .local v8, agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    const-string v1, "ATT"

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 658
    if-eqz v5, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 659
    :cond_1
    new-instance v12, Ljava/io/File;

    const-string v1, "/data/data/com.android.angryGps/secgps.conf"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 660
    .local v12, file:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider;->AutoSuplServerAddrSet()V

    .line 662
    :cond_2
    const-string v1, "GpsLocationProvider"

    const-string v2, "Auto AGPS Configuration for AT&T"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v12           #file:Ljava/io/File;
    :cond_3
    if-eqz v8, :cond_8

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 668
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_10

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    .line 670
    .local v9, apnName:Ljava/lang/String;
    if-nez v9, :cond_4

    .line 673
    move-object v9, v7

    .line 675
    :cond_4
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 677
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v18

    .line 678
    .local v18, lp:Landroid/net/LinkProperties;
    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v17

    .line 679
    .local v17, las:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    const/4 v14, 0x0

    .line 680
    .local v14, isV4:Z
    const/4 v15, 0x0

    .line 681
    .local v15, isV6:Z
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/LinkAddress;

    .line 682
    .local v16, la:Landroid/net/LinkAddress;
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_f

    .line 683
    const/4 v1, 0x1

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v8, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$802(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 684
    const/4 v15, 0x1

    .line 689
    :goto_4
    if-eqz v14, :cond_5

    if-eqz v15, :cond_5

    .line 690
    const/4 v1, 0x2

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v8, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$802(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 695
    .end local v16           #la:Landroid/net/LinkAddress;
    :cond_6
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 697
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agpsConnInfo.mIPv4Addr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v2

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v19

    .line 700
    .local v19, route_result:Z
    if-nez v19, :cond_7

    .line 701
    const-string v1, "GpsLocationProvider"

    const-string v2, "call requestRouteToHostAddress failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    .end local v19           #route_result:Z
    :cond_7
    const-string v1, "GpsLocationProvider"

    const-string v2, "call native_agps_data_conn_open"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v1

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v9, v2}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V

    .line 705
    const/4 v1, 0x2

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v8, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 715
    .end local v5           #networkAvailable:Z
    .end local v7           #defaultApn:Ljava/lang/String;
    .end local v8           #agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .end local v9           #apnName:Ljava/lang/String;
    .end local v10           #connType:I
    .end local v11           #dataEnabled:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #isV4:Z
    .end local v15           #isV6:Z
    .end local v17           #las:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v18           #lp:Landroid/net/LinkProperties;
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_a

    .line 716
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    if-ne v1, v2, :cond_9

    .line 717
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 719
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    if-ne v1, v2, :cond_a

    .line 720
    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 723
    :cond_a
    return-void

    .line 629
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 636
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 638
    .restart local v11       #dataEnabled:Z
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 652
    .restart local v5       #networkAvailable:Z
    .restart local v7       #defaultApn:Ljava/lang/String;
    .restart local v10       #connType:I
    :cond_e
    const/4 v10, 0x3

    goto/16 :goto_3

    .line 686
    .restart local v8       #agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .restart local v9       #apnName:Ljava/lang/String;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v14       #isV4:Z
    .restart local v15       #isV6:Z
    .restart local v16       #la:Landroid/net/LinkAddress;
    .restart local v17       #las:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .restart local v18       #lp:Landroid/net/LinkProperties;
    :cond_f
    const/4 v1, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v8, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$802(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 687
    const/4 v14, 0x1

    goto/16 :goto_4

    .line 707
    .end local v9           #apnName:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #isV4:Z
    .end local v15           #isV6:Z
    .end local v16           #la:Landroid/net/LinkAddress;
    .end local v17           #las:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v18           #lp:Landroid/net/LinkProperties;
    :cond_10
    const-string v1, "GpsLocationProvider"

    const-string v2, "call native_agps_data_conn_failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v1, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v8, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    const/4 v1, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v8, v1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 710
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto :goto_5
.end method

.method private hasCapability(I)Z
    .locals 1
    .parameter "capability"

    .prologue
    .line 1885
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hibernate()V
    .locals 8

    .prologue
    .line 1876
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1877
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1878
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1879
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1880
    .local v0, now:J
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1882
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 603
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 604
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 605
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 607
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 513
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method public static makeAutoSuplUrl(II)Ljava/lang/String;
    .locals 7
    .parameter "mcc"
    .parameter "mnc"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 935
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 936
    .local v0, szUrl:Ljava/lang/StringBuffer;
    const-string v1, "h-slp.mnc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "%03d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "%03d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".pub.3gppnetwork.org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 938
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private native native_agps_data_conn_closed(I)V
.end method

.method private native native_agps_data_conn_failed(I)V
.end method

.method private native native_agps_data_conn_open(ILjava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_agps_xtra_set(I)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private static native native_has_ulp_capability()I
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_raw_command([BI)Z
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I[I)I
.end method

.method private native native_send_network_location(DDF)V
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_agps_server_extension(ILjava/lang/String;IIII)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_criteria(IIJFZII)Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native native_update_settings(IZZZZZZ)Z
.end method

.method private reportAGpsStatus(III[B)V
    .locals 7
    .parameter "type"
    .parameter "status"
    .parameter "ipv4_addr"
    .parameter "ipv6_addr"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2157
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v0

    .line 2158
    .local v0, agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    if-nez v0, :cond_1

    .line 2159
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportAGpsStatus agpsConnInfo is null for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_0
    :goto_0
    return-void

    .line 2164
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2166
    :pswitch_0
    const-string v3, "GpsLocationProvider"

    const-string v4, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v5}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2170
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1100(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 2172
    .local v1, result:I
    const/4 v3, -0x1

    if-eq p3, v3, :cond_3

    .line 2173
    invoke-static {p3}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0, v3}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$902(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 2179
    :goto_1
    if-nez v1, :cond_5

    .line 2180
    const-string v3, "GpsLocationProvider"

    const-string v4, "Phone.APN_ALREADY_ACTIVE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2182
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2185
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "agpsConnInfo.mIPv4Addr "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v4

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v2

    .line 2189
    .local v2, route_result:Z
    if-nez v2, :cond_2

    const-string v3, "GpsLocationProvider"

    const-string v4, "call requestRouteToHostAddress failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    .end local v2           #route_result:Z
    :cond_2
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v3

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v4

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V

    .line 2192
    const/4 v3, 0x2

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v3}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    goto/16 :goto_0

    .line 2176
    :cond_3
    const/4 v3, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0, v3}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$902(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    goto :goto_1

    .line 2194
    :cond_4
    const-string v3, "GpsLocationProvider"

    const-string v4, "agpsConnInfo.mAPN not set when receiving Phone.APN_ALREADY_ACTIVE"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v6}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2196
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto/16 :goto_0

    .line 2198
    :cond_5
    if-ne v1, v5, :cond_6

    .line 2199
    const-string v3, "GpsLocationProvider"

    const-string v4, "Phone.APN_REQUEST_STARTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2202
    :cond_6
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startUsingNetworkFeature failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v6}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2204
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto/16 :goto_0

    .line 2208
    .end local v1           #result:I
    :pswitch_1
    const-string v3, "GpsLocationProvider"

    const-string v4, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2210
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1100(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 2212
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed(I)V

    .line 2213
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v6}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    goto/16 :goto_0

    .line 2217
    :pswitch_2
    const-string v3, "GpsLocationProvider"

    const-string v4, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2220
    :pswitch_3
    const-string v3, "GpsLocationProvider"

    const-string v4, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2223
    :pswitch_4
    const-string v3, "GpsLocationProvider"

    const-string v4, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportLocation(IDDDFFFJI[BZFLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"
    .parameter "positionSource"
    .parameter "rawData"
    .parameter "isIndoor"
    .parameter "floorNumber"
    .parameter "mapUrl"
    .parameter "mapIndex"

    .prologue
    .line 1896
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v9

    .line 1897
    :try_start_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1898
    and-int/lit8 v8, p1, 0x1

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    .line 1899
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1900
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 1901
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v8, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1903
    :cond_0
    and-int/lit8 v8, p1, 0x2

    const/4 v10, 0x2

    if-ne v8, v10, :cond_1

    .line 1904
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p6

    invoke-virtual {v8, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 1908
    :goto_0
    and-int/lit8 v8, p1, 0x4

    const/4 v10, 0x4

    if-ne v8, v10, :cond_2

    .line 1909
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1913
    :goto_1
    and-int/lit8 v8, p1, 0x8

    const/16 v10, 0x8

    if-ne v8, v10, :cond_3

    .line 1914
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1918
    :goto_2
    and-int/lit8 v8, p1, 0x10

    const/16 v10, 0x10

    if-ne v8, v10, :cond_4

    .line 1919
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v8, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1923
    :goto_3
    const-string v8, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reportLocation.flag:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    and-int/lit8 v8, p1, 0x20

    const/16 v10, 0x20

    if-ne v8, v10, :cond_5

    const/4 v8, 0x1

    move/from16 v0, p13

    if-ne v0, v8, :cond_5

    .line 1928
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const-string v10, "hybrid"

    invoke-virtual {v8, v10}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 1929
    const-string v8, "GpsLocationProvider"

    const-string v10, "reportLocation. Location has source information. src -hybrid"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    :goto_4
    move-object/from16 v0, p14

    array-length v8, v0

    if-lez v8, :cond_6

    .line 1937
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "RawData"

    move-object/from16 v0, p14

    invoke-virtual {v8, v10, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1942
    :goto_5
    and-int/lit8 v8, p1, 0x40

    const/16 v10, 0x40

    if-ne v8, v10, :cond_7

    .line 1943
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "isIndoor"

    move/from16 v0, p15

    invoke-virtual {v8, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1948
    :goto_6
    and-int/lit16 v8, p1, 0x80

    const/16 v10, 0x80

    if-ne v8, v10, :cond_8

    .line 1949
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "floorNumber"

    move/from16 v0, p16

    invoke-virtual {v8, v10, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1954
    :goto_7
    and-int/lit16 v8, p1, 0x100

    const/16 v10, 0x100

    if-ne v8, v10, :cond_9

    .line 1955
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "mapUrl"

    move-object/from16 v0, p17

    invoke-virtual {v8, v10, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1960
    :goto_8
    and-int/lit16 v8, p1, 0x200

    const/16 v10, 0x200

    if-ne v8, v10, :cond_a

    .line 1961
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "mapIndex"

    move-object/from16 v0, p18

    invoke-virtual {v8, v10, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1966
    :goto_9
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v8, v10}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 1969
    new-instance v6, Landroid/location/Location;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-direct {v6, v8}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1971
    .local v6, locationCopy:Landroid/location/Location;
    :try_start_1
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    const/4 v10, 0x0

    invoke-interface {v8, v6, v10}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1975
    :goto_a
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1977
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1979
    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    if-nez v8, :cond_c

    and-int/lit8 v8, p1, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 1980
    iget-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1981
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TTFF: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1985
    :try_start_3
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1986
    .local v7, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v7, :cond_b

    .line 1987
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1989
    .local v5, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_4
    iget-object v8, v5, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-interface {v8, v10}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1986
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1906
    .end local v3           #i:I
    .end local v5           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v6           #locationCopy:Landroid/location/Location;
    .end local v7           #size:I
    :cond_1
    :try_start_5
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_0

    .line 1975
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 1911
    :cond_2
    :try_start_6
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_1

    .line 1916
    :cond_3
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_2

    .line 1921
    :cond_4
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_3

    .line 1932
    :cond_5
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const-string v10, "gps"

    invoke-virtual {v8, v10}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 1933
    const-string v8, "GpsLocationProvider"

    const-string v10, "reportLocation. Location has source information. src -gnss"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1939
    :cond_6
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "RawData"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1945
    :cond_7
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "isIndoor"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1951
    :cond_8
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "floorNumber"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1957
    :cond_9
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "mapUrl"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1963
    :cond_a
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "mapIndex"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1972
    .restart local v6       #locationCopy:Landroid/location/Location;
    :catch_0
    move-exception v2

    .line 1973
    .local v2, e:Landroid/os/RemoteException;
    const-string v8, "GpsLocationProvider"

    const-string v10, "RemoteException calling reportLocation"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_a

    .line 1990
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #i:I
    .restart local v5       #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v7       #size:I
    :catch_1
    move-exception v2

    .line 1991
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_7
    const-string v8, "GpsLocationProvider"

    const-string v10, "RemoteException in stopNavigating"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1994
    add-int/lit8 v7, v7, -0x1

    goto :goto_c

    .line 1997
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v5           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_b
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2000
    .end local v3           #i:I
    .end local v7           #size:I
    :cond_c
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 2001
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 2003
    :cond_d
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotHybrid:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 2004
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingHybrid(Z)V

    .line 2006
    :cond_e
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v8, :cond_10

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_10

    .line 2009
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v8

    if-nez v8, :cond_f

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v9, 0xea60

    if-ge v8, v9, :cond_f

    .line 2010
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2012
    :cond_f
    const/4 v8, 0x2

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v8, v9}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2014
    :cond_10
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v8, :cond_11

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mMultipleIntentCount:I

    if-lez v8, :cond_11

    .line 2016
    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    if-eqz v8, :cond_11

    .line 2018
    const-string v8, "GpsLocationProvider"

    const-string v9, "send an intent to notify that the GPS is receiving fixes"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2020
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "enabled"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2021
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2022
    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mMultipleIntentCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mMultipleIntentCount:I

    .line 2026
    .end local v4           #intent:Landroid/content/Intent;
    :cond_11
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v8

    if-nez v8, :cond_12

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v8, :cond_12

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v9, 0x3e8

    if-le v8, v9, :cond_12

    .line 2028
    const-string v8, "GpsLocationProvider"

    const-string v9, "got fix, hibernating"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    .line 2031
    :cond_12
    return-void

    .line 1997
    :catchall_1
    move-exception v8

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v8
.end method

.method private reportNmea(J)V
    .locals 9
    .parameter "timestamp"

    .prologue
    .line 2232
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2233
    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2234
    .local v5, size:I
    if-lez v5, :cond_0

    .line 2236
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v8, v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    move-result v2

    .line 2237
    .local v2, length:I
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v8, 0x0

    invoke-direct {v4, v6, v8, v2}, Ljava/lang/String;-><init>([BII)V

    .line 2239
    .local v4, nmea:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 2240
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2242
    .local v3, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-object v6, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6, p1, p2, v4}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2239
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2243
    :catch_0
    move-exception v0

    .line 2244
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "GpsLocationProvider"

    const-string v8, "RemoteException in reportNmea"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2247
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2251
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v4           #nmea:Ljava/lang/String;
    :cond_0
    monitor-exit v7

    .line 2252
    return-void

    .line 2251
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method private reportStatus(I)V
    .locals 11
    .parameter "status"

    .prologue
    .line 2037
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportStatus status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 2040
    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 2042
    .local v6, wasNavigating:Z
    packed-switch p1, :pswitch_data_0

    .line 2059
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eq v6, v7, :cond_4

    .line 2060
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2061
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 2062
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2064
    .local v3, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v7, :cond_0

    .line 2065
    iget-object v7, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v7}, Landroid/location/IGpsStatusListener;->onGpsStarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2061
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2044
    .end local v1           #i:I
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v4           #size:I
    :pswitch_0
    const/4 v7, 0x1

    :try_start_2
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 2045
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 2097
    .end local v6           #wasNavigating:Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 2048
    .restart local v6       #wasNavigating:Z
    :pswitch_1
    const/4 v7, 0x0

    :try_start_3
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_0

    .line 2051
    :pswitch_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 2054
    :pswitch_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 2055
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2067
    .restart local v1       #i:I
    .restart local v3       #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v4       #size:I
    :cond_0
    :try_start_4
    iget-object v7, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v7}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 2069
    :catch_0
    move-exception v0

    .line 2070
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v7, "GpsLocationProvider"

    const-string v9, "RemoteException in reportStatus"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2073
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 2079
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_1
    :try_start_6
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_3
    if-ltz v1, :cond_3

    .line 2080
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2081
    .local v5, uid:I
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v7, :cond_2

    .line 2082
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V

    .line 2079
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2084
    :cond_2
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 2087
    .end local v5           #uid:I
    :catch_1
    move-exception v0

    .line 2088
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_7
    const-string v7, "GpsLocationProvider"

    const-string v9, "RemoteException in reportStatus"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v7, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send an intent to notify that the GPS has been enabled or disabled mNavigating = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2094
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "enabled"

    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2095
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2097
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #size:I
    :cond_4
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2098
    return-void

    .line 2042
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportSvStatus()V
    .locals 17

    .prologue
    .line 2104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssUsed:[I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I[I)I

    move-result v2

    .line 2105
    .local v2, svCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2106
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2107
    .local v15, size:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v15, :cond_0

    .line 2108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2110
    .local v14, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-object v1, v14, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssUsed:[I

    invoke-interface/range {v1 .. v10}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2107
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2113
    :catch_0
    move-exception v11

    .line 2114
    .local v11, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in reportSvInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2117
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 2120
    .end local v11           #e:Landroid/os/RemoteException;
    .end local v14           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_0
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2139
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2141
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 2144
    const-string v1, "GpsLocationProvider"

    const-string v3, "send an intent to notify that the GPS is no longer receiving fixes"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2146
    .local v13, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v13, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2148
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2149
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GpsLocationProvider;->mMultipleIntentCount:I

    .line 2151
    .end local v13           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 2120
    .end local v12           #i:I
    .end local v15           #size:I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private requestNetworkLocation(III)V
    .locals 4
    .parameter "type"
    .parameter "interval"
    .parameter "source"

    .prologue
    .line 2463
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNetworkLocation. type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2465
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2466
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2467
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2468
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2469
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2470
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2471
    monitor-exit v2

    .line 2472
    return-void

    .line 2471
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestPhoneContext(II)V
    .locals 4
    .parameter "context_type"
    .parameter "request_type"

    .prologue
    .line 2447
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPhoneContext from native layer.context_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2450
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2451
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2452
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2453
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2454
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2455
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2456
    monitor-exit v2

    .line 2457
    return-void

    .line 2456
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestRefLocation(I)V
    .locals 10
    .parameter "flags"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x3

    .line 2478
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2480
    .local v8, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 2481
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 2482
    .local v6, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 2486
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2487
    .local v2, mcc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2488
    .local v3, mnc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 2489
    .local v7, networkType:I
    if-eq v7, v5, :cond_0

    const/16 v0, 0x8

    if-eq v7, v0, :cond_0

    const/16 v0, 0x9

    if-eq v7, v0, :cond_0

    const/16 v0, 0xf

    if-eq v7, v0, :cond_0

    const/16 v0, 0xa

    if-ne v7, v0, :cond_1

    .line 2494
    :cond_0
    const/4 v1, 0x2

    .line 2498
    .local v1, type:I
    :goto_0
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2507
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #networkType:I
    :goto_1
    return-void

    .line 2496
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    .restart local v6       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #networkType:I
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #type:I
    goto :goto_0

    .line 2501
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v7           #networkType:I
    :cond_2
    const-string v0, "GpsLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2505
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private requestSetID(I)V
    .locals 6
    .parameter "flags"

    .prologue
    .line 2370
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2372
    .local v2, phone:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2373
    .local v3, type:I
    const-string v0, ""

    .line 2375
    .local v0, data:Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2376
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2377
    .local v1, data_temp:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2395
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2396
    return-void

    .line 2381
    .restart local v1       #data_temp:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 2382
    const/4 v3, 0x1

    goto :goto_0

    .line 2385
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2386
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2387
    .restart local v1       #data_temp:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2391
    move-object v0, v1

    .line 2392
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 3

    .prologue
    .line 2438
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2439
    return-void
.end method

.method private secSelectPositionMode(Z)I
    .locals 12
    .parameter "singleShot"

    .prologue
    const-wide/32 v5, 0x36ee80

    const/4 v1, 0x3

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 1715
    const/4 v7, 0x0

    .line 1716
    .local v7, positionMode:I
    const-string v0, "GpsLocationProvider"

    const-string v2, "secSelectPositionMode(), SecProductFeature_COMMON.SEC_PRODUCT_FEATURE_COMMON_OPERATOR=ATT"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assisted_gps_enabled"

    invoke-static {v0, v2, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    .line 1718
    if-eqz p1, :cond_4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1719
    const-string v0, "KTT"

    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1720
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->isKtGps:Z

    if-eqz v0, :cond_3

    .line 1721
    const-string v0, "GpsLocationProvider"

    const-string v2, "KT GPS mode : SUPL2.0 MSA"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1729
    :cond_0
    :goto_0
    const/4 v7, 0x2

    .line 1821
    :cond_1
    :goto_1
    const-string v0, "LGT"

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1822
    invoke-direct {p0, v11}, Lcom/android/server/location/GpsLocationProvider;->native_agps_xtra_set(I)V

    .line 1840
    :cond_2
    :goto_2
    return v7

    .line 1725
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v1, "Non KT GPS mode : SUPL1.0 MSA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->googleSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->googleSuplPort:I

    move-object v0, p0

    move v1, v11

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1730
    :cond_4
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1731
    const-string v0, "SKT"

    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1732
    const/4 v7, 0x1

    .line 1733
    const-string v0, "LTE"

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1734
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->isSKAF:Z

    if-nez v0, :cond_5

    .line 1735
    const/4 v7, 0x0

    .line 1736
    const-string v0, "persist.sys.xtra_interval"

    const-string v1, "24"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1737
    .local v10, validity_period:I
    const-string v0, "persist.sys.xtra_time"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1738
    .local v8, timestamp:J
    invoke-direct {p0, v11}, Lcom/android/server/location/GpsLocationProvider;->native_agps_xtra_set(I)V

    .line 1739
    int-to-long v0, v10

    mul-long/2addr v0, v5

    add-long/2addr v0, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1740
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1742
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE: Xtra on not isSKAF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1746
    .end local v8           #timestamp:J
    .end local v10           #validity_period:I
    :cond_5
    const-string v0, "sys.sktgps"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    const/4 v7, 0x1

    .line 1748
    const-string v0, "GpsLocationProvider"

    const-string v2, "SKAF is True!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1751
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LTE] Xtra OFF SKT App set 2.0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1755
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->isSKAF:Z

    if-nez v0, :cond_8

    .line 1756
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->hostload()V

    .line 1757
    const-string v0, "wpde.nate.com"

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConfSuplServerHost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1759
    const-string v0, "GpsLocationProvider"

    const-string v2, "Test app use SKT SUPL Address!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_1

    .line 1764
    :cond_7
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non SKT App  set 1.0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->googleSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->googleSuplPort:I

    move-object v0, p0

    move v1, v11

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_1

    .line 1770
    :cond_8
    const-string v0, "sys.sktgps"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    const-string v0, "GpsLocationProvider"

    const-string v2, "SKAF is True!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1774
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SKT App set 2.0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1777
    :cond_9
    const-string v0, "KTT"

    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1778
    const/4 v7, 0x1

    .line 1779
    const-string v0, "LTE"

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1780
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->isKtGps:Z

    if-nez v0, :cond_a

    .line 1781
    const/4 v7, 0x0

    .line 1782
    const-string v0, "persist.sys.xtra_interval"

    const-string v1, "24"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1783
    .restart local v10       #validity_period:I
    const-string v0, "persist.sys.xtra_time"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1784
    .restart local v8       #timestamp:J
    invoke-direct {p0, v11}, Lcom/android/server/location/GpsLocationProvider;->native_agps_xtra_set(I)V

    .line 1785
    int-to-long v0, v10

    mul-long/2addr v0, v5

    add-long/2addr v0, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1786
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1788
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE: Xtra on not is KT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1793
    .end local v8           #timestamp:J
    .end local v10           #validity_period:I
    :cond_a
    const/4 v7, 0x1

    .line 1794
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_1

    .line 1798
    :cond_b
    const/4 v7, 0x1

    .line 1799
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->isKtGps:Z

    if-nez v0, :cond_c

    .line 1800
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WCDMA: GG Network inform :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->googleSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->googleSuplPort:I

    move-object v0, p0

    move v1, v11

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_1

    .line 1804
    :cond_c
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_1

    .line 1807
    :cond_d
    const-string v0, "LGT"

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1808
    const/4 v7, 0x0

    .line 1809
    const-string v0, "persist.sys.xtra_interval"

    const-string v1, "24"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1810
    .restart local v10       #validity_period:I
    const-string v0, "persist.sys.xtra_time"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1811
    .restart local v8       #timestamp:J
    int-to-long v0, v10

    mul-long/2addr v0, v5

    add-long/2addr v0, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1812
    const-string v0, "GpsLocationProvider"

    const-string v1, "Starting navi xtraDownloadRequest "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    goto/16 :goto_1

    .line 1817
    .end local v8           #timestamp:J
    .end local v10           #validity_period:I
    :cond_e
    const-string v0, "GpsLocationProvider"

    const-string v1, "secSelectPositionMode() default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1825
    :cond_f
    const-string v0, "SKT"

    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "KTT"

    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "LGT"

    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1828
    :cond_10
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->native_agps_xtra_set(I)V

    .line 1830
    :cond_11
    const-string v0, "SKT"

    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1831
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->isSKAF:Z

    if-eqz v0, :cond_2

    .line 1832
    const/4 v7, 0x1

    .line 1833
    const-string v0, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Assisted GPS disabled but isSKAF is true, Set AGPS SKT SUPL Address!!  =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1835
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS Assisted OFF but SKT app start!! set supl ver 2.0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const-string v0, "sys.sktgps"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 4
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 2511
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2512
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    .line 2513
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2514
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2515
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2516
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2517
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2518
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2519
    monitor-exit v2

    .line 2520
    return-void

    .line 2519
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setEngineCapabilities(I)V
    .locals 3
    .parameter "capabilities"

    .prologue
    .line 2258
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEngineCapabilities "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    .line 2261
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-nez v0, :cond_0

    .line 2262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    .line 2263
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->requestUtcTime()V

    .line 2265
    :cond_0
    return-void
.end method

.method private startNavigating(Z)V
    .locals 8
    .parameter "singleShot"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 1653
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-nez v0, :cond_3

    .line 1654
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In startNavigating. singleShot "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mHybridStarted: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mGpsStarted: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 1658
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    .line 1659
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mMultipleIntentCount:I

    .line 1661
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1662
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    if-eqz p1, :cond_4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1665
    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1671
    :cond_0
    :goto_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "secSelectPositionMode(), GlobalConfig.GLOBALCONFIG_GPS_CDMA=false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const-string v0, "SKT"

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KTT"

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LGT"

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1679
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->secSelectPositionMode(Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1682
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1684
    .local v3, interval:I
    :goto_1
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1685
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1687
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 1688
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    .end local v3           #interval:I
    :cond_3
    :goto_2
    return-void

    .line 1666
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 1682
    :cond_5
    const/16 v3, 0x3e8

    goto :goto_1

    .line 1693
    .restart local v3       #interval:I
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    if-nez v0, :cond_7

    .line 1694
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1695
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 1696
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1702
    :cond_7
    invoke-direct {p0, v6, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 1704
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1707
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_3

    .line 1708
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v4, 0xea60

    add-long/2addr v1, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_2
.end method

.method private stopNavigating()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 1844
    const-string v0, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In stopNavigating.beg  mHybridStarted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mGpsStarted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v0, :cond_3

    .line 1848
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 1849
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    .line 1851
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    if-nez v0, :cond_0

    .line 1852
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 1854
    :cond_0
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1855
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1856
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1857
    const-string v0, "SKT"

    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1858
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->isSKAF:Z

    if-eqz v0, :cond_1

    .line 1859
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->isSKAF:Z

    .line 1860
    const-string v0, "sys.sktgps"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->sktSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1870
    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1872
    :cond_3
    return-void

    .line 1865
    :cond_4
    const-string v0, "KTT"

    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1866
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->isKtGps:Z

    .line 1867
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->googleSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->googleSuplPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method private updateStatus(II)V
    .locals 4
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    monitor-enter v1

    .line 1051
    :try_start_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 1052
    :cond_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 1053
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    .line 1054
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v2, "satellites"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 1057
    :cond_1
    monitor-exit v1

    .line 1058
    return-void

    .line 1057
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private xtraDownloadRequest()V
    .locals 3

    .prologue
    .line 2271
    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2273
    return-void
.end method


# virtual methods
.method public AutoSuplServerAddrSet()V
    .locals 6

    .prologue
    .line 916
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 917
    .local v2, tel:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, SimOperator:Ljava/lang/String;
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 920
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mcc:I

    .line 921
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mnc:I

    .line 922
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MCC  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mcc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MNC  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mnc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mcc:I

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mnc:I

    invoke-static {v3, v4}, Lcom/android/server/location/GpsLocationProvider;->makeAutoSuplUrl(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->suplUrl:Ljava/lang/String;

    .line 924
    const/16 v3, 0x1c6b

    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->suplPort:I

    .line 925
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SUPL_URL  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->suplUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SUPL_PORT  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->suplPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->suplUrl:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->suplPort:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 927
    const-string v3, "GpsLocationProvider"

    const-string v4, "AutoSuplServerAddrSet complete!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    .end local v0           #SimOperator:Ljava/lang/String;
    .end local v2           #tel:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 929
    :catch_0
    move-exception v1

    .line 930
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "GpsLocationProvider"

    const-string v4, "There is no Sim card detected. Exception in Auto Config for AGPS!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 1464
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1465
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 1466
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1467
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1468
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1469
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1470
    monitor-exit v2

    .line 1471
    return-void

    .line 1470
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disable()V
    .locals 4

    .prologue
    .line 998
    const-string v1, "GpsLocationProvider"

    const-string v2, "disable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1001
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1002
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1003
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1004
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1005
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1006
    monitor-exit v2

    .line 1007
    return-void

    .line 1006
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 943
    const-string v1, "GpsLocationProvider"

    const-string v2, "enable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 945
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 946
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 947
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 948
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 949
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 950
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 951
    monitor-exit v2

    .line 952
    return-void

    .line 951
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableLocationTracking(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 1065
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1066
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1067
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1068
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1069
    .local v0, m:Landroid/os/Message;
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1070
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1071
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1072
    monitor-exit v2

    .line 1073
    return-void

    .line 1069
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1072
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 905
    const/4 v0, 0x1

    return v0
.end method

.method public getCapability()I
    .locals 1

    .prologue
    .line 1046
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    return v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getHybridProvider()Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;
    .locals 2

    .prologue
    .line 1604
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_has_ulp_capability()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1607
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    .line 1609
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 887
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .parameter "extras"

    .prologue
    .line 1040
    if-eqz p1, :cond_0

    .line 1041
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1043
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 1060
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x0

    return v0
.end method

.method public hostload()V
    .locals 6

    .prologue
    .line 3154
    const-string v3, "GpsLocationProvider"

    const-string v4, "Load the configuration file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, Lcom/android/server/location/GpsLocationProvider;->mSecProperties:Ljava/util/Properties;

    .line 3157
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.android.angryGps/secgps.conf"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3158
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3159
    .local v2, stream:Ljava/io/FileInputStream;
    sget-object v3, Lcom/android/server/location/GpsLocationProvider;->mSecProperties:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 3160
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 3161
    sget-object v3, Lcom/android/server/location/GpsLocationProvider;->mSecProperties:Ljava/util/Properties;

    const-string v4, "SUPL_HOST"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConfSuplServerHost:Ljava/lang/String;

    .line 3163
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load conf supl HOST :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mConfSuplServerHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3168
    .end local v1           #file:Ljava/io/File;
    .end local v2           #stream:Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 3164
    :catch_0
    move-exception v0

    .line 3165
    .local v0, e:Ljava/io/IOException;
    const-string v3, "GpsLocationProvider"

    const-string v4, "Could not open GPS configuration file "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    const-string v3, "supl.google.com"

    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConfSuplServerHost:Ljava/lang/String;

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 2
    .parameter "criteria"

    .prologue
    const/4 v0, 0x1

    .line 895
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 1492
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1493
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 1494
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1495
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1496
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1497
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1498
    monitor-exit v2

    .line 1499
    return-void

    .line 1498
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .parameter "notificationId"
    .parameter "niType"
    .parameter "notifyFlags"
    .parameter "timeout"
    .parameter "defaultResponse"
    .parameter "requestorId"
    .parameter "text"
    .parameter "requestorIdEncoding"
    .parameter "textEncoding"
    .parameter "extras"

    .prologue
    .line 2311
    const-string v7, "GpsLocationProvider"

    const-string v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", niType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notifyFlags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", defaultResponse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestorIdEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", textEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2326
    .local v6, notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2327
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2328
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2329
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2330
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2331
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2332
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2333
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2334
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2335
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2336
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2340
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2342
    .local v1, bundle:Landroid/os/Bundle;
    if-nez p10, :cond_0

    const-string p10, ""

    .line 2343
    :cond_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2346
    .local v4, extraProp:Ljava/util/Properties;
    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    :goto_3
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2355
    .local v3, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2328
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4           #extraProp:Ljava/util/Properties;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2329
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 2330
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 2348
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #extraProp:Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 2350
    .local v2, e:Ljava/io/IOException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2358
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_4
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2360
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2361
    return-void
.end method

.method public requestSingleShotFix()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1124
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v2, :cond_0

    .line 1126
    const/4 v1, 0x0

    .line 1134
    :goto_0
    return v1

    .line 1128
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 1129
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1130
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1131
    .local v0, m:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1132
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1133
    monitor-exit v2

    goto :goto_0

    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 838
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 21
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1521
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1522
    .local v15, identity:J
    const/16 v18, 0x0

    .line 1524
    .local v18, result:Z
    const-string v3, "delete_aiding_data"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1525
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v18

    .line 1599
    :cond_0
    :goto_0
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v3, v18

    .line 1600
    :goto_1
    return v3

    .line 1526
    :cond_1
    const-string v3, "force_time_injection"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1527
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v7}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1528
    const/16 v18, 0x1

    goto :goto_0

    .line 1529
    :cond_2
    const-string v3, "force_xtra_injection"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1530
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_0

    .line 1531
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1532
    const/16 v18, 0x1

    goto :goto_0

    .line 1534
    :cond_3
    const-string v3, "request_running"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1536
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    monitor-exit v4

    goto :goto_1

    .line 1537
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1536
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 1538
    :cond_5
    const-string v3, "com.skt.intent.action.AGPS"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1539
    const-string v3, "opType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1540
    .local v17, opType:Ljava/lang/String;
    const-string v3, "cmdType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1541
    .local v14, cmdType:Ljava/lang/String;
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SKAF : extra command received:com.skt.intent.action.AGPS opType="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", cmdType="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const-string v3, "on"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1544
    const-string v3, "msAssisted"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "msBased"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1545
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/location/GpsLocationProvider;->isSKAF:Z

    .line 1548
    :cond_7
    const/16 v18, 0x1

    .line 1549
    goto/16 :goto_0

    .end local v14           #cmdType:Ljava/lang/String;
    .end local v17           #opType:Ljava/lang/String;
    :cond_8
    const-string v3, "setOllehServer"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1550
    const-string v3, "host"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1551
    .local v5, hostURL:Ljava/lang/String;
    const-string v3, "port"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1552
    .local v6, hostPort:I
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/location/GpsLocationProvider;->isKtGps:Z

    .line 1553
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerHost:Ljava/lang/String;

    .line 1554
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/location/GpsLocationProvider;->mKTSuplServerPort:I

    .line 1555
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "host :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " port ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1557
    const/16 v18, 0x1

    .line 1558
    goto/16 :goto_0

    .end local v5           #hostURL:Ljava/lang/String;
    .end local v6           #hostPort:I
    :cond_9
    const-string v3, "setNativeServer"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1559
    const-string v3, "GpsLocationProvider"

    const-string v4, "setNativeServer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/location/GpsLocationProvider;->isKtGps:Z

    .line 1561
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->googleSuplAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/location/GpsLocationProvider;->googleSuplPort:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1562
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1563
    :cond_a
    const-string v3, "activateGPS"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1564
    const-string v3, "GpsLocationProvider"

    const-string v4, "activateGPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    const/4 v7, 0x1

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1566
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1567
    :cond_b
    const-string v3, "deactivateGPS"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1568
    const-string v3, "GpsLocationProvider"

    const-string v4, "deactivateGPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1570
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1571
    :cond_c
    const-string v3, "activateAGPS"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1572
    const-string v3, "GpsLocationProvider"

    const-string v4, "activateAGPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_gps_enabled"

    const/4 v7, 0x1

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1574
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1575
    :cond_d
    const-string v3, "deactivateAGPS"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1576
    const-string v3, "GpsLocationProvider"

    const-string v4, "deactivateAGPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_gps_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1578
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1579
    :cond_e
    const-string v3, "setMode"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1580
    const-string v3, "mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/location/GpsLocationProvider;->ktPositionMode:I

    .line 1581
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMode ktPositionMode :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/location/GpsLocationProvider;->ktPositionMode:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1584
    :cond_f
    const-string v3, "getMode"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1585
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMode ktPositionMode :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/location/GpsLocationProvider;->ktPositionMode:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const-string v3, "mode"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GpsLocationProvider;->ktPositionMode:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1587
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1589
    :cond_10
    const-string v3, "set_agps_server"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1590
    const-string v3, "server_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1591
    .local v20, suplServer:Ljava/lang/String;
    const-string v3, "server_port"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 1592
    .local v19, suplPort:I
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1593
    const/16 v18, 0x1

    .line 1594
    goto/16 :goto_0

    .line 1595
    .end local v19           #suplPort:I
    .end local v20           #suplServer:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->native_inject_raw_command([BI)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1596
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 6
    .parameter "minTime"
    .parameter "ws"

    .prologue
    const/4 v2, 0x0

    .line 1150
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMinTime "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1153
    long-to-int v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1155
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1158
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 877
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x1

    return v0
.end method

.method public updateCriteria(IJFZLandroid/location/Criteria;)Z
    .locals 11
    .parameter "action"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "criteria"

    .prologue
    .line 1166
    const/4 v10, 0x0

    .line 1167
    .local v10, return_value:Z
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCriteria with action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "minTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minDistance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " singleShot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " criteria: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/location/GpsLocationProvider;->native_update_criteria(IIJFZII)Z

    move-result v10

    .line 1174
    return v10
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 813
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 814
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 1
    .parameter "state"
    .parameter "info"

    .prologue
    .line 625
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 626
    return-void
.end method
