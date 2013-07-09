.class public final Lcom/movial/ipphone/IPCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "IPCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/IPCallTracker$2;,
        Lcom/movial/ipphone/IPCallTracker$pendingConnection;
    }
.end annotation


# static fields
.field private static final EVENT_KEEP_RINGING:I = 0x2a

.field private static final EVENT_REMOVE_CONNECTION:I = 0x29

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field static final TAG:Ljava/lang/String; = "IPCallTracker"


# instance fields
.field private DELAYED_KEEP_RINGING:I

.field private DELAYED_REMOVE_CONNECTION:I

.field private final PENDING_MO_BY_DIAL_FAIL:I

.field private final PENDING_MO_BY_HOLD_FAIL:I

.field backgroundCall:Lcom/movial/ipphone/IPCall;

.field connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/movial/ipphone/IPConnection;",
            ">;"
        }
    .end annotation
.end field

.field desiredMute:Z

.field foregroundCall:Lcom/movial/ipphone/IPCall;

.field mHandler:Landroid/os/Handler;

.field mIPService:Lcom/movial/ipphone/IIPService;

.field mMsnger:Landroid/os/Messenger;

.field mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field makeCall:Z

.field pendingConf:Z

.field pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

.field pendingMOIndex:I

.field phone:Lcom/movial/ipphone/IPPhone;

.field ringingCall:Lcom/movial/ipphone/IPCall;

.field ringingIndex:I

.field state:Lcom/android/internal/telephony/Phone$State;

