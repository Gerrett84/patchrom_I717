.class Lcom/android/server/MSimTelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;
.source "MSimTelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MSimTelephonyRegistry$1;,
        Lcom/android/server/MSimTelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field private static final TAG:Ljava/lang/String; = "MSimTelephonyRegistry"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallState:[I

.field private mCellInfo:[Landroid/telephony/CellInfo;

.field private mCellLocation:[Landroid/os/Bundle;

.field private mConnectedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkProperties:Landroid/net/LinkProperties;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mDefaultSubscription:I

.field private mMessageWaiting:[Z

.field private mOtaspMode:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MSimTelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 137
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;-><init>()V

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 97
    iput v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataActivity:I

    .line 99
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    .line 101
    iput-boolean v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionPossible:Z

    .line 103
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 105
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 117
    iput v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mDefaultSubscription:I

    .line 119
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mOtaspMode:I

    .line 138
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 140
    .local v1, location:Landroid/telephony/CellLocation;
    iput-object p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    .line 141
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    .line 145
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v3

    iput v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDefaultSubscription:I

    .line 147
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 148
    .local v2, numPhones:I
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    .line 149
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 150
    new-array v3, v2, [Landroid/telephony/ServiceState;

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 151
    new-array v3, v2, [Landroid/telephony/SignalStrength;

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 152
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    .line 153
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    .line 154
    new-array v3, v2, [Landroid/os/Bundle;

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    .line 155
    new-array v3, v2, [Landroid/telephony/CellInfo;

    iput-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:[Landroid/telephony/CellInfo;

    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 157
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    aput v5, v3, v0

    .line 158
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v0

    .line 159
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, v0

    .line 160
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v4, v3, v0

    .line 161
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v5, v3, v0

    .line 162
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v5, v3, v0

    .line 163
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aput-object v4, v3, v0

    .line 164
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:[Landroid/telephony/CellInfo;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    if-eqz v1, :cond_1

    .line 170
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_1
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "subscription"

    .prologue
    .line 667
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 669
    .local v0, ident:J
    if-nez p1, :cond_1

    .line 670
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 680
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 683
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    :cond_0
    const-string v3, "subscription"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 686
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 687
    return-void

    .line 672
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 674
    :catch_0
    move-exception v3

    goto :goto_0

    .line 677
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 722
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    const-string v1, "subscription"

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 727
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 728
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V
    .locals 5
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "roaming"

    .prologue
    const/4 v4, 0x1

    .line 696
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 697
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    if-nez p2, :cond_0

    .line 699
    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 701
    :cond_0
    if-eqz p3, :cond_1

    .line 702
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    :cond_1
    if-eqz p6, :cond_2

    .line 705
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 706
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, iface:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 708
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    .end local v0           #iface:Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    .line 712
    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 714
    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 716
    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 719
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 6
    .parameter "state"
    .parameter "subscription"

    .prologue
    .line 629
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 631
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 638
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v3, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 640
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 641
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 643
    const-string v4, "subscription"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 645
    return-void

    .line 635
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 632
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 5
    .parameter "signalStrength"
    .parameter "subscription"

    .prologue
    .line 648
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 650
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 657
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 659
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 660
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 661
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 662
    const-string v4, "subscription"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 664
    return-void

    .line 654
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 651
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private checkListenerPermission(I)V
    .locals 3
    .parameter "events"

    .prologue
    const/4 v2, 0x0

    .line 742
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_0
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :cond_1
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_2
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    .line 731
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 733
    const/4 v1, 0x1

    .line 738
    :goto_0
    return v1

    .line 735
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, msg:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleRemoveListLocked()V
    .locals 3

    .prologue
    .line 761
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 762
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 763
    .local v0, b:Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 765
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 767
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    .line 298
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 300
    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 303
    monitor-exit v3

    .line 307
    :goto_1
    return-void

    .line 300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #recordCount:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 590
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 592
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 597
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 598
    .local v3, recordCount:I
    const-string v4, "last known state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallIncomingNumber="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mServiceState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mSignalStrength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mMessageWaiting="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallForwarding="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCellLocation="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCellInfo="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:[Landroid/telephony/CellInfo;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 609
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataActivity:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionPossible="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionReason="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionApn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionLinkProperties="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionLinkCapabilities="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionNetworkType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registrations: count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 619
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 621
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .end local v3           #recordCount:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #recordCount:I
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .locals 13
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"
    .parameter "subscription"

    .prologue
    .line 178
    if-eqz p3, :cond_e

    .line 180
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/MSimTelephonyRegistry;->checkListenerPermission(I)V

    .line 182
    iget-object v10, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    .line 184
    const/4 v6, 0x0

    .line 186
    .local v6, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 187
    .local v2, b:Landroid/os/IBinder;
    iget-object v9, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 188
    .local v1, N:I
    const/4 v5, 0x0

    .local v5, i:I
    move-object v7, v6

    .end local v6           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .local v7, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :goto_0
    if-ge v5, v1, :cond_d

    .line 189
    :try_start_1
    iget-object v9, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/MSimTelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    .end local v7           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :try_start_2
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v9, :cond_c

    .line 201
    :goto_1
    iget v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    xor-int v9, v9, p3

    and-int v8, p3, v9

    .line 202
    .local v8, send:I
    move/from16 v0, p3

    iput v0, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    if-eqz p4, :cond_b

    .line 204
    and-int/lit8 v9, p3, 0x1

    if-eqz v9, :cond_0

    .line 206
    :try_start_3
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/ServiceState;

    iget-object v12, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v12, v12, p5

    invoke-direct {v11, v12}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 212
    :cond_0
    :goto_2
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_2

    .line 214
    :try_start_4
    iget-object v9, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v9, v9, p5

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    .line 216
    .local v4, gsmSignalStrength:I
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v11, 0x63

    if-ne v4, v11, :cond_1

    const/4 v4, -0x1

    .end local v4           #gsmSignalStrength:I
    :cond_1
    invoke-interface {v9, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 222
    :cond_2
    :goto_3
    and-int/lit8 v9, p3, 0x4

    if-eqz v9, :cond_3

    .line 224
    :try_start_5
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v11, v11, p5

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 230
    :cond_3
    :goto_4
    and-int/lit8 v9, p3, 0x8

    if-eqz v9, :cond_4

    .line 232
    :try_start_6
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v11, v11, p5

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 238
    :cond_4
    :goto_5
    and-int/lit8 v9, p3, 0x10

    if-eqz v9, :cond_5

    .line 240
    :try_start_7
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/os/Bundle;

    iget-object v12, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v12, v12, p5

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 246
    :cond_5
    :goto_6
    and-int/lit8 v9, p3, 0x20

    if-eqz v9, :cond_6

    .line 248
    :try_start_8
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    aget v11, v11, p5

    iget-object v12, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v12, v12, p5

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    .line 254
    :cond_6
    :goto_7
    and-int/lit8 v9, p3, 0x40

    if-eqz v9, :cond_7

    .line 256
    :try_start_9
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    iget v12, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_6

    .line 262
    :cond_7
    :goto_8
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_8

    .line 264
    :try_start_a
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    .line 269
    :cond_8
    :goto_9
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_9

    .line 271
    :try_start_b
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v11, v11, p5

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    .line 276
    :cond_9
    :goto_a
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_a

    .line 278
    :try_start_c
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/MSimTelephonyRegistry;->mOtaspMode:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_9

    .line 283
    :cond_a
    :goto_b
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x400

    if-eqz v9, :cond_b

    .line 285
    :try_start_d
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v11, Landroid/telephony/CellInfo;

    iget-object v12, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:[Landroid/telephony/CellInfo;

    aget-object v12, v12, p5

    invoke-direct {v11, v12}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Landroid/telephony/CellInfo;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_a

    .line 291
    :cond_b
    :goto_c
    :try_start_e
    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 295
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v5           #i:I
    .end local v6           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .end local v8           #send:I
    :goto_d
    return-void

    .line 188
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v6       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    .end local v6           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .restart local v7       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    goto/16 :goto_0

    .line 194
    :cond_d
    :try_start_f
    new-instance v6, Lcom/android/server/MSimTelephonyRegistry$Record;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/server/MSimTelephonyRegistry$Record;-><init>(Lcom/android/server/MSimTelephonyRegistry$1;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 195
    .end local v7           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :try_start_10
    iput-object v2, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 196
    iput-object p2, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 197
    iput-object p1, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 198
    move/from16 v0, p5

    iput v0, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I

    .line 199
    iget-object v9, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 291
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v5           #i:I
    :catchall_0
    move-exception v9

    :goto_e
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v9

    .line 208
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v8       #send:I
    :catch_0
    move-exception v3

    .line 209
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_11
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_2

    .line 218
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 219
    .restart local v3       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 226
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 227
    .restart local v3       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 234
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_3
    move-exception v3

    .line 235
    .restart local v3       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_5

    .line 242
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_4
    move-exception v3

    .line 243
    .restart local v3       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_6

    .line 250
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_5
    move-exception v3

    .line 251
    .restart local v3       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 258
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_6
    move-exception v3

    .line 259
    .restart local v3       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_8

    .line 265
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_7
    move-exception v3

    .line 266
    .restart local v3       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_9

    .line 272
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_8
    move-exception v3

    .line 273
    .restart local v3       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_a

    .line 279
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_9
    move-exception v3

    .line 280
    .restart local v3       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_b

    .line 286
    .end local v3           #ex:Landroid/os/RemoteException;
    :catch_a
    move-exception v3

    .line 287
    .restart local v3       #ex:Landroid/os/RemoteException;
    iget-object v9, v6, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_c

    .line 293
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v3           #ex:Landroid/os/RemoteException;
    .end local v5           #i:I
    .end local v6           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .end local v8           #send:I
    :cond_e
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/MSimTelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_d

    .line 291
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v7       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    goto :goto_e
.end method

.method public notifyCallForwardingChanged(ZI)V
    .locals 6
    .parameter "cfi"
    .parameter "subscription"

    .prologue
    .line 426
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 430
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p1, v3, p2

    .line 431
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 432
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    .line 435
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 442
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 441
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 442
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCallState(ILjava/lang/String;I)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "subscription"

    .prologue
    .line 310
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 314
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallState:[I

    aput p1, v3, p3

    .line 315
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p2, v3, p3

    .line 316
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 317
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p3, :cond_1

    .line 320
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 327
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 326
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 327
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MSimTelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyCellInfo(Landroid/telephony/CellInfo;I)V
    .locals 6
    .parameter "cellInfo"
    .parameter "subscription"

    .prologue
    .line 385
    const-string v3, "notifyCellInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 403
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 390
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellInfo:[Landroid/telephony/CellInfo;

    aput-object p1, v3, p2

    .line 391
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 392
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    .line 395
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/CellInfo;

    invoke-direct {v5, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Landroid/telephony/CellInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 402
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 401
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 402
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCellLocation(Landroid/os/Bundle;I)V
    .locals 6
    .parameter "cellLocation"
    .parameter "subscription"

    .prologue
    .line 549
    const-string v3, "notifyCellLocation()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 567
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 553
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aput-object p1, v3, p2

    .line 554
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 555
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    .line 558
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 566
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 565
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 566
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataActivity(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 446
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 462
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 450
    :try_start_0
    iput p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataActivity:I

    .line 451
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 452
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 454
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 461
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 460
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 461
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 14
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"

    .prologue
    .line 467
    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 525
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v2, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 476
    const/4 v12, 0x0

    .line 477
    .local v12, modified:Z
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    iget v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    if-eq v1, p1, :cond_1

    .line 481
    iput p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    .line 482
    const/4 v12, 0x1

    .line 496
    :cond_1
    :goto_1
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionPossible:Z

    .line 497
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 498
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 499
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 500
    iget v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_2

    .line 501
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    .line 503
    const/4 v12, 0x1

    .line 505
    :cond_2
    if-eqz v12, :cond_6

    .line 510
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 511
    .local v13, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v1, v13, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    .line 513
    :try_start_1
    iget-object v1, v13, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 515
    :catch_0
    move-exception v10

    .line 516
    .local v10, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v13, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 522
    .end local v10           #ex:Landroid/os/RemoteException;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 486
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/android/server/MSimTelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    iput p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mDataConnectionState:I

    .line 489
    const/4 v12, 0x1

    goto :goto_1

    .line 520
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 522
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    .line 523
    invoke-direct/range {v1 .. v9}, Lcom/android/server/MSimTelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 528
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    :goto_0
    return-void

    .line 545
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/MSimTelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(ZI)V
    .locals 6
    .parameter "mwi"
    .parameter "subscription"

    .prologue
    .line 406
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 423
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 410
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p1, v3, p2

    .line 411
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 412
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    .line 415
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 422
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 421
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 422
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 6
    .parameter "otaspMode"

    .prologue
    .line 570
    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 586
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 574
    :try_start_0
    iput p1, p0, Lcom/android/server/MSimTelephonyRegistry;->mOtaspMode:I

    .line 575
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 576
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1

    .line 578
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 585
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 584
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 585
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;I)V
    .locals 6
    .parameter "state"
    .parameter "subscription"

    .prologue
    .line 332
    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    :goto_0
    return-void

    .line 335
    :cond_0
    const-string v3, "MSimTelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyServiceState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 337
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p1, v3, p2

    .line 338
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 339
    .local v2, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    .line 342
    :try_start_1
    iget-object v3, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 348
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 349
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/android/server/MSimTelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_0
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;I)V
    .locals 7
    .parameter "signalStrength"
    .parameter "subscription"

    .prologue
    .line 354
    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/MSimTelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 382
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v5, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 358
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p1, v4, p2

    .line 359
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MSimTelephonyRegistry$Record;

    .line 360
    .local v3, r:Lcom/android/server/MSimTelephonyRegistry$Record;
    iget v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p2, :cond_2

    .line 363
    :try_start_1
    iget-object v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    :cond_2
    :goto_2
    :try_start_2
    iget v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->events:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->subscription:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, p2, :cond_1

    .line 371
    :try_start_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 372
    .local v1, gsmSignalStrength:I
    iget-object v4, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_3

    const/4 v1, -0x1

    .end local v1           #gsmSignalStrength:I
    :cond_3
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 380
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 364
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :catch_1
    move-exception v0

    .line 365
    .restart local v0       #ex:Landroid/os/RemoteException;
    :try_start_5
    iget-object v4, p0, Lcom/android/server/MSimTelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/MSimTelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 379
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v3           #r:Lcom/android/server/MSimTelephonyRegistry$Record;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/MSimTelephonyRegistry;->handleRemoveListLocked()V

    .line 380
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/android/server/MSimTelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto :goto_0
.end method
