.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$BlacklistObserver;,
        Lcom/android/server/LocationManagerService$LocationWorkerHandler;,
        Lcom/android/server/LocationManagerService$ProximityListener;,
        Lcom/android/server/LocationManagerService$ProximityAlerter;,
        Lcom/android/server/LocationManagerService$ProximityAlert;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$LpCapabilityComparator;,
        Lcom/android/server/LocationManagerService$LpAccuracyComparator;,
        Lcom/android/server/LocationManagerService$LpPowerComparator;,
        Lcom/android/server/LocationManagerService$SettingsObserver;,
        Lcom/android/server/LocationManagerService$Receiver;
    }
.end annotation


# static fields
.field private static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final ACCESS_MOCK_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MOCK_LOCATION"

.field private static final BLACKLIST_CONFIG_NAME:Ljava/lang/String; = "locationPackagePrefixBlacklist"

.field private static final INSTALL_LOCATION_PROVIDER:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_PROVIDER"

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_PROVIDER_SCHEDULING_JITTER:I = 0x64

.field private static final MESSAGE_BROADCAST_DELAY:I = 0x1388

.field private static final MESSAGE_LOCATION_CHANGED:I = 0x1

.field private static final MESSAGE_PACKAGE_UPDATED:I = 0x2

.field private static final MESSAGE_SEND_BROADCAST_LOCATION_HISTORY:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LocationManagerService"

.field private static final WHITELIST_CONFIG_NAME:Ljava/lang/String; = "locationPackagePrefixWhitelist"

.field private static sProvidersLoaded:Z


# instance fields
.field private mBlacklist:[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDisabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeoFencer:Lcom/android/server/location/GeoFencerBase;

.field private final mGeoFencerPackageName:Ljava/lang/String;

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private final mGeocodeProviderPackageName:Ljava/lang/String;

.field mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

.field private mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field mHybridLocationProvider:Lcom/android/server/location/LocationProviderInterface;

.field private mLastKnownLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLastWriteTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mMockProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/MockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

.field private mNetworkLocationProviderPackageName:Ljava/lang/String;

.field private final mNetworkLocationProviderPackageName1:Ljava/lang/String;

.field private final mNetworkLocationProviderPackageName2:Ljava/lang/String;

.field private mNetworkState:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPendingBroadcasts:I

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitiesEntered:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/LocationManagerService$ProximityAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityListener:Landroid/location/ILocationListener;

.field private mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mSendLocationBroadcast:Z

.field private mSettings:Landroid/content/ContentQueryMap;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWhitelist:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 637
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastWriteTime:Ljava/util/HashMap;

    .line 135
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    .line 138
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    .line 141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    .line 176
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 182
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 190
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 196
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 201
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 208
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 211
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 212
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 213
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    .line 217
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    .line 220
    iput v4, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    .line 223
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mWhitelist:[Ljava/lang/String;

    .line 224
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:[Ljava/lang/String;

    .line 2238
    new-instance v1, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2315
    new-instance v1, Lcom/android/server/LocationManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 638
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 639
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 641
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x104004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName1:Ljava/lang/String;

    .line 644
    const v1, 0x104004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName2:Ljava/lang/String;

    .line 652
    const v1, 0x104004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    .line 654
    const v1, 0x104004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    .line 656
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1, p1, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 661
    return-void
.end method

.method private _getAllProvidersLocked()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 809
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 810
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 811
    .local v2, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 813
    .end local v2           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_0
    return-object v1
.end method

.method private _getLastKnownLocationLocked(Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .locals 3
    .parameter "provider"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 2049
    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2050
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/LocationManagerService;->checkPackageName(ILjava/lang/String;)V

    .line 2052
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2053
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_1

    .line 2065
    :cond_0
    :goto_0
    return-object v1

    .line 2057
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2061
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->inBlacklist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2065
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    goto :goto_0
.end method

.method private _getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 1976
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 1977
    .local v1, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v1, :cond_0

    .line 1994
    :goto_0
    return-object v0

    .line 1981
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1983
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1984
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "network"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresNetwork()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1985
    const-string v2, "satellite"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresSatellite()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1986
    const-string v2, "cell"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresCell()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1987
    const-string v2, "cost"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->hasMonetaryCost()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1988
    const-string v2, "altitude"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsAltitude()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1989
    const-string v2, "speed"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsSpeed()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1990
    const-string v2, "bearing"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsBearing()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1991
    const-string v2, "power"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1992
    const-string v2, "accuracy"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private _getProvidersLocked(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 5
    .parameter "criteria"
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 834
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 835
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 836
    .local v3, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 838
    if-eqz p2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 834
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 841
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v3, p1}, Lcom/android/server/location/LocationProviderInterface;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 844
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 847
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    return-object v2
.end method

.method private _isProviderEnabledLocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 2023
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2025
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2026
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    .line 2027
    const/4 v1, 0x0

    .line 2029
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private _loadProvidersLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 533
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    new-instance v0, Lcom/android/server/location/GpsLocationProvider;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, p0}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    .line 536
    .local v0, gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 537
    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 538
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 539
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    .line 541
    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider;->getHybridProvider()Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;

    move-result-object v1

    .line 542
    .local v1, hybridProvider:Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;
    if-eqz v1, :cond_0

    .line 543
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 544
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mHybridLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    .line 549
    .end local v0           #gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    .end local v1           #hybridProvider:Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;
    :cond_0
    new-instance v2, Lcom/android/server/location/PassiveProvider;

    invoke-direct {v2, p0}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/location/ILocationManager;)V

    .line 550
    .local v2, passiveProvider:Lcom/android/server/location/PassiveProvider;
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 551
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/android/server/location/PassiveProvider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 555
    .local v3, pm:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName1:Ljava/lang/String;

    if-eqz v4, :cond_3

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName1:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 557
    new-instance v4, Lcom/android/server/location/LocationProviderProxy;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "network"

    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName1:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    .line 560
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 562
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName1:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    .line 577
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 579
    new-instance v4, Lcom/android/server/location/GeocoderProxy;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 582
    :cond_2
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 584
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/location/GeoFencerProxy;->getGeoFencerProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/location/GeoFencerProxy;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    .line 589
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 590
    return-void

    .line 564
    :cond_3
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName2:Ljava/lang/String;

    if-eqz v4, :cond_1

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName2:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 566
    new-instance v4, Lcom/android/server/location/LocationProviderProxy;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "network"

    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName2:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    .line 569
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 571
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName2:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    goto :goto_0

    .line 586
    :cond_4
    new-instance v4, Lcom/android/server/LocationManagerService$ProximityAlerter;

    invoke-direct {v4, p0}, Lcom/android/server/LocationManagerService$ProximityAlerter;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v4, p0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/LocationManagerService;)Landroid/location/ILocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;)Landroid/location/ILocationListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$Receiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)Lcom/android/server/LocationManagerService$Receiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/LocationManagerService;Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;Landroid/location/Criteria;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 107
    invoke-direct/range {p0 .. p7}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;Landroid/location/Criteria;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeoFencerBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->inBlacklist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/LocationManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/LocationManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/LocationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/LocationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->reloadBlacklist()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->incrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method private addProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    return-void