.field swapCall:I

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPPhone;)V
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 154
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 80
    const/4 v1, 0x1

    iput v1, p0, Lcom/movial/ipphone/IPCallTracker;->PENDING_MO_BY_DIAL_FAIL:I

    .line 81
    const/4 v1, 0x2

    iput v1, p0, Lcom/movial/ipphone/IPCallTracker;->PENDING_MO_BY_HOLD_FAIL:I

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    .line 87
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 88
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 95
    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    .line 96
    iput-boolean v4, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    .line 97
    new-instance v1, Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;-><init>(Lcom/movial/ipphone/IPCallTracker;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    .line 99
    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    .line 102
    new-instance v1, Lcom/movial/ipphone/IPCall;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPCall;-><init>(Lcom/movial/ipphone/IPCallTracker;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    .line 103
    new-instance v1, Lcom/movial/ipphone/IPCall;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPCall;-><init>(Lcom/movial/ipphone/IPCallTracker;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    .line 104
    new-instance v1, Lcom/movial/ipphone/IPCall;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPCall;-><init>(Lcom/movial/ipphone/IPCallTracker;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    .line 106
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 112
    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->ringingIndex:I

    .line 113
    iput-boolean v4, p0, Lcom/movial/ipphone/IPCallTracker;->makeCall:Z

    .line 115
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/movial/ipphone/IPCallTracker;->DELAYED_REMOVE_CONNECTION:I

    .line 116
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/movial/ipphone/IPCallTracker;->DELAYED_KEEP_RINGING:I

    .line 119
    new-instance v1, Lcom/movial/ipphone/IPCallTracker$1;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPCallTracker$1;-><init>(Lcom/movial/ipphone/IPCallTracker;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    .line 155
    iput-object p1, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    .line 156
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mMsnger:Landroid/os/Messenger;

    .line 158
    invoke-virtual {p1}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 159
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x3

    const-string v2, "WifiCalling"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 160
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/IPCallTracker;ILcom/android/internal/telephony/Connection$DisconnectCause;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/movial/ipphone/IPCallTracker;->removeConnection(ILcom/android/internal/telephony/Connection$DisconnectCause;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/movial/ipphone/IPCallTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$200(Lcom/movial/ipphone/IPCallTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/movial/ipphone/IPCallTracker;->DELAYED_KEEP_RINGING:I

    return v0
.end method

.method static synthetic access$300(Lcom/movial/ipphone/IPCallTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->clearConnections()V

    return-void
.end method

.method static synthetic access$400(Lcom/movial/ipphone/IPCallTracker;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPCallTracker;->updateConnection(Landroid/os/Message;)V

    return-void
.end method

.method private canDial()Z
    .locals 3

    .prologue
    .line 766
    const-string v1, "ro.telephony.disable-call"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, disableCall:Ljava/lang/String;
    iget v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->isRinging()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 798
    const/4 v0, -0x1

    iput v0, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    .line 800
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->clear()V

    .line 801
    return-void
.end method

.method private clearConnections()V
    .locals 5

    .prologue
    .line 311
    const-string v3, "IPCallTracker"

    const-string v4, "clearConnections"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 313
    .local v2, size:I
    move v1, v2

    .local v1, i:I
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    .line 314
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 315
    .local v0, conn:Lcom/movial/ipphone/IPConnection;
    iget-object v3, v0, Lcom/movial/ipphone/IPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_0

    .line 316
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-direct {p0, v1, v3}, Lcom/movial/ipphone/IPCallTracker;->removeConnection(ILcom/android/internal/telephony/Connection$DisconnectCause;)Z

    .line 313
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 318
    .end local v0           #conn:Lcom/movial/ipphone/IPConnection;
    :cond_1
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 319
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 320
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 775
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    iget-object v4, v4, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 776
    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 777
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 778
    .local v0, conn:Lcom/movial/ipphone/IPConnection;
    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->fakeHoldBeforeDial()V

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 780
    .end local v0           #conn:Lcom/movial/ipphone/IPConnection;
    :cond_0
    return-void
.end method

.method private findConnection(Lcom/movial/ipphone/SessionCall;)I
    .locals 5
    .parameter "sessioncall"

    .prologue
    const/4 v2, -0x1

    .line 324
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 325
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 328
    .local v0, conn:Lcom/movial/ipphone/IPConnection;
    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v3

    iget v4, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne v3, v4, :cond_1

    .line 329
    iget-boolean v2, p1, Lcom/movial/ipphone/SessionCall;->inConf:Z

    if-eqz v2, :cond_0

    .line 330
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/movial/ipphone/IPConnection;->inConf:Z

    .line 343
    .end local v0           #conn:Lcom/movial/ipphone/IPConnection;
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v1

    .line 334
    .restart local v0       #conn:Lcom/movial/ipphone/IPConnection;
    .restart local v1       #i:I
    :cond_1
    const-string v3, "E911"

    iget-object v4, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v0, v2}, Lcom/movial/ipphone/IPConnection;->setIndex(I)V

    goto :goto_1

    .line 338
    :cond_2
    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 339
    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v0, v2}, Lcom/movial/ipphone/IPConnection;->setIndex(I)V

    goto :goto_1

    .line 324
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #conn:Lcom/movial/ipphone/IPConnection;
    :cond_4
    move v1, v2

    .line 343
    goto :goto_1
.end method

.method private isNewCall(Lcom/movial/ipphone/SessionCall;)I
    .locals 3
    .parameter "sessioncall"

    .prologue
    const/4 v0, -0x1

    .line 783
    iget-boolean v1, p1, Lcom/movial/ipphone/SessionCall;->inConf:Z

    if-eqz v1, :cond_0

    .line 793
    :goto_0
    return v0

    .line 786
    :cond_0
    sget-object v1, Lcom/movial/ipphone/IPCallTracker$2;->$SwitchMap$com$movial$ipphone$SessionCall$State:[I

    iget-object v2, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {v2}, Lcom/movial/ipphone/SessionCall$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 789
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 791
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    const-string v0, "IPCallTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return-void
.end method

.method private removeConnection(ILcom/android/internal/telephony/Connection$DisconnectCause;)Z
    .locals 7
    .parameter "i"
    .parameter "failedcause"

    .prologue
    .line 289
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/movial/ipphone/IPConnection;

    .line 290
    .local v1, conn:Lcom/movial/ipphone/IPConnection;
    const/4 v2, 0x0

    .line 292
    .local v2, result:Z
    move-object v0, p2

    .line 293
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual {v1}, Lcom/movial/ipphone/IPConnection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/movial/ipphone/IPConnection;->getConnectTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 295
    iget-object v3, v1, Lcom/movial/ipphone/IPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_1

    .line 296
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 304
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeConnection. cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v1, v0}, Lcom/movial/ipphone/IPConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)Z

    move-result v2

    .line 306
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 307
    return v2

    .line 298
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 300
    :cond_2
    iget-object v3, v1, Lcom/movial/ipphone/IPConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_0

    .line 302
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0
.end method

.method private swapCallUiUpdate(Lcom/movial/ipphone/SessionCall;)Z
    .locals 6
    .parameter "sessioncall"

    .prologue
    const/4 v5, -0x1

    .line 804
    const/4 v2, 0x0

    .line 805
    .local v2, result:Z
    iget-object v3, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v4, Lcom/movial/ipphone/SessionCall$State;->DISCONNECTED:Lcom/movial/ipphone/SessionCall$State;

    if-ne v3, v4, :cond_0

    .line 806
    iput v5, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    .line 808
    :cond_0
    iget v3, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    if-lez v3, :cond_5

    .line 809
    iget-boolean v3, p1, Lcom/movial/ipphone/SessionCall;->inConf:Z

    if-eqz v3, :cond_3

    .line 810
    iget v3, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    .line 822
    :cond_1
    :goto_0
    iget v3, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    if-nez v3, :cond_2

    .line 823
    iput v5, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    .line 824
    const/4 v2, 0x1

    .line 825
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 828
    :cond_2
    const-string v3, "IPCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "swapCallUiUpdate. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", swapCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return v2

    .line 812
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 813
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 814
    .local v0, conn:Lcom/movial/ipphone/IPConnection;
    iget v3, v0, Lcom/movial/ipphone/IPConnection;->index:I

    iget v4, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {v0, v4}, Lcom/movial/ipphone/IPConnection;->parseSessionState(Lcom/movial/ipphone/SessionCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 816
    iget v3, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    .line 812
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 819
    .end local v0           #conn:Lcom/movial/ipphone/IPConnection;
    .end local v1           #i:I
    :cond_5
    iget v3, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    if-ne v3, v5, :cond_1

    .line 820
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateConfConnections(Lcom/movial/ipphone/SessionCall;Z)V
    .locals 7
    .parameter "sessioncall"
    .parameter "swap"

    .prologue
    .line 270
    const-string v4, "IPCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConfConnections. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v2, 0x0

    .line 272
    .local v2, notified:Z
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 273
    .local v3, size:I
    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v5, Lcom/movial/ipphone/SessionCall$State;->UNKNOWN:Lcom/movial/ipphone/SessionCall$State;

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/movial/ipphone/SessionCall$State;->ACTIVE:Lcom/movial/ipphone/SessionCall$State;

    :goto_0
    iput-object v4, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    .line 274
    move v1, v3

    .local v1, i:I
    :goto_1
    const/4 v4, -0x1

    if-le v1, v4, :cond_4

    .line 275
    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 276
    .local v0, conn:Lcom/movial/ipphone/IPConnection;
    iget-boolean v4, v0, Lcom/movial/ipphone/IPConnection;->inConf:Z

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v5, Lcom/movial/ipphone/SessionCall$State;->DISCONNECTED:Lcom/movial/ipphone/SessionCall$State;

    if-ne v4, v5, :cond_2

    .line 278
    if-nez v2, :cond_0

    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-direct {p0, v1, v4}, Lcom/movial/ipphone/IPCallTracker;->removeConnection(ILcom/android/internal/telephony/Connection$DisconnectCause;)Z

    move-result v2

    .line 274
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 273
    .end local v0           #conn:Lcom/movial/ipphone/IPConnection;
    .end local v1           #i:I
    :cond_1
    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    goto :goto_0

    .line 279
    .restart local v0       #conn:Lcom/movial/ipphone/IPConnection;
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {v0, v4}, Lcom/movial/ipphone/IPConnection;->update(Lcom/movial/ipphone/SessionCall$State;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    if-eqz p2, :cond_3

    const/4 v2, 0x1

    :goto_3
    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 284
    .end local v0           #conn:Lcom/movial/ipphone/IPConnection;
    :cond_4
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 285
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v4}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 286
    :cond_5
    return-void
.end method

.method private updateConnection(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/16 v13, 0x2a

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v12, -0x1

    .line 184
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 185
    .local v1, bundle:Landroid/os/Bundle;
    const-class v8, Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 186
    const-string v8, "call"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/movial/ipphone/SessionCall;

    .line 189
    .local v6, sessioncall:Lcom/movial/ipphone/SessionCall;
    invoke-direct {p0, v6}, Lcom/movial/ipphone/IPCallTracker;->findConnection(Lcom/movial/ipphone/SessionCall;)I

    move-result v3

    .line 191
    .local v3, i:I
    iget v8, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_1

    .line 192
    const-string v8, "IPCallTracker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SessionCall.MSG_CALL_RINGING. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/movial/ipphone/IPCallTracker;->ringingIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eq v3, v12, :cond_0

    .line 196
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/movial/ipphone/IPConnection;

    invoke-virtual {v8}, Lcom/movial/ipphone/IPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_0

    iget v8, p0, Lcom/movial/ipphone/IPCallTracker;->ringingIndex:I

    if-ne v8, v12, :cond_0

    .line 197
    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->ringingIndex:I

    .line 198
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v4, 0x0

    .line 205
    .local v4, isCNAM:Z
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x5

    if-ne v8, v11, :cond_4

    .line 206
    const-string v8, "IPCallTracker"

    const-string v11, "updateConnection: update CNAM"

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/movial/ipphone/IPConnection;

    iget-object v11, v6, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v11, v8, Lcom/movial/ipphone/IPConnection;->cnapName:Ljava/lang/String;

    .line 208
    const/4 v4, 0x1

    .line 217
    :cond_2
    :goto_1
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x6

    if-ne v8, v11, :cond_3

    .line 218
    iget-object v11, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_5

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Lcom/movial/ipphone/IPPhone;->notifyRingbackTone(Z)V

    .line 223
    :cond_3
    invoke-virtual {p0, v6}, Lcom/movial/ipphone/IPCallTracker;->dialAfterHolding(Lcom/movial/ipphone/SessionCall;)V

    .line 226
    invoke-virtual {p0, v6}, Lcom/movial/ipphone/IPCallTracker;->acceptAfterHolding(Lcom/movial/ipphone/SessionCall;)Z

    move-result v0

    .line 229
    .local v0, accept:Z
    invoke-direct {p0, v6}, Lcom/movial/ipphone/IPCallTracker;->swapCallUiUpdate(Lcom/movial/ipphone/SessionCall;)Z

    move-result v7

    .line 231
    .local v7, swap:Z
    const/4 v5, 0x0

    .line 232
    .local v5, notified:Z
    if-ne v3, v12, :cond_8

    .line 233
    invoke-direct {p0, v6}, Lcom/movial/ipphone/IPCallTracker;->isNewCall(Lcom/movial/ipphone/SessionCall;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 251
    iget-boolean v8, v6, Lcom/movial/ipphone/SessionCall;->inConf:Z

    if-eqz v8, :cond_6

    .line 252
    invoke-direct {p0, v6, v7}, Lcom/movial/ipphone/IPCallTracker;->updateConfConnections(Lcom/movial/ipphone/SessionCall;Z)V

    goto :goto_0

    .line 209
    .end local v0           #accept:Z
    .end local v5           #notified:Z
    .end local v7           #swap:Z
    :cond_4
    iget v8, p0, Lcom/movial/ipphone/IPCallTracker;->ringingIndex:I

    if-ne v8, v3, :cond_2

    iget-object v8, v6, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v11, Lcom/movial/ipphone/SessionCall$State;->ALERTING:Lcom/movial/ipphone/SessionCall$State;

    if-eq v8, v11, :cond_2

    .line 211
    const-string v8, "IPCallTracker"

    const-string v11, "removeMessages"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iput v12, p0, Lcom/movial/ipphone/IPCallTracker;->ringingIndex:I

    goto :goto_1

    :cond_5
    move v8, v10

    .line 218
    goto :goto_2

    .line 235
    .restart local v0       #accept:Z
    .restart local v5       #notified:Z
    .restart local v7       #swap:Z
    :pswitch_0
    new-instance v2, Lcom/movial/ipphone/IPConnection;

    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v8}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8, p0, v6}, Lcom/movial/ipphone/IPConnection;-><init>(Landroid/content/Context;Lcom/movial/ipphone/IPCallTracker;Lcom/movial/ipphone/SessionCall;)V

    .line 236
    .local v2, c:Lcom/movial/ipphone/IPConnection;
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/movial/ipphone/IPConnection;->connectTime:J

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/movial/ipphone/IPConnection;->connectTimeReal:J

    .line 239
    const-wide/16 v8, 0x0

    iput-wide v8, v2, Lcom/movial/ipphone/IPConnection;->duration:J

    .line 240
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v8, v2}, Lcom/movial/ipphone/IPPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 257
    .end local v2           #c:Lcom/movial/ipphone/IPConnection;
    :cond_6
    :goto_3
    const/4 v5, 0x1

    .line 265
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 266
    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v8}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_0

    .line 245
    :pswitch_1
    new-instance v2, Lcom/movial/ipphone/IPConnection;

    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v8}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8, p0, v6}, Lcom/movial/ipphone/IPConnection;-><init>(Landroid/content/Context;Lcom/movial/ipphone/IPCallTracker;Lcom/movial/ipphone/SessionCall;)V

    .line 246
    .restart local v2       #c:Lcom/movial/ipphone/IPConnection;
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v8, v2}, Lcom/movial/ipphone/IPPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    goto :goto_3

    .line 258
    .end local v2           #c:Lcom/movial/ipphone/IPConnection;
    :cond_8
    iget-object v8, v6, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v11, Lcom/movial/ipphone/SessionCall$State;->DISCONNECTED:Lcom/movial/ipphone/SessionCall$State;

    if-ne v8, v11, :cond_9

    .line 259
    iget-object v8, v6, Lcom/movial/ipphone/SessionCall;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-direct {p0, v3, v8}, Lcom/movial/ipphone/IPCallTracker;->removeConnection(ILcom/android/internal/telephony/Connection$DisconnectCause;)Z

    move-result v5

    goto :goto_4

    .line 260
    :cond_9
    if-eqz v4, :cond_a

    .line 261
    const/4 v5, 0x1

    goto :goto_4

    .line 262
    :cond_a
    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/movial/ipphone/IPConnection;

    iget-object v11, v6, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {v8, v11}, Lcom/movial/ipphone/IPConnection;->update(Lcom/movial/ipphone/SessionCall$State;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 263
    if-eqz v7, :cond_b

    if-nez v0, :cond_b

    move v5, v9

    :goto_5
    goto :goto_4

    :cond_b
    move v5, v10

    goto :goto_5

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 737
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 739
    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 740
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 752
    :goto_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_6

    .line 753
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 758
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoneState. original: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_1

    .line 761
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhone;->notifyPhoneStateChanged()V

    .line 763
    :cond_1
    return-void

    .line 741
    :cond_2
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 742
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 744
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 746
    const/4 v1, -0x1

    iput v1, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    .line 748
    iget-boolean v1, p0, Lcom/movial/ipphone/IPCallTracker;->makeCall:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhone;->notifyToShowDialog()V

    .line 749
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/movial/ipphone/IPCallTracker;->makeCall:Z

    goto :goto_0

    .line 754
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method acceptAfterHolding(Lcom/movial/ipphone/SessionCall;)Z
    .locals 4
    .parameter "sessioncall"

    .prologue
    const/4 v1, 0x0

    .line 453
    iget-object v2, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v3, Lcom/movial/ipphone/SessionCall$State;->HOLDING:Lcom/movial/ipphone/SessionCall$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v1

    .line 455
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v2}, Lcom/movial/ipphone/IIPService;->accept()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    const/4 v1, 0x1

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptCall FAILED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptCall. ringingcall state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 485
    :goto_0
    return-void

    .line 469
    :cond_0
    sget-object v1, Lcom/movial/ipphone/IPCallTracker$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 487
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->switchWaitingOrHoldingAndActive(Z)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 479
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->setMute(Z)V

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1}, Lcom/movial/ipphone/IIPService;->accept()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptCall FAILED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method canConference()Z
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 3

    .prologue
    .line 706
    const-string v1, "clearDisconnected"

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 707
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->clearDisconnected()V

    .line 708
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->clearDisconnected()V

    .line 709
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->clearDisconnected()V

    .line 711
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 712
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 714
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 715
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->clear()V

    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1}, Lcom/movial/ipphone/IIPService;->clearDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 724
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 725
    const-string v1, "acquire wifilock"

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 734
    :goto_1
    return-void

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPService clear Disconnection FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 727
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 728
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 729
    const-string v1, "release wifilock"

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 732
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is lock held: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method conference()V
    .locals 3

    .prologue
    .line 681
    iget-boolean v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    if-eqz v1, :cond_0

    .line 690
    :goto_0
    return-void

    .line 682
    :cond_0
    const-string v1, "IPCallTracker"

    const-string v2, "conference"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    .line 684
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1}, Lcom/movial/ipphone/IIPService;->conference()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conference FAILED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 491
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 492
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "clir_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 493
    .local v0, clirMode:I
    invoke-virtual {p0, p1, v0}, Lcom/movial/ipphone/IPCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    return-object v2
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 5
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/movial/ipphone/IPCallTracker;->clearDisconnected()V

    .line 350
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->canDial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .local v1, hasHold:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/movial/ipphone/IPCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 359
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 362
    :cond_1
    new-instance v0, Lcom/movial/ipphone/IPConnection;

    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-direct {v0, v3, p1, p0, v4}, Lcom/movial/ipphone/IPConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/movial/ipphone/IPCallTracker;Lcom/movial/ipphone/IPCall;)V

    .line 363
    .local v0, conn:Lcom/movial/ipphone/IPConnection;
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IPCallTracker;->setMute(Z)V

    .line 367
    if-nez v1, :cond_3

    .line 368
    invoke-virtual {p0, v0, p2}, Lcom/movial/ipphone/IPCallTracker;->dial(Lcom/movial/ipphone/IPConnection;I)V

    .line 374
    :goto_1
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 375
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 377
    return-object v0

    .end local v0           #conn:Lcom/movial/ipphone/IPConnection;
    .end local v1           #hasHold:Z
    :cond_2
    move v1, v2

    .line 357
    goto :goto_0

    .line 371
    .restart local v0       #conn:Lcom/movial/ipphone/IPConnection;
    .restart local v1       #hasHold:Z
    :cond_3
    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, p2}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->set(II)V

    goto :goto_1