.end method

.method private addProximityAlertLocked(DDFJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 11
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1922
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object/from16 v0, p9

    invoke-direct {p0, v1, v0}, Lcom/android/server/LocationManagerService;->checkPackageName(ILjava/lang/String;)V

    .line 1925
    const-string v1, "gps"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "network"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1927
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1930
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/location/GeoFencerBase;->add(DDFJLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1931
    return-void
.end method

.method private static arrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "array"

    .prologue
    .line 2604
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2605
    .local v5, s:Ljava/lang/StringBuilder;
    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2606
    const/4 v2, 0x1

    .line 2607
    .local v2, first:Z
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 2608
    .local v0, a:Ljava/lang/String;
    if-nez v2, :cond_0

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2609
    :cond_0
    const/4 v2, 0x0

    .line 2610
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2607
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2612
    .end local v0           #a:Ljava/lang/String;
    :cond_1
    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2613
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/location/LocationProviderInterface;"
        }
    .end annotation

    .prologue
    .local p1, providerNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 927
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 928
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 929
    .local v5, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 930
    .local v3, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 932
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 934
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 935
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    .line 972
    :goto_1
    return-object v9

    .line 939
    :cond_1
    new-instance v9, Lcom/android/server/LocationManagerService$LpPowerComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpPowerComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 940
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v4

    .line 941
    .local v4, power:I
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 942
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto :goto_1

    .line 947
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v7, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    const/4 v2, 0x0

    .line 949
    .local v2, idx:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 950
    .local v6, size:I
    :goto_2
    if-ge v2, v6, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v9

    if-ne v9, v4, :cond_3

    .line 951
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 956
    :cond_3
    new-instance v9, Lcom/android/server/LocationManagerService$LpAccuracyComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpAccuracyComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 957
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v0

    .line 958
    .local v0, acc:I
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v9

    if-ge v0, v9, :cond_4

    .line 959
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto :goto_1

    .line 962
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 963
    .local v8, tmp2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    const/4 v2, 0x0

    .line 964
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 965
    :goto_3
    if-ge v2, v6, :cond_5

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v9

    if-ne v9, v0, :cond_5

    .line 966
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 971
    :cond_5
    new-instance v9, Lcom/android/server/LocationManagerService$LpCapabilityComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 972
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto/16 :goto_1
.end method

.method private checkMockPermissionsSafe()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2397
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2399
    .local v0, allowMocks:Z
    :goto_0
    if-nez v0, :cond_1

    .line 2400
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION secure setting"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #allowMocks:Z
    :cond_0
    move v0, v1

    .line 2397
    goto :goto_0

    .line 2403
    .restart local v0       #allowMocks:Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 2405
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2407
    :cond_2
    return-void
.end method

.method private checkPackageName(ILjava/lang/String;)V
    .locals 8
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 2666
    if-nez p2, :cond_0

    .line 2667
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "packageName cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2669
    :cond_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 2670
    .local v3, packages:[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 2671
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2673
    :cond_1
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 2674
    .local v4, pkg:Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 2673
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2676
    .end local v4           #pkg:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "invalid package name"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "provider"
    .parameter "lastPermission"

    .prologue
    .line 746
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hybrid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires ACCESS_FINE_LOCATION permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_1
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    .line 765
    .end local p2
    :cond_2
    :goto_0
    return-object p2

    .line 758
    .restart local p2
    :cond_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 760
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    goto :goto_0

    .line 763
    :cond_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 765
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    goto :goto_0

    .line 768
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires ACCESS_FINE_LOCATION or ACCESS_COARSE_LOCATION permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decrementPendingBroadcasts()V
    .locals 4

    .prologue
    .line 2346
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2347
    :try_start_0
    iget v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2350
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2351
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2352
    const-string v1, "Released wakelock"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2362
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2363
    return-void

    .line 2354
    :cond_1
    :try_start_3
    const-string v1, "Can\'t release wakelock again!"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2356
    :catch_0
    move-exception v0

    .line 2359
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "LocationManagerService"

    const-string v3, "exception in releaseWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2362
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private getMinTimeLocked(Ljava/lang/String;)J
    .locals 13
    .parameter "provider"

    .prologue
    .line 1157
    const-wide v5, 0x7fffffffffffffffL

    .line 1158
    .local v5, minTime:J
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1159
    .local v7, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v9}, Landroid/os/WorkSource;->clear()V

    .line 1160
    if-eqz v7, :cond_3

    .line 1161
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 1162
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1163
    .local v8, ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-wide v0, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    .line 1164
    .local v0, curTime:J
    cmp-long v9, v0, v5

    if-gez v9, :cond_0

    .line 1165
    move-wide v5, v0

    .line 1161
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1168
    .end local v0           #curTime:J
    .end local v8           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1
    const-wide/16 v9, 0x3

    mul-long/2addr v9, v5

    const-wide/16 v11, 0x2

    div-long v3, v9, v11

    .line 1169
    .local v3, inclTime:J
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1170
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1171
    .restart local v8       #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-wide v9, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    cmp-long v9, v9, v3

    if-gtz v9, :cond_2

    .line 1172
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget v10, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    invoke-virtual {v9, v10}, Landroid/os/WorkSource;->add(I)Z

    .line 1169
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1176
    .end local v2           #i:I
    .end local v3           #inclTime:J
    .end local v8           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_3
    return-wide v5
.end method

.method private getReceiver(Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;
    .locals 2
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1267
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1268
    .local v0, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    .line 1269
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    .end local v0           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1270
    .restart local v0       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    :cond_0
    return-object v0
.end method

.method private getReceiver(Landroid/location/ILocationListener;Ljava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;
    .locals 5
    .parameter "listener"
    .parameter "packageName"

    .prologue
    .line 1248
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1249
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 1250
    .local v2, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v2, :cond_0

    .line 1251
    new-instance v2, Lcom/android/server/LocationManagerService$Receiver;

    .end local v2           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Ljava/lang/String;)V

    .line 1252
    .restart local v2       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1256
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v3, v2

    .line 1263
    :goto_0
    return-object v3

    .line 1258
    :catch_0
    move-exception v1

    .line 1259
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "LocationManagerService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1260
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "key"

    .prologue
    .line 2617
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2618
    .local v1, flatString:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2619
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    .line 2630
    :goto_0
    return-object v7

    .line 2621
    :cond_0
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2622
    .local v6, splitStrings:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2623
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 2624
    .local v4, pkg:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2625
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2623
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2628
    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2630
    .end local v4           #pkg:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Z)V
    .locals 22
    .parameter "location"
    .parameter "passive"

    .prologue
    .line 2098
    if-eqz p2, :cond_1

    const-string v13, "passive"

    .line 2099
    .local v13, provider:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 2100
    .local v17, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_2

    .line 2181
    :cond_0
    return-void

    .line 2098
    .end local v13           #provider:Ljava/lang/String;
    .end local v17           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 2107
    .restart local v13       #provider:Ljava/lang/String;
    .restart local v17       #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/LocationProviderInterface;

    .line 2108
    .local v10, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v10, :cond_0

    .line 2113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    .line 2114
    .local v7, lastLocation:Landroid/location/Location;
    if-nez v7, :cond_4

    .line 2115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    move-object/from16 v19, v0

    new-instance v20, Landroid/location/Location;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    :goto_1
    invoke-interface {v10}, Lcom/android/server/location/LocationProviderInterface;->getStatusUpdateTime()J

    move-result-wide v8

    .line 2124
    .local v8, newStatusUpdateTime:J
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2125
    .local v4, extras:Landroid/os/Bundle;
    invoke-interface {v10, v4}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v18

    .line 2127
    .local v18, status:I
    const/4 v3, 0x0

    .line 2130
    .local v3, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2131
    .local v2, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v2, :cond_d

    .line 2132
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2133
    .local v14, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v15, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2134
    .local v15, receiver:Lcom/android/server/LocationManagerService$Receiver;
    const/16 v16, 0x0

    .line 2136
    .local v16, receiverDead:Z
    iget-object v0, v15, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->inBlacklist(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2131
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2117
    .end local v2           #N:I
    .end local v3           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v5           #i:I
    .end local v8           #newStatusUpdateTime:J
    .end local v14           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v16           #receiverDead:Z
    .end local v18           #status:I
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_1

    .line 2140
    .restart local v2       #N:I
    .restart local v3       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v4       #extras:Landroid/os/Bundle;
    .restart local v5       #i:I
    .restart local v8       #newStatusUpdateTime:J
    .restart local v14       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v15       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .restart local v16       #receiverDead:Z
    .restart local v18       #status:I
    :cond_5
    iget-object v6, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2141
    .local v6, lastLoc:Landroid/location/Location;
    if-eqz v6, :cond_6

    move-object/from16 v0, p1

    invoke-static {v0, v6, v14}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2142
    :cond_6
    if-nez v6, :cond_c

    .line 2143
    new-instance v6, Landroid/location/Location;

    .end local v6           #lastLoc:Landroid/location/Location;
    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2144
    .restart local v6       #lastLoc:Landroid/location/Location;
    iput-object v6, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2148
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 2149
    const-string v19, "LocationManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException calling onLocationChanged on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const/16 v16, 0x1

    .line 2154
    :cond_7
    iget-wide v11, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 2155
    .local v11, prevStatusUpdateTime:J
    cmp-long v19, v8, v11

    if-lez v19, :cond_9

    const-wide/16 v19, 0x0

    cmp-long v19, v11, v19

    if-nez v19, :cond_8

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 2158
    :cond_8
    iput-wide v8, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 2159
    move/from16 v0, v18

    invoke-virtual {v15, v13, v0, v4}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 2160
    const/16 v16, 0x1

    .line 2161
    const-string v19, "LocationManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException calling onStatusChanged on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :cond_9
    if-nez v16, :cond_a

    iget-boolean v0, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mSingleShot:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2167
    :cond_a
    if-nez v3, :cond_b

    .line 2168
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2170
    .restart local v3       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_b
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 2171
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2146
    .end local v11           #prevStatusUpdateTime:J
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_4

    .line 2176
    .end local v6           #lastLoc:Landroid/location/Location;
    .end local v14           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v16           #receiverDead:Z
    :cond_d
    if-eqz v3, :cond_0

    .line 2177
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v5, v19, -0x1

    :goto_5
    if-ltz v5, :cond_0

    .line 2178
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2177
    add-int/lit8 v5, v5, -0x1

    goto :goto_5
.end method

.method private inBlacklist(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    .line 2637
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2638
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 2639
    .local v1, black:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2640
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->inWhitelist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2638
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2645
    :cond_1
    const/4 v4, 0x1

    monitor-exit v5

    .line 2650
    .end local v1           #black:Ljava/lang/String;
    :goto_1
    return v4

    .line 2649
    :cond_2
    monitor-exit v5

    .line 2650
    const/4 v4, 0x0

    goto :goto_1

    .line 2649
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private inWhitelist(Ljava/lang/String;)Z
    .locals 6
    .parameter "pkg"

    .prologue
    .line 2657
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2658
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mWhitelist:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 2659
    .local v3, white:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 2662
    .end local v3           #white:Ljava/lang/String;
    :goto_1
    return v4

    .line 2658
    .restart local v3       #white:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2661
    .end local v3           #white:Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 2662
    const/4 v4, 0x0

    goto :goto_1

    .line 2661
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private incrementPendingBroadcasts()V
    .locals 4

    .prologue
    .line 2331
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2332
    :try_start_0
    iget v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2334
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2335
    const-string v1, "Acquired wakelock"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2342
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2343
    return-void

    .line 2336
    :catch_0
    move-exception v0

    .line 2339
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v3, "exception in acquireWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2342
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initialize()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 671
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 672
    .local v7, powerManager:Landroid/os/PowerManager;
    const-string v1, "LocationManagerService"

    invoke-virtual {v7, v12, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 673
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 676
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProviders()V

    .line 677
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadBlacklist()V

    .line 680
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 681
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 685
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 687
    new-instance v8, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 688
    .local v8, sdFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 691
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 692
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v14, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v13

    const-string v3, "value"

    aput-object v3, v2, v12

    const-string v3, "(name=?) or (name=?) or (name=?) "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v11, "location_providers_allowed"

    aput-object v11, v4, v13

    const-string v11, "wifi_on"

    aput-object v11, v4, v12

    const-string v11, "assisted_gps_enabled"

    aput-object v11, v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 700
    .local v9, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v2, "name"

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v9, v2, v12, v3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 701
    new-instance v10, Lcom/android/server/LocationManagerService$SettingsObserver;

    invoke-direct {v10, p0, v5}, Lcom/android/server/LocationManagerService$SettingsObserver;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    .line 702
    .local v10, settingsObserver:Lcom/android/server/LocationManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v10}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 703
    return-void
.end method

.method private isAllowedBySettingsLocked(Ljava/lang/String;)Z
    .locals 7
    .parameter "provider"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 715
    const/4 v2, 0x0

    .line 716
    .local v2, providerSetting:Z
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 742
    :goto_0
    return v5

    .line 719
    :cond_0
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    .line 720
    goto :goto_0

    .line 723
    :cond_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 724
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 725
    .local v1, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v1, :cond_3

    .line 726
    const-string v6, "hybrid"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 729
    :try_start_0
    const-string v6, "gps"

    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "network"

    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "wifi_on"

    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v6, v5, :cond_4

    :cond_2
    move v2, v5

    :cond_3
    :goto_1
    move v5, v2

    .line 742
    goto :goto_0

    :cond_4
    move v2, v4

    .line 729
    goto :goto_1

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LocationManagerService"

    const-string v5, "isAllowedBySettingsLocked got exception:"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 739
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    invoke-static {v3, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method

.method private isAllowedProviderSafe(Ljava/lang/String;)Z
    .locals 3
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 773
    const-string v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "passive"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hybrid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 788
    :cond_1
    :goto_0
    return v0

    .line 780
    :cond_2
    const-string v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 788
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadBlacklist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2584
    new-instance v0, Lcom/android/server/LocationManagerService$BlacklistObserver;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LocationManagerService$BlacklistObserver;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 2585
    .local v0, observer:Lcom/android/server/LocationManagerService$BlacklistObserver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "locationPackagePrefixBlacklist"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2587
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "locationPackagePrefixWhitelist"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2589
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->reloadBlacklist()V

    .line 2590
    return-void
.end method

.method private loadProviders()V
    .locals 2

    .prologue
    .line 512
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_0
    sget-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    if-eqz v0, :cond_0

    .line 514
    monitor-exit v1

    .line 521
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProvidersLocked()V

    .line 519
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    .line 520
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadProvidersLocked()V
    .locals 3

    .prologue
    .line 525
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->_loadProvidersLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "Exception loading providers:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .parameter "log"

    .prologue
    .line 2680
    const-string v0, "LocationManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2681
    const-string v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    :cond_0
    return-void
.end method

.method private nextAccuracy(I)I
    .locals 1
    .parameter "accuracy"

    .prologue
    .line 875
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 876
    const/4 v0, 0x2

    .line 878
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextPower(I)I
    .locals 1
    .parameter "power"

    .prologue
    const/4 v0, 0x0

    .line 856
    packed-switch p1, :pswitch_data_0

    .line 865
    :goto_0
    :pswitch_0
    return v0

    .line 858
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 860
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 856
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z
    .locals 4
    .parameter "provider"
    .parameter "uid"
    .parameter "excludedReceiver"

    .prologue
    .line 1276
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1277
    .local v2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v2, :cond_1

    .line 1278
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1279
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1280
    .local v1, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget v3, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    if-ne v3, p2, :cond_0

    iget-object v3, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-eq v3, p3, :cond_0

    .line 1281
    const/4 v3, 0x1

    .line 1285
    .end local v0           #i:I
    .end local v1           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :goto_1
    return v3

    .line 1278
    .restart local v0       #i:I
    .restart local v1       #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1285
    .end local v0           #i:I
    .end local v1           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    invoke-virtual {v3, p2}, Lcom/android/server/location/GeoFencerBase;->hasCaller(I)Z

    move-result v3

    goto :goto_1
.end method

.method private reloadBlacklist()V
    .locals 6

    .prologue
    .line 2593
    const-string v2, "locationPackagePrefixBlacklist"

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2594
    .local v0, blacklist:[Ljava/lang/String;
    const-string v2, "locationPackagePrefixWhitelist"

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2595
    .local v1, whitelist:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2596
    :try_start_0
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mWhitelist:[Ljava/lang/String;

    .line 2597
    const-string v2, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "whitelist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mWhitelist:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->arrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:[Ljava/lang/String;

    .line 2599
    const-string v2, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blacklist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mBlacklist:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/LocationManagerService;->arrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    monitor-exit v3

    .line 2601
    return-void

    .line 2600
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 508
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-void
.end method

.method private removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GeoFencerBase;->remove(Landroid/app/PendingIntent;)V

    .line 1953
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 24
    .parameter "receiver"

    .prologue
    .line 1508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 1509
    .local v18, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v19

    .line 1510
    .local v19, packages:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1511
    .local v9, buff:Ljava/lang/StringBuilder;
    const-string v3, "UID("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1513
    const-string v3, ") "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    if-eqz v19, :cond_0

    .line 1516
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, v19

    array-length v3, v0

    if-ge v13, v3, :cond_0

    .line 1517
    aget-object v3, v19, v13

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    const-string v3, ", "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1521
    .end local v13           #i:I
    :cond_0
    const-string v3, "eng"

    const-string v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1522
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location requesting stopped by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Receiver info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1534
    .local v10, callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1535
    .local v11, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1537
    .local v15, identity:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1538
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1539
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    :try_start_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v3, :cond_1

    .line 1541
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V

    .line 1542
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1544
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1548
    :cond_2
    :try_start_2
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 1549
    .local v21, providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    move-object/from16 v17, v0

    .line 1550
    .local v17, oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v17, :cond_6

    .line 1552
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1553
    .local v22, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v11, v1}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 1555
    .local v2, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_3

    .line 1556
    const/4 v3, 0x2

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinDistance:F

    move-object/from16 v0, v22

    iget-boolean v7, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mSingleShot:Z

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mCriteria:Landroid/location/Criteria;

    invoke-interface/range {v2 .. v8}, Lcom/android/server/location/LocationProviderInterface;->updateCriteria(IJFZLandroid/location/Criteria;)Z

    .line 1559
    invoke-interface {v2, v11}, Lcom/android/server/location/LocationProviderInterface;->removeListener(I)V

    .line 1562
    .end local v2           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1595
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v21           #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v3

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1524
    .end local v10           #callingPid:I
    .end local v11           #callingUid:I
    .end local v15           #identity:J
    :cond_4
    const-string v3, "LocationManagerService"

    const-string v4, "Location requesting stopped by an application"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1544
    .restart local v10       #callingPid:I
    .restart local v11       #callingUid:I
    .restart local v15       #identity:J
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3

    .line 1565
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v17       #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v21       #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1571
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1573
    .local v20, provider:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1577
    const/4 v12, 0x0

    .line 1578
    .local v12, hasOtherListener:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 1579
    .local v23, recordsForProvider:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v23, :cond_8

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 1580
    const/4 v12, 0x1

    .line 1583
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 1584
    .restart local v2       #p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_7

    .line 1585
    if-eqz v12, :cond_9

    .line 1586
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    goto :goto_3

    .line 1588
    :cond_9
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), disabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1595
    .end local v2           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v12           #hasOtherListener:Z
    .end local v20           #provider:Ljava/lang/String;
    .end local v23           #recordsForProvider:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_a
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1597
    return-void
.end method

.method private requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;Landroid/location/Criteria;)V
    .locals 27
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "receiver"
    .parameter "criteria"

    .prologue
    .line 1383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    .line 1384
    .local v25, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v26

    .line 1385
    .local v26, packages:[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1386
    .local v13, buff:Ljava/lang/StringBuilder;
    const-string v4, "UID("

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1388
    const-string v4, ") "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    if-eqz v26, :cond_0

    .line 1391
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, v26

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_0

    .line 1392
    aget-object v4, v26, v16

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    const-string v4, ", "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1396
    .end local v16           #i:I
    :cond_0
    const-string v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1397
    .local v14, build_type:Ljava/lang/String;
    const-string v4, "eng"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1398
    const-string v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " location requested by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/location/LocationProviderInterface;

    .line 1406
    .local v24, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v24, :cond_2

    .line 1407
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "provider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1400
    .end local v24           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_1
    const-string v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " location requested by an application"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1433
    .restart local v24       #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/android/server/LocationManagerService$Receiver;->mRequiredPermissions:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    iput-object v4, v0, Lcom/android/server/LocationManagerService$Receiver;->mRequiredPermissions:Ljava/lang/String;

    .line 1437
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 1438
    .local v15, callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1439
    .local v11, callingUid:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v4}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v22, 0x1

    .line 1440
    .local v22, newUid:Z
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1442
    .local v17, identity:J
    :try_start_0
    new-instance v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p7

    invoke-direct/range {v3 .. v12}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;ILandroid/location/Criteria;)V

    .line 1444
    .local v3, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1445
    .local v23, oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v23, :cond_3

    .line 1446
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked()V

    .line 1449
    :cond_3
    if-eqz v22, :cond_4

    .line 1450
    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Lcom/android/server/location/LocationProviderInterface;->addListener(I)V

    .line 1453
    :cond_4
    const/4 v5, 0x1

    move-object/from16 v4, v24

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p7

    invoke-interface/range {v4 .. v10}, Lcom/android/server/location/LocationProviderInterface;->updateCriteria(IJFZLandroid/location/Criteria;)Z

    .line 1454
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v19

    .line 1455
    .local v19, isProviderEnabled:Z
    if-eqz v19, :cond_9

    .line 1456
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v20

    .line 1457
    .local v20, minTimeForProvider:J
    const-string v5, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p5, :cond_8

    const-string v4, " (singleshot)"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2, v4}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    .line 1462
    if-eqz p5, :cond_5

    invoke-interface/range {v24 .. v24}, Lcom/android/server/location/LocationProviderInterface;->requestSingleShotFix()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1463
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    .end local v20           #minTimeForProvider:J
    :cond_6
    :goto_4
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1475
    return-void

    .line 1439
    .end local v3           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v17           #identity:J
    .end local v19           #isProviderEnabled:Z
    .end local v22           #newUid:Z
    .end local v23           #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 1457
    .restart local v3       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v17       #identity:J
    .restart local v19       #isProviderEnabled:Z
    .restart local v20       #minTimeForProvider:J
    .restart local v22       #newUid:Z
    .restart local v23       #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_8
    :try_start_1
    const-string v4, ""

    goto :goto_3

    .line 1467
    .end local v20           #minTimeForProvider:J
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1473
    .end local v3           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v19           #isProviderEnabled:Z
    .end local v23           #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v4

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private static shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .locals 8
    .parameter "loc"
    .parameter "lastLoc"
    .parameter "record"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2071
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hybrid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 2094
    :cond_1
    :goto_0
    return v2

    .line 2082
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 2087
    iget v4, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinDistance:F

    float-to-double v0, v4

    .line 2088
    .local v0, minDistance:D
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_3

    .line 2089
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v0

    if-lez v4, :cond_1

    :cond_3
    move v2, v3

    .line 2094
    goto :goto_0
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .locals 10
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 1113
    const/4 v3, 0x0

    .line 1115
    .local v3, listeners:I
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 1116
    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v4, :cond_1

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    const/4 v1, 0x0

    .line 1122
    .local v1, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1123
    .local v6, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_4

    .line 1124
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1125
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1126
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1128
    .local v5, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1129
    if-nez v1, :cond_2

    .line 1130
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    .restart local v1       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_2
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 1125
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1138
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_4
    if-eqz v1, :cond_5

    .line 1139
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .restart local v2       #i:I
    :goto_2
    if-ltz v2, :cond_5

    .line 1140
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1139
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1144
    .end local v2           #i:I
    :cond_5
    if-eqz p2, :cond_6

    .line 1145
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    .line 1146
    if-lez v3, :cond_0

    .line 1147
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-interface {v4, v7, v8, v9}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    .line 1148
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    goto :goto_0

    .line 1151
    :cond_6
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 1152
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    goto :goto_0
.end method

.method private updateProvidersLocked()V
    .locals 9

    .prologue
    .line 1093
    const/4 v0, 0x0

    .line 1094
    .local v0, changesMade:Z
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1095
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 1096
    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v2

    .line 1097
    .local v2, isEnabled:Z
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1098
    .local v3, name:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v5

    .line 1099
    .local v5, shouldBeEnabled:Z
    if-eqz v2, :cond_1

    if-nez v5, :cond_1

    .line 1100
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1101
    const/4 v0, 0x1

    .line 1094
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1102
    :cond_1
    if-nez v2, :cond_0

    if-eqz v5, :cond_0

    .line 1103
    const/4 v6, 0x1

    invoke-direct {p0, v3, v6}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1104
    const/4 v0, 0x1

    goto :goto_1

    .line 1107
    .end local v2           #isEnabled:Z
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v5           #shouldBeEnabled:Z
    :cond_2
    if-eqz v0, :cond_3

    .line 1108
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1110
    :cond_3
    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 1600
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    if-nez v2, :cond_0

    .line 1614
    :goto_0
    return v1

    .line 1603
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1605
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1609
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v2, p1}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    const/4 v1, 0x1

    goto :goto_0

    .line 1610
    :catch_0
    move-exception v0

    .line 1611
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationManagerService"

    const-string v3, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1898
    invoke-virtual {p0, p8}, Lcom/android/server/LocationManagerService;->validatePendingIntent(Landroid/app/PendingIntent;)V

    .line 1900
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1901
    :try_start_1
    invoke-direct/range {p0 .. p9}, Lcom/android/server/LocationManagerService;->addProximityAlertLocked(DDFJLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1903
    monitor-exit v4

    .line 1911
    :goto_0
    return-void

    .line 1903
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1904
    :catch_0
    move-exception v2

    .line 1905
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1906
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1907
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1908
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1909
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "addProximityAlert got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 20
    .parameter "name"
    .parameter "requiresNetwork"
    .parameter "requiresSatellite"
    .parameter "requiresCell"
    .parameter "hasMonetaryCost"
    .parameter "supportsAltitude"
    .parameter "supportsSpeed"
    .parameter "supportsBearing"
    .parameter "powerRequirement"
    .parameter "accuracy"

    .prologue
    .line 2412
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2414
    const-string v3, "passive"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2415
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot mock the passive location provider"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2418
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2419
    .local v14, identity:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2420
    :try_start_0
    new-instance v2, Lcom/android/server/location/MockProvider;

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v2 .. v13}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V

    .line 2425
    .local v2, provider:Lcom/android/server/location/MockProvider;
    const-string v3, "gps"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "network"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "hybrid"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2428
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/location/LocationProviderInterface;

    .line 2429
    .local v17, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v17, :cond_2

    .line 2430
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 2431
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2434
    .end local v17           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2435
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" already exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2449
    .end local v2           #provider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2438
    .restart local v2       #provider:Lcom/android/server/location/MockProvider;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 2439
    .local v18, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    move-object/from16 v16, v0

    .line 2442
    .local v16, oldFencer:Lcom/android/server/location/GeoFencerBase;
    new-instance v3, Lcom/android/server/LocationManagerService$ProximityAlerter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/LocationManagerService$ProximityAlerter;-><init>(Lcom/android/server/LocationManagerService;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    .line 2443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/server/location/GeoFencerBase;->transferService(Lcom/android/server/location/GeoFencerBase;)V

    .line 2445
    .end local v16           #oldFencer:Lcom/android/server/location/GeoFencerBase;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2449
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2450
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2451
    return-void
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 7
    .parameter "provider"

    .prologue
    .line 2536
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2537
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2538
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2539
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2540
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2547
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2542
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2543
    .local v0, identity:J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2544
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2545
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2546
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2547
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2548
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 2503
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2504
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2505
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2506
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2507
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2510
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2509
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearLocation()V

    .line 2510
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2511
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 2562
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2563
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2564
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2565
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2566
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2569
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2568
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearStatus()V

    .line 2569
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2570
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2686
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.DUMP"

    invoke-virtual {v12, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_0

    .line 2688
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Permission Denial: can\'t dump LocationManagerService from from pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2765
    :goto_0
    return-void

    .line 2694
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2695
    :try_start_0
    const-string v12, "Current Location Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2696
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  sProvidersLoaded="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v14, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2697
    const-string v12, "  Listeners:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2698
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 2699
    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 2700
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2699
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2702
    :cond_1
    const-string v12, "  Location Listeners:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2703
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v2           #i:I
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 2704
    .local v2, i:Lcom/android/server/LocationManagerService$Receiver;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2705
    iget-object v12, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2706
    .local v9, j:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "      "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2707
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/LocationManagerService$UpdateRecord;

    const-string v14, "        "

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2

    .line 2764
    .end local v1           #N:I
    .end local v2           #i:Lcom/android/server/LocationManagerService$Receiver;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #j:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 2710
    .restart local v1       #N:I
    :cond_3
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Package blacklist:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mBlacklist:[Ljava/lang/String;

    invoke-static {v14}, Lcom/android/server/LocationManagerService;->arrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2711
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Package whitelist:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mWhitelist:[Ljava/lang/String;

    invoke-static {v14}, Lcom/android/server/LocationManagerService;->arrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2712
    const-string v12, "  Records by Provider:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2714
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2715
    .local v5, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2716
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2717
    .local v8, j:Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "      "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2718
    const-string v12, "        "

    move-object/from16 v0, p2

    invoke-virtual {v8, v0, v12}, Lcom/android/server/LocationManagerService$UpdateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 2721
    .end local v5           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #j:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_5
    const-string v12, "  Last Known Locations:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2723
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2724
    .local v3, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2725
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/location/Location;

    new-instance v14, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v15, "      "

    invoke-virtual {v12, v14, v15}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_4

    .line 2727
    .end local v3           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    const-string v14, ""

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v14}, Lcom/android/server/location/GeoFencerBase;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2728
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 2729
    const-string v12, "  Proximities Entered:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2730
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 2731
    .local v2, i:Lcom/android/server/LocationManagerService$ProximityAlert;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2732
    const-string v12, "      "

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12}, Lcom/android/server/LocationManagerService$ProximityAlert;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_5

    .line 2735
    .end local v2           #i:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mProximityReceiver="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2736
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  mProximityListener="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2737
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 2738
    const-string v12, "  Enabled Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2739
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2740
    .local v2, i:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2744
    .end local v2           #i:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    if-lez v12, :cond_9

    .line 2745
    const-string v12, "  Disabled Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2746
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2747
    .restart local v2       #i:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2751
    .end local v2           #i:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_a

    .line 2752
    const-string v12, "  Mock Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2753
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2754
    .local v4, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/location/MockProvider;

    const-string v14, "      "

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v14}, Lcom/android/server/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_8

    .line 2757
    .end local v4           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/LocationProviderInterface;

    .line 2758
    .local v10, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v10}, Lcom/android/server/location/LocationProviderInterface;->getInternalState()Ljava/lang/String;

    move-result-object v11

    .line 2759
    .local v11, state:Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 2760
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " Internal State:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2761
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_9

    .line 2764
    .end local v10           #provider:Lcom/android/server/location/LocationProviderInterface;
    .end local v11           #state:Ljava/lang/String;
    :cond_c
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method findBestPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "serviceIntentName"
    .parameter "sigPackageName"

    .prologue
    .line 600
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v5, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x80

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 603
    .local v4, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 630
    :cond_0
    return-object v0

    .line 605
    :cond_1
    const/high16 v1, -0x8000

    .line 606
    .local v1, bestVersion:I
    const/4 v0, 0x0

    .line 607
    .local v0, bestPackage:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 608
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 610
    .local v6, packageName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v6, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 612
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " implements "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but its signatures don\'t match those in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ignoring"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :cond_3
    const/4 v7, 0x0

    .line 619
    .local v7, version:I
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    .line 620
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "version"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 624
    :cond_4
    if-le v7, v1, :cond_2

    .line 625
    move v1, v7

    .line 626
    move-object v0, v6

    goto :goto_0
.end method

.method public geocoderIsPresent()Z
    .locals 1

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 794
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->_getAllProvidersLocked()Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 800
    :goto_0
    return-object v2

    .line 795
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 796
    :catch_0
    move-exception v1

    .line 797
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 798
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 799
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getAllProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 6
    .parameter "criteria"
    .parameter "enabledOnly"

    .prologue
    const/4 v5, 0x0

    .line 999
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1002
    .local v2, goodProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "hybrid"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1003
    const-string v4, "hybrid"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1006
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1007
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1081
    :goto_0
    return-object v4

    .line 1011
    :cond_1
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1, p1}, Landroid/location/Criteria;-><init>(Landroid/location/Criteria;)V

    .line 1014
    .end local p1
    .local v1, criteria:Landroid/location/Criteria;
    invoke-virtual {v1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v3

    .line 1015
    .local v3, power:I
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 1016
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->nextPower(I)I

    move-result v3

    .line 1017
    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 1018
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1021
    const-string v4, "hybrid"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1022
    const-string v4, "hybrid"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1025
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1026
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 1030
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_4
    invoke-virtual {v1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    .line 1031
    .local v0, accuracy:I
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    .line 1032
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->nextAccuracy(I)I

    move-result v0

    .line 1033
    invoke-virtual {v1, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 1034
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1037
    const-string v4, "hybrid"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1038
    const-string v4, "hybrid"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1041
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1042
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 1046
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_7
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 1047
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1050
    const-string v4, "hybrid"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1051
    const-string v4, "hybrid"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1053
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1054
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0

    .line 1058
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_9
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 1059
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1062
    const-string v4, "hybrid"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1063
    const-string v4, "hybrid"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1065
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1066
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0

    .line 1070
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_b
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 1071
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1074
    const-string v4, "hybrid"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1075
    const-string v4, "hybrid"

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1077
    :cond_c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1078
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0

    .line 1081
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_d
    const/4 v4, 0x0

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2373
    .local p7, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 2374
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2377
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 13
    .parameter "locationName"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2386
    .local p12, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 2387
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2391
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastKnownLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .locals 4
    .parameter "provider"
    .parameter "packageName"

    .prologue
    .line 2037
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2038
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->_getLastKnownLocationLocked(Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    monitor-exit v3

    .line 2044
    :goto_0
    return-object v2

    .line 2039
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2040
    :catch_0
    move-exception v1

    .line 2041
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 2042
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2043
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getLastKnownLocation got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2044
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .parameter "provider"

    .prologue
    .line 1962
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1963
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    monitor-exit v4

    .line 1971
    :goto_0
    return-object v3

    .line 1964
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1965
    :catch_0
    move-exception v2

    .line 1966
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1967
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1968
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1969
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1970
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "_getProviderInfo got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1971
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 4
    .parameter "criteria"
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 818
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 819
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->_getProvidersLocked(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 825
    :goto_0
    return-object v2

    .line 820
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 821
    :catch_0
    move-exception v1

    .line 822
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 823
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 824
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "provider"

    .prologue
    .line 1999
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2000
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_isProviderEnabledLocked(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3

    .line 2006
    :goto_0
    return v2

    .line 2001
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2002
    :catch_0
    move-exception v1

    .line 2003
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 2004
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2005
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "isProviderEnabled got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2006
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 481
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 482
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 483
    .local v3, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v3, :cond_0

    .line 484
    monitor-enter v3

    .line 486
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 487
    .local v1, identity:J
    #calls: Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V
    invoke-static {v3}, Lcom/android/server/LocationManagerService$Receiver;->access$700(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 488
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 489
    monitor-exit v3

    .line 491
    .end local v1           #identity:J
    :cond_0
    return-void

    .line 489
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z
    .locals 4
    .parameter "provider"
    .parameter "criteria"

    .prologue
    .line 1085
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1086
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    .line 1087
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1089
    :cond_0
    invoke-interface {v0, p2}, Lcom/android/server/location/LocationProviderInterface;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v1

    return v1
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1618
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1620
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v1, p1}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1625
    return-void

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v3, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1624
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1935
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1936
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V

    .line 1937
    monitor-exit v4

    .line 1945
    :goto_0
    return-void

    .line 1937
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1938
    :catch_0
    move-exception v2

    .line 1939
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1940
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1941
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1942
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1943
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeProximityAlert got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .locals 9
    .parameter "provider"

    .prologue
    .line 2454
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2455
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2456
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2457
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2458
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Provider \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" unknown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2485
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2460
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2461
    .local v0, identity:J
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2462
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    const-string v5, "gps"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v5, :cond_3

    .line 2466
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2475
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2476
    .local v4, pm:Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    if-eqz v5, :cond_2

    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2478
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    .line 2479
    .local v3, oldFencer:Lcom/android/server/location/GeoFencerBase;
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/server/location/GeoFencerProxy;->getGeoFencerProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/location/GeoFencerProxy;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    .line 2480
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;

    invoke-virtual {v5, v3}, Lcom/android/server/location/GeoFencerBase;->transferService(Lcom/android/server/location/GeoFencerBase;)V

    .line 2482
    .end local v3           #oldFencer:Lcom/android/server/location/GeoFencerBase;
    :cond_2
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2484
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2485
    monitor-exit v6

    .line 2486
    return-void

    .line 2467
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_3
    const-string v5, "network"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    if-eqz v5, :cond_4

    .line 2469
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    goto :goto_0

    .line 2470
    :cond_4
    const-string v5, "hybrid"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mHybridLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v5, :cond_1

    .line 2472
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mHybridLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Ljava/lang/String;)V
    .locals 5
    .parameter "listener"
    .parameter "packageName"

    .prologue
    .line 1479
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1480
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/location/ILocationListener;Ljava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1481
    monitor-exit v4

    .line 1489
    :goto_0
    return-void

    .line 1481
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1482
    :catch_0
    move-exception v2

    .line 1483
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1484
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1485
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1486
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1487
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeUpdates got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdatesPI(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1493
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1494
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1495
    monitor-exit v4

    .line 1503
    :goto_0
    return-void

    .line 1495
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1496
    :catch_0
    move-exception v2

    .line 1497
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1498
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1499
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1500
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1501
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeUpdates got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportLocation(Landroid/location/Location;Z)V
    .locals 4
    .parameter "location"
    .parameter "passive"

    .prologue
    const/4 v1, 0x1

    .line 2011
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2013
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires INSTALL_LOCATION_PROVIDER permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2016
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2017
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2018
    .local v0, m:Landroid/os/Message;
    if-eqz p2, :cond_1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2019
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2020
    return-void

    .line 2018
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/location/ILocationListener;Ljava/lang/String;)V
    .locals 15
    .parameter "provider"
    .parameter "criteria"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "listener"
    .parameter "packageName"

    .prologue
    .line 1295
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p8

    invoke-direct {p0, v2, v0}, Lcom/android/server/LocationManagerService;->checkPackageName(ILjava/lang/String;)V

    .line 1296
    if-eqz p2, :cond_0

    .line 1300
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string v3, "hybrid"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/location/LocationProviderInterface;

    .line 1301
    .local v12, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v12, :cond_1

    .line 1302
    const-string p1, "hybrid"

    .line 1314
    .end local v12           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_0
    :try_start_0
    iget-object v14, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1315
    :try_start_1
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/location/ILocationListener;Ljava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v8

    move-object v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;Landroid/location/Criteria;)V

    .line 1317
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1325
    :goto_0
    return-void

    .line 1307
    .restart local v12       #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/LocationManagerService;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    .line 1308
    if-nez p1, :cond_0

    .line 1309
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no providers found for criteria"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1317
    .end local v12           #p:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1318
    :catch_0
    move-exception v13

    .line 1319
    .local v13, se:Ljava/lang/SecurityException;
    throw v13

    .line 1320
    .end local v13           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v11

    .line 1321
    .local v11, iae:Ljava/lang/IllegalArgumentException;
    throw v11

    .line 1322
    .end local v11           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v10

    .line 1323
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "requestUpdates got exception:"

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdatesPI(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 15
    .parameter "provider"
    .parameter "criteria"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "intent"
    .parameter "packageName"

    .prologue
    .line 1342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p8

    invoke-direct {p0, v2, v0}, Lcom/android/server/LocationManagerService;->checkPackageName(ILjava/lang/String;)V

    .line 1343
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->validatePendingIntent(Landroid/app/PendingIntent;)V

    .line 1348
    if-eqz p2, :cond_0

    .line 1352
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string v3, "hybrid"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/location/LocationProviderInterface;

    .line 1353
    .local v12, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v12, :cond_1

    .line 1354
    const-string p1, "hybrid"

    .line 1366
    .end local v12           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_0
    :try_start_0
    iget-object v14, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1367
    :try_start_1
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v8

    move-object v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;Landroid/location/Criteria;)V

    .line 1369
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1377
    :goto_0
    return-void

    .line 1359
    .restart local v12       #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/LocationManagerService;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    .line 1360
    if-nez p1, :cond_0

    .line 1361
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no providers found for criteria"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1369
    .end local v12           #p:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1370
    :catch_0
    move-exception v13

    .line 1371
    .local v13, se:Ljava/lang/SecurityException;
    throw v13

    .line 1372
    .end local v13           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v11

    .line 1373
    .local v11, iae:Ljava/lang/IllegalArgumentException;
    throw v11

    .line 1374
    .end local v11           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v10

    .line 1375
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "requestUpdates got exception:"

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 707
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 708
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 709
    new-instance v0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 710
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initialize()V

    .line 711
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 712
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "provider"
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1628
    if-nez p1, :cond_0

    .line 1630
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1634
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1636
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1638
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1641
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1642
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1643
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_2

    .line 1644
    const/4 v1, 0x0

    monitor-exit v2

    .line 1647
    :goto_0
    return v1

    :cond_2
    invoke-interface {v0, p2, p3}, Lcom/android/server/location/LocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1648
    .end local v0           #p:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendNiResponse(II)Z
    .locals 3
    .parameter "notifId"
    .parameter "userResponse"

    .prologue
    .line 1653
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1654
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "calling sendNiResponse from outside of the system is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1658
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v1, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1663
    :goto_0
    return v1

    .line 1660
    :catch_0
    move-exception v0

    .line 1662
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 7
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2514
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2515
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2516
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2517
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2518
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2532
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2520
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2521
    .local v0, identity:J
    if-eqz p2, :cond_1

    .line 2522
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->enable()V

    .line 2523
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2524
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2530
    :goto_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2531
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2532
    monitor-exit v4

    .line 2533
    return-void

    .line 2526
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->disable()V

    .line 2527
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2528
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 7
    .parameter "provider"
    .parameter "loc"

    .prologue
    .line 2489
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2490
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2491
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2492
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2493
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2499
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2496
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2497
    .local v0, identity:J
    invoke-virtual {v2, p2}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    .line 2498
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2499
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2500
    return-void
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 5
    .parameter "provider"
    .parameter "status"
    .parameter "extras"
    .parameter "updateTime"

    .prologue
    .line 2551
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2552
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2553
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2554
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2555
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2558
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2557
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V

    .line 2558
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2559
    return-void
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 665
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "LocationManagerService"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 666
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 667
    return-void
.end method

.method validatePendingIntent(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1328
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    :goto_0
    return-void

    .line 1331
    :cond_0
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given Intent does not require a specific package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