.end method

.method dial(Lcom/movial/ipphone/IPConnection;I)V
    .locals 7
    .parameter "conn"
    .parameter "clirMode"

    .prologue
    const/4 v6, 0x1

    .line 381
    const/4 v2, -0x1

    .line 383
    .local v2, result:I
    :try_start_0
    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getDialString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/movial/ipphone/IIPService;->dialEmergencyCall(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 393
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 394
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    .line 395
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x29

    iget v5, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    invoke-virtual {v3, v4, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 396
    .local v1, msgRemoveConnection:Landroid/os/Message;
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/movial/ipphone/IPCallTracker;->DELAYED_REMOVE_CONNECTION:I

    int-to-long v4, v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 401
    .end local v1           #msgRemoveConnection:Landroid/os/Message;
    :goto_1
    iput-boolean v6, p0, Lcom/movial/ipphone/IPCallTracker;->makeCall:Z

    .line 403
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 404
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 405
    return-void

    .line 387
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lcom/movial/ipphone/IIPService;->dial(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iput v2, p1, Lcom/movial/ipphone/IPConnection;->index:I

    goto :goto_1
.end method

.method dialAfterHolding(Lcom/movial/ipphone/SessionCall;)V
    .locals 9
    .parameter "sessioncall"

    .prologue
    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialAfterHolding. isnull: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-virtual {v6}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->isNull()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 412
    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-virtual {v5}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->isNull()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v5, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v6, Lcom/movial/ipphone/SessionCall$State;->ACTIVE:Lcom/movial/ipphone/SessionCall$State;

    if-ne v5, v6, :cond_2

    .line 416
    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x29

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    iget v8, v8, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->connIndex:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 417
    .local v4, msgRemoveConnection:Landroid/os/Message;
    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 419
    .end local v4           #msgRemoveConnection:Landroid/os/Message;
    :cond_2
    iget-object v5, p1, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    sget-object v6, Lcom/movial/ipphone/SessionCall$State;->HOLDING:Lcom/movial/ipphone/SessionCall$State;

    if-ne v5, v6, :cond_0

    .line 422
    const/4 v1, 0x0

    .line 425
    .local v1, conn:Lcom/movial/ipphone/IPConnection;
    const/4 v3, 0x0

    .line 426
    .local v3, i:I
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 427
    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/movial/ipphone/IPConnection;

    iget v5, v5, Lcom/movial/ipphone/IPConnection;->index:I

    iget v6, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne v5, v6, :cond_5

    .line 428
    const-string v5, "IPCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "matched index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_3
    iget-boolean v5, p1, Lcom/movial/ipphone/SessionCall;->inConf:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 433
    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    move-object v1, v0

    .line 434
    invoke-virtual {v1}, Lcom/movial/ipphone/IPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_0

    .line 441
    :cond_4
    invoke-virtual {p0}, Lcom/movial/ipphone/IPCallTracker;->clearDisconnected()V

    .line 444
    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #conn:Lcom/movial/ipphone/IPConnection;
    check-cast v1, Lcom/movial/ipphone/IPConnection;

    .line 445
    .restart local v1       #conn:Lcom/movial/ipphone/IPConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    .line 447
    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    iget v5, v5, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->clirMode:I

    invoke-virtual {p0, v1, v5}, Lcom/movial/ipphone/IPCallTracker;->dial(Lcom/movial/ipphone/IPConnection;I)V

    .line 448
    iget-object v5, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-virtual {v5}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->clear()V

    goto/16 :goto_0

    .line 426
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 437
    :catch_0
    move-exception v2

    .line 438
    .local v2, e:Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/movial/ipphone/IPCallTracker;->desiredMute:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 169
    return-void
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 165
    return-void
.end method

.method hangup(Lcom/movial/ipphone/IPCall;)V
    .locals 3
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangup call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1}, Lcom/movial/ipphone/IPCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_0
    iget-boolean v0, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    if-eqz v0, :cond_1

    .line 511
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot hangup: conference call is establishing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    if-ne p1, v0, :cond_2

    .line 514
    const-string v0, "(ringing) hangup ringing or waiting call"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0, p1}, Lcom/movial/ipphone/IPCallTracker;->reject(Lcom/movial/ipphone/IPCall;)V

    .line 534
    :goto_0
    invoke-virtual {p1}, Lcom/movial/ipphone/IPCall;->onHangupLocal()V

    .line 535
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    .line 536
    return-void

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    if-ne p1, v0, :cond_4

    .line 517
    invoke-virtual {p1}, Lcom/movial/ipphone/IPCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 518
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Lcom/movial/ipphone/IPCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->hangup(Lcom/movial/ipphone/IPConnection;)V

    goto :goto_0

    .line 521
    :cond_3
    invoke-virtual {p0}, Lcom/movial/ipphone/IPCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    .line 523
    :cond_4
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    if-ne p1, v0, :cond_6

    .line 524
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 525
    const-string v0, "(backgnd) hangup all rining call"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->reject(Lcom/movial/ipphone/IPCall;)V

    goto :goto_0

    .line 528
    :cond_5
    const-string v0, "(backgnd) hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0, p1}, Lcom/movial/ipphone/IPCallTracker;->hangupAll(Lcom/movial/ipphone/IPCall;)V

    goto :goto_0

    .line 532
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to IPCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hangup(Lcom/movial/ipphone/IPConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v1, p1, Lcom/movial/ipphone/IPConnection;->owner:Lcom/movial/ipphone/IPCallTracker;

    if-eq v1, p0, :cond_0

    .line 591
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IPConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to IPCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->isNull()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 596
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-direct {p0, v1, v2}, Lcom/movial/ipphone/IPCallTracker;->removeConnection(ILcom/android/internal/telephony/Connection$DisconnectCause;)Z

    .line 597
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V

    .line 598
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->clear()V

    .line 610
    :goto_0
    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->onHangupLocal()V

    .line 611
    return-void

    .line 601
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 602
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/movial/ipphone/IIPService;->reject(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangup connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    .line 607
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->clearConnections()V

    goto :goto_0

    .line 604
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-virtual {p1}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/movial/ipphone/IIPService;->hangup(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method hangupAll(Lcom/movial/ipphone/IPCall;)V
    .locals 4
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 614
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p1, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 616
    :try_start_0
    iget-object v2, p1, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/movial/ipphone/IPConnection;

    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IPCallTracker;->hangup(Lcom/movial/ipphone/IPConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hangupAll FAILED. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 620
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method hangupForegroundResumeBackground()V
    .locals 3

    .prologue
    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1}, Lcom/movial/ipphone/IIPService;->hangupForegroundResumeBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_0
    return-void

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupForegroundResumeBackground FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    .line 627
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->clearConnections()V

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    const-string v0, "IPCallTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 874
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 866
    return-void
.end method

.method public registerHandler()V
    .locals 3

    .prologue
    .line 172
    const-string v1, "registerHandler"

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhone;->getService()Lcom/movial/ipphone/IIPService;

    move-result-object v1

    iput-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    .line 175
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    iget-object v2, p0, Lcom/movial/ipphone/IPCallTracker;->mMsnger:Landroid/os/Messenger;

    invoke-interface {v1, v2}, Lcom/movial/ipphone/IIPService;->registerForCallStates(Landroid/os/Messenger;)V

    .line 176
    invoke-direct {p0}, Lcom/movial/ipphone/IPCallTracker;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method reject(Lcom/movial/ipphone/IPCall;)V
    .locals 5
    .parameter "call"

    .prologue
    .line 632
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    if-eq p1, v3, :cond_0

    .line 633
    const-string v3, "no ringing or waiting call to reject"

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    .line 635
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p1, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 636
    iget-object v3, p1, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPConnection;

    .line 638
    .local v0, conn:Lcom/movial/ipphone/IPConnection;
    :try_start_0
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/movial/ipphone/IIPService;->reject(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 639
    :catch_0
    move-exception v1

    .line 640
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject ringing or waiting call FAILED. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 643
    .end local v0           #conn:Lcom/movial/ipphone/IPConnection;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method rejectCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 497
    const-string v1, "reject call"

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/movial/ipphone/IIPService;->reject(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reject call FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 539
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 540
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/movial/ipphone/IPConnection;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v0

    .line 541
    .local v0, index:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0, v0, p1}, Lcom/movial/ipphone/IPCallTracker;->sendDtmf(IC)V

    .line 544
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method sendDtmf(IC)V
    .locals 3
    .parameter "index"
    .parameter "c"

    .prologue
    .line 563
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 565
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1, p1, p2}, Lcom/movial/ipphone/IIPService;->sendDtmf(IC)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 2
    .parameter "mute"

    .prologue
    .line 693
    iput-boolean p1, p0, Lcom/movial/ipphone/IPCallTracker;->desiredMute:Z

    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1, p1}, Lcom/movial/ipphone/IIPService;->setMute(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 547
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 548
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/movial/ipphone/IPConnection;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v0

    .line 549
    .local v0, index:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0, v0, p1}, Lcom/movial/ipphone/IPCallTracker;->startDtmf(IC)V

    .line 552
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method startDtmf(IC)V
    .locals 3
    .parameter "index"
    .parameter "c"

    .prologue
    .line 572
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 578
    :goto_0
    return-void

    .line 574
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1, p1, p2}, Lcom/movial/ipphone/IIPService;->startDtmf(IC)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stratDtmf FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method stopDtmf()V
    .locals 3

    .prologue
    .line 555
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 556
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/movial/ipphone/IPConnection;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPConnection;->getIndex()I

    move-result v0

    .line 557
    .local v0, index:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDtmf. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->stopDtmf(I)V

    .line 560
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method stopDtmf(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 581
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 587
    :goto_0
    return-void

    .line 583
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v1, p1}, Lcom/movial/ipphone/IIPService;->stopDtmf(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDtmf FAILED. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method switchWaitingOrHoldingAndActive(Z)I
    .locals 5
    .parameter "accept"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 650
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchWaitingOrHoldingAndActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", swapCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 651
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    .line 652
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot be in the incoming state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 653
    :cond_0
    iget-boolean v3, p0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    if-eqz v3, :cond_1

    .line 654
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "conference call is establishing"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    :cond_1
    :try_start_0
    iget v3, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I

    if-eq v3, v2, :cond_2

    move v1, v2

    .line 669
    :goto_0
    return v1

    .line 659
    :cond_2
    iget-object v3, p0, Lcom/movial/ipphone/IPCallTracker;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface {v3, p1}, Lcom/movial/ipphone/IIPService;->hold(Z)I

    move-result v1

    .line 660
    .local v1, result:I
    if-eqz p1, :cond_3

    move v3, v2

    :goto_1
    iput v3, p0, Lcom/movial/ipphone/IPCallTracker;->swapCall:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 665
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HoldCall FAILED. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPCallTracker;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 669
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #result:I
    :cond_3
    move v3, v1

    .line 660
    goto :goto_1
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/IPCallTracker;->switchWaitingOrHoldingAndActive(Z)I

    .line 647
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 878
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 870
    return-void
.end method
