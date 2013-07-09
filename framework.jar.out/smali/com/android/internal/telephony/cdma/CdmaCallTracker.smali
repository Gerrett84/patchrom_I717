.class public final Lcom/android/internal/telephony/cdma/CdmaCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "CdmaCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final MAX_CONNECTIONS:I = 0x2

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x1

.field private static final REPEAT_POLLING:Z = false

.field static final SC_GLOBALDEV_CF_CON:Ljava/lang/String; = "*71"

.field static final SC_GLOBALDEV_CF_DEAC:Ljava/lang/String; = "*73"

.field static final SC_GLOBALDEV_CF_UNCON:Ljava/lang/String; = "*72"


# instance fields
.field backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field callWaitingRegistrants:Landroid/os/RegistrantList;

.field connWaitActive:[Ljava/lang/Boolean;

.field connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

.field desiredMute:Z

.field droppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaConnection;",
            ">;"
        }
    .end annotation
.end field

.field foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field hangupPendingMO:Z

.field private mIsEcmTimerCanceled:Z

.field mIsInEmergencyCall:Z

.field pendingCallClirMode:I

.field pendingCallInEcm:Z

.field pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

.field phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field state:Lcom/android/internal/telephony/Phone$State;

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 84
    new-array v1, v4, [Lcom/android/internal/telephony/cdma/CdmaConnection;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 87
    new-array v1, v4, [Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    .line 90
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 91
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 92
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 99
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 101
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 102
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 106
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    .line 113
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 115
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    .line 125
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 126
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xf

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method private checkAndEnableDataCallAfterEmergencyCallDropped()V
    .locals 3

    .prologue
    .line 1377
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz v1, :cond_0

    .line 1382
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    .line 1383
    const-string/jumbo v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1385
    .local v0, inEcm:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndEnableDataCallAfterEmergencyCallDropped,inEcm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1387
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1389
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setInternalDataEnabled(Z)Z

    .line 1392
    .end local v0           #inEcm:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;
    .locals 4
    .parameter "dc"
    .parameter "i"

    .prologue
    .line 1400
    const/4 v0, 0x0

    .line 1402
    .local v0, newRinging:Lcom/android/internal/telephony/Connection;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0, p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V

    aput-object v2, v1, p2

    .line 1404
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne v1, v2, :cond_1

    .line 1405
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v0, v1, p2

    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify new ring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1420
    :cond_0
    :goto_0
    return-object v0

    .line 1411
    :cond_1
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phantom call appeared "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_0

    .line 1417
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTime:J

    goto :goto_0
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "dialString"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 335
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 347
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 2
    .parameter "dialString"

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    const-string v0, "disableDataCallInEmergencyCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setInternalDataEnabled(Z)Z

    .line 1370
    :cond_0
    return-void
.end method

.method private dumpConnection(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 3
    .parameter "con"

    .prologue
    .line 576
    if-eqz p1, :cond_0

    .line 577
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[conn] number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " incoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " alive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ringing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isRinging()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    return-void
.end method

.method private dumpDC(Lcom/android/internal/telephony/DriverCall;)V
    .locals 3
    .parameter "dc"

    .prologue
    .line 584
    if-eqz p1, :cond_0

    .line 585
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ dc ] number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " incoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    return-void
.end method

.method private dumpState(Ljava/util/List;)V
    .locals 7
    .parameter "dcalls"

    .prologue
    .line 590
    const-string v4, "CDMA"

    const-string v5, "Connections:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 592
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v4, v4, v2

    if-nez v4, :cond_0

    .line 593
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": NULL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    :cond_0
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v4, v4, v2

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dumpConnection(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    goto :goto_1

    .line 599
    :cond_1
    if-eqz p1, :cond_2

    .line 600
    const-string v4, "CDMA"

    const-string v5, "Driver Calls:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, dcall:Ljava/lang/Object;
    move-object v0, v1

    .line 602
    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    .line 603
    .local v0, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dumpDC(Lcom/android/internal/telephony/DriverCall;)V

    goto :goto_2

    .line 606
    .end local v0           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v1           #dcall:Ljava/lang/Object;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 218
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 220
    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 221
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 223
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->fakeHoldBeforeDial()V

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v0           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 1143
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 1144
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 1145
    return-void
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .parameter "what"

    .prologue
    .line 1148
    packed-switch p1, :pswitch_data_0

    .line 1158
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    .line 1150
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1152
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1154
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1156
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1148
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .parameter "cw"

    .prologue
    const/4 v1, 0x1

    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 1187
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 1188
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1191
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1192
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 3
    .parameter "action"

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 1348
    packed-switch p1, :pswitch_data_0

    .line 1352
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEcmTimer, unsupported action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :goto_0
    return-void

    .line 1349
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

    .line 1350
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

    .line 1348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    .line 1166
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 497
    return-void
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 1169
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1172
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    .line 514
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private operationComplete()V
    .locals 2

    .prologue
    .line 526
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 531
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    if-eqz v0, :cond_1

    .line 532
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-gez v0, :cond_0

    .line 536
    const-string v0, "CDMA"

    const-string v1, "CdmaCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    goto :goto_0
.end method

.method private updatePhoneState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 545
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 547
    .local v1, oldState:Lcom/android/internal/telephony/Phone$State;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 556
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_5

    .line 557
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VOICE_CALL_ENDED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 568
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update phone state, old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 570
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v1, :cond_1

    .line 571
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPhoneStateChanged()V

    .line 573
    :cond_1
    return-void

    .line 549
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v2

    if-nez v2, :cond_4

    .line 551
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 553
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 561
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v4, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 564
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VOICE_CALL_STARTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 352
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 353
    const-string/jumbo v2, "phone"

    const-string v3, "acceptCall: incoming..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    .line 356
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 381
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    .line 358
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 360
    .local v0, cwConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 362
    .local v1, origConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_1

    .line 363
    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    .line 364
    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    .line 365
    iput-boolean v4, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    .line 366
    iput-boolean v5, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    .line 374
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 375
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 376
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 377
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 379
    .end local v0           #cwConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v1           #origConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v3, "phone not ringing"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method canConference()Z
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDial()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 451
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 452
    .local v2, serviceState:I
    const-string/jumbo v3, "ro.telephony.disable-call"

    const-string v6, "false"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, disableCall:Ljava/lang/String;
    if-eq v2, v9, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v4

    .line 463
    .local v1, ret:Z
    :goto_0
    if-nez v1, :cond_1

    .line 464
    const-string v6, "canDial is false\n((serviceState=%d) != ServiceState.STATE_POWER_OFF)::=%s\n&& pendingMO == null::=%s\n&& !ringingCall.isRinging()::=%s\n&& !disableCall.equals(\"true\")::=%s\n&& (!foregroundCall.getState().isAlive()::=%s\n   || foregroundCall.getState() == CdmaCall.State.ACTIVE::=%s\n   ||!backgroundCall.getState().isAlive())::=%s)"

    const/16 v3, 0x8

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    if-eq v2, v9, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v8, 0x2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v3, :cond_4

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v9

    const/4 v8, 0x4

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v8, 0x5

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v8, 0x6

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v9, :cond_8

    move v3, v4

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v8

    if-nez v8, :cond_9

    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 481
    :cond_1
    return v1

    .end local v1           #ret:Z
    :cond_2
    move v1, v5

    .line 455
    goto/16 :goto_0

    .restart local v1       #ret:Z
    :cond_3
    move v3, v5

    .line 464
    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move v3, v5

    goto :goto_4

    :cond_7
    move v3, v5

    goto :goto_5

    :cond_8
    move v3, v5

    goto :goto_6

    :cond_9
    move v4, v5

    goto :goto_7
.end method

.method canTransfer()Z
    .locals 2

    .prologue
    .line 486
    const-string v0, "CDMA"

    const-string v1, "canTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    .line 436
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 438
    return-void
.end method

.method conference()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->flashAndSetGenericTrue()V

    .line 425
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 8
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->canDial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "cannot dial in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    :cond_0
    const-string/jumbo v3, "ril.cdma.inecmmode"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, inEcm:Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 241
    .local v2, isPhoneInEcmMode:Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    .line 245
    .local v1, isEmergencyCall:Z
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 246
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    .line 252
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 257
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    .line 258
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 319
    :goto_0
    return-object v3

    .line 273
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v3, v4, p1, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 274
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 276
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 279
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    .line 316
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 317
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 319
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto :goto_0

    .line 286
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    .line 289
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 292
    if-eqz v2, :cond_5

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 306
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    .line 309
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->exitEmergencyCallbackMode()V

    .line 310
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 311
    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallClirMode:I

    .line 312
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    goto :goto_1
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 142
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 143
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 144
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 145
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallWaitingInfo(Landroid/os/Handler;)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/cdma/CdmaConnection;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 148
    .local v1, c:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_0

    .line 149
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 152
    const-string v5, "CDMA"

    const-string v6, "Posting connection disconnect due to LOST_SIGNAL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "CDMA"

    const-string/jumbo v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    .end local v1           #c:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v5, :cond_2

    .line 162
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 163
    const-string v5, "CDMA"

    const-string v6, "Posting disconnect to pendingMO due to LOST_SIGNAL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    .line 172
    return-void

    .line 166
    :catch_1
    move-exception v2

    .line 167
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "CDMA"

    const-string/jumbo v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1439
    const-string v1, "GsmCallTracker extends:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "droppedDuringPoll: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1443
    const-string v1, " connections[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, v0

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1445
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " voiceCallEndedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " voiceCallStartedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " callWaitingRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "droppedDuringPoll: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1450
    const-string v1, " droppedDuringPoll[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1452
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ringingCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " foregroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " backgroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hangupPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pendingCallInEcm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsInEmergencyCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " phone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " desiredMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pendingCallClirMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallClirMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsEcmTimerCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    return-void
.end method

.method explicitCallTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 430
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "CDMA"

    const-string v1, "CdmaCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/cdma/CdmaCall;I)Lcom/android/internal/telephony/cdma/CdmaConnection;
    .locals 4
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1126
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1127
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1128
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1129
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1134
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :goto_1
    return-object v0

    .line 1127
    .restart local v0       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1134
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_1

    .line 1200
    const-string v0, "CDMA"

    const-string v1, "Ignoring events received on inactive CdmaPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1203
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1338
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unexpected event not handled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1205
    :pswitch_2
    const-string v0, "CDMA"

    const-string v1, "Event EVENT_POLL_CALLS_RESULT Received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1208
    .local v8, ar:Landroid/os/AsyncResult;
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    if-ne p1, v0, :cond_0

    .line 1211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 1212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 1213
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1219
    .end local v8           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    goto :goto_0

    .line 1230
    :pswitch_4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1232
    .restart local v8       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    .line 1234
    const/4 v12, 0x0

    .line 1236
    .local v12, isDroppedCall:Z
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 1239
    const/16 v9, 0x10

    .line 1240
    .local v9, causeCode:I
    const-string v0, "CDMA"

    const-string v1, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const-string v0, "CDMA"

    const-string v1, "EVENT_GET_LAST_CALL_FAIL_CAUSE - SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 1260
    :goto_1
    const/4 v11, 0x0

    .local v11, i:I
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1261
    .local v13, s:I
    :goto_2
    if-ge v11, v13, :cond_6

    .line 1263
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1266
    .local v10, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v12, :cond_4

    .line 1267
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_GET_LAST_CALL_FAIL_CAUSE - CALL_DROP - causeCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const-string v1, "dropped"

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCreateTime()J

    move-result-wide v3

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v5

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 1287
    :cond_2
    :goto_3
    invoke-virtual {v10, v9}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onRemoteDisconnect(I)V

    .line 1261
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1254
    .end local v9           #causeCode:I
    .end local v10           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v11           #i:I
    .end local v13           #s:I
    :cond_3
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v9, v0, v1

    .line 1256
    .restart local v9       #causeCode:I
    const/4 v12, 0x1

    goto :goto_1

    .line 1270
    .restart local v10       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .restart local v11       #i:I
    .restart local v13       #s:I
    :cond_4
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_GET_LAST_CALL_FAIL_CAUSE - SUCCESS - causeCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getConnectTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1273
    iget-object v0, v10, Lcom/android/internal/telephony/cdma/CdmaConnection;->dialString:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1275
    const-string/jumbo v1, "success"

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCreateTime()J

    move-result-wide v3

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v5

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 1279
    const-string v0, "CDMA"

    const-string v1, "isEmergencyCall false 02!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1281
    :cond_5
    const-string v0, "CDMA"

    const-string v1, "conn.getConnectTime() != 0 -> isEmergencyCall true 02!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1290
    .end local v10           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 1293
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1298
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v9           #causeCode:I
    .end local v11           #i:I
    .end local v12           #isDroppedCall:Z
    .end local v13           #s:I
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 1302
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioAvailable()V

    goto/16 :goto_0

    .line 1306
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1311
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    if-eqz v0, :cond_7

    .line 1312
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallClirMode:I

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 1315
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 1319
    :pswitch_9
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1320
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1321
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1322
    const-string v0, "CDMA"

    const-string v1, "Event EVENT_CALL_WAITING_INFO_CDMA Received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1327
    .end local v8           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1328
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 1331
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto/16 :goto_0

    .line 1203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 28
    .parameter "ar"

    .prologue
    .line 612
    const-string v3, "CDMA"

    const-string v4, ">handlePollCalls"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 614
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/util/List;

    .line 626
    .local v25, polledCalls:Ljava/util/List;
    :goto_0
    const/16 v24, 0x0

    .line 627
    .local v24, newRinging:Lcom/android/internal/telephony/Connection;
    const/16 v20, 0x0

    .line 629
    .local v20, hasNonHangupStateChanged:Z
    const/16 v23, 0x0

    .line 630
    .local v23, needsPollDelay:Z
    const/16 v27, 0x0

    .line 632
    .local v27, unknownConnectionAppeared:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dumpState(Ljava/util/List;)V

    .line 633
    const/16 v21, 0x0

    .local v21, i:I
    const/16 v16, 0x0

    .local v16, curDC:I
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v18

    .line 634
    .local v18, dcSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    array-length v3, v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_1b

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v14, v3, v21

    .line 636
    .local v14, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    const/16 v17, 0x0

    .line 639
    .local v17, dc:Lcom/android/internal/telephony/DriverCall;
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 640
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v17, Lcom/android/internal/telephony/DriverCall;

    .line 642
    .restart local v17       #dc:Lcom/android/internal/telephony/DriverCall;
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v4, v21, 0x1

    if-ne v3, v4, :cond_5

    .line 643
    add-int/lit8 v16, v16, 0x1

    .line 653
    :cond_0
    :goto_2
    if-eqz v14, :cond_1

    if-eqz v17, :cond_1

    iget-object v3, v14, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 660
    const-string v3, "CDMA"

    const-string v4, "New call with same index. Dropping old call"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    const/4 v14, 0x0

    .line 666
    :cond_1
    if-nez v14, :cond_a

    if-eqz v17, :cond_a

    .line 667
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conn("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    aput-object v4, v3, v21

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move/from16 v0, v21

    iput v0, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 677
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 680
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    if-eqz v3, :cond_8

    .line 681
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 683
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v3, :cond_2

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    .line 688
    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "poll: hangupPendingMO, hangup conn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, v21

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    .end local v14           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v16           #curDC:I
    .end local v17           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v18           #dcSize:I
    .end local v20           #hasNonHangupStateChanged:Z
    .end local v21           #i:I
    .end local v23           #needsPollDelay:Z
    .end local v24           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v25           #polledCalls:Ljava/util/List;
    .end local v27           #unknownConnectionAppeared:Z
    :goto_3
    return-void

    .line 615
    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 618
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .restart local v25       #polledCalls:Ljava/util/List;
    goto/16 :goto_0

    .line 622
    .end local v25           #polledCalls:Ljava/util/List;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    goto :goto_3

    .line 645
    .restart local v14       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .restart local v16       #curDC:I
    .restart local v17       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v18       #dcSize:I
    .restart local v20       #hasNonHangupStateChanged:Z
    .restart local v21       #i:I
    .restart local v23       #needsPollDelay:Z
    .restart local v24       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v25       #polledCalls:Ljava/util/List;
    .restart local v27       #unknownConnectionAppeared:Z
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 691
    :catch_0
    move-exception v19

    .line 692
    .local v19, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "CDMA"

    const-string/jumbo v4, "unexpected error on hangup"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 701
    .end local v19           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pendingMo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v24

    .line 705
    if-nez v24, :cond_7

    .line 706
    const/16 v27, 0x1

    .line 708
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 710
    :cond_8
    const/16 v20, 0x1

    .line 807
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, v21

    if-nez v3, :cond_15

    .line 808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v21

    .line 634
    :goto_5
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 711
    :cond_a
    if-eqz v14, :cond_f

    if-nez v17, :cond_f

    .line 712
    if-eqz v18, :cond_c

    .line 716
    const-string v3, "CDMA"

    const-string v4, "conn != null, dc == null. Still have connections in the call list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    if-eqz v3, :cond_b

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    .line 748
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    const/4 v4, 0x0

    aput-object v4, v3, v21

    goto :goto_4

    .line 723
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 724
    .local v15, count:I
    const/16 v22, 0x0

    .local v22, n:I
    :goto_7
    move/from16 v0, v22

    if-ge v0, v15, :cond_d

    .line 726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding fgCall cn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to droppedDuringPoll"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 728
    .local v13, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 730
    .end local v13           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 733
    const/16 v22, 0x0

    :goto_8
    move/from16 v0, v22

    if-ge v0, v15, :cond_e

    .line 735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding rgCall cn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to droppedDuringPoll"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 737
    .restart local v13       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 739
    .end local v13           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    goto/16 :goto_6

    .line 753
    .end local v15           #count:I
    .end local v22           #n:I
    :cond_f
    if-eqz v14, :cond_9

    if-eqz v17, :cond_9

    .line 754
    iget-boolean v3, v14, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eq v3, v4, :cond_12

    .line 756
    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v24

    .line 761
    if-nez v24, :cond_10

    .line 762
    const/16 v27, 0x1

    .line 764
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    goto/16 :goto_4

    .line 770
    :cond_11
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in RIL, Phantom call appeared "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 773
    :cond_12
    const/4 v12, 0x0

    .line 781
    .local v12, changed:Z
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v12

    .line 783
    if-nez v20, :cond_13

    if-eqz v12, :cond_14

    :cond_13
    const/16 v20, 0x1

    :goto_9
    goto/16 :goto_4

    :cond_14
    const/16 v20, 0x0

    goto :goto_9

    .line 811
    .end local v12           #changed:Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, v21

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v26

    .line 813
    .local v26, state:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v26

    if-eq v0, v3, :cond_16

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v26

    if-eq v0, v3, :cond_16

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v26

    if-eq v0, v3, :cond_16

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v26

    if-ne v0, v3, :cond_18

    .line 815
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, v21

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->dialString:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 816
    const-string v3, "CDMACallTracker"

    const-string v4, "Emergency call"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v21

    goto/16 :goto_5

    .line 819
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v21

    goto/16 :goto_5

    .line 821
    :cond_18
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v26

    if-ne v0, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    aget-object v3, v3, v21

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 822
    const-string v4, "CDMACallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD CALL "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, v21

    iget-boolean v3, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    if-eqz v3, :cond_19

    const-string v3, "INCOMING"

    :goto_a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, v21

    iget-boolean v3, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->addNumberOfCalls(Z)V

    .line 825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v21

    goto/16 :goto_5

    .line 822
    :cond_19
    const-string v3, "OUTGOING"

    goto :goto_a

    .line 827
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v21

    goto/16 :goto_5

    .line 837
    .end local v14           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v17           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v26           #state:Lcom/android/internal/telephony/Call$State;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v3, :cond_1c

    .line 838
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending MO dropped before poll fg state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 843
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 844
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    if-eqz v3, :cond_1c

    .line 845
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 849
    :cond_1c
    if-eqz v24, :cond_1d

    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 888
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v21, v3, -0x1

    :goto_b
    if-ltz v21, :cond_23

    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 891
    .restart local v14       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getConnectTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 894
    iget-object v3, v14, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_1f

    .line 895
    sget-object v11, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 897
    .local v11, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    const-string/jumbo v4, "success"

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCreateTime()J

    move-result-wide v6

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v8

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v10

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 907
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missed/rejected call, conn.cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting cause to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 911
    invoke-virtual {v14, v11}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 888
    .end local v11           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_1e
    :goto_d
    add-int/lit8 v21, v21, -0x1

    goto :goto_b

    .line 900
    :cond_1f
    sget-object v11, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 902
    .restart local v11       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    const-string v4, "missed"

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCreateTime()J

    move-result-wide v6

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v8

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v10

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    goto :goto_c

    .line 912
    .end local v11           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_20
    iget-object v3, v14, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_22

    .line 917
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getConnectTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_21

    .line 918
    iget-object v3, v14, Lcom/android/internal/telephony/cdma/CdmaConnection;->dialString:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 923
    const-string/jumbo v4, "success"

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCreateTime()J

    move-result-wide v6

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v8

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v10

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 927
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 928
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v14, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_d

    .line 929
    :cond_22
    iget-object v3, v14, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v3, v4, :cond_1e

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 931
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v14, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 933
    const-string/jumbo v4, "success"

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCreateTime()J

    move-result-wide v6

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getDurationMillis()J

    move-result-wide v8

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v10

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    goto/16 :goto_d

    .line 939
    .end local v14           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_24

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 944
    :cond_24
    if-eqz v23, :cond_25

    .line 945
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    .line 953
    :cond_25
    if-nez v24, :cond_26

    if-eqz v20, :cond_27

    .line 954
    :cond_26
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    .line 957
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 959
    if-eqz v27, :cond_28

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyUnknownConnection()V

    .line 963
    :cond_28
    if-nez v20, :cond_29

    if-eqz v24, :cond_2a

    .line 964
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 966
    :cond_2a
    const-string v3, "CDMA"

    const-string v4, "<handlePollCalls"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method hangup(Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 3
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1051
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_1

    .line 1056
    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1081
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->onHangupLocal()V

    .line 1082
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 1083
    return-void

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_3

    .line 1059
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1061
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    goto :goto_0

    .line 1065
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    .line 1067
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_5

    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1070
    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/cdma/CdmaCall;)V

    goto :goto_0

    .line 1074
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0

    .line 1077
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to CdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 974
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eq v1, p0, :cond_0

    .line 975
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to CdmaCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 979
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-ne p1, v1, :cond_1

    .line 983
    const-string v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 984
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 1013
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    .line 1014
    :goto_1
    return-void

    .line 985
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 998
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onLocalDisconnect()V

    .line 999
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1000
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_1

    .line 1004
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1005
    :catch_0
    move-exception v0

    .line 1008
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 7
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1113
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1114
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1115
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1116
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1118
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 1119
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/cdma/CdmaCall;I)V
    .locals 5
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1099
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1100
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1101
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1102
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1103
    iget-object v3, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1104
    return-void

    .line 1100
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1108
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "no gsm index found"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 1093
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1095
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 1087
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1089
    return-void
.end method

.method isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1430
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1434
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 204
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 205
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 206
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 195
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 197
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 183
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 184
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 186
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_0

    .line 187
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 189
    :cond_0
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 392
    return-void

    .line 390
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method separate(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1018
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eq v1, p0, :cond_0

    .line 1019
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to CdmaCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1023
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    :goto_0
    return-void

    .line 1025
    :catch_0
    move-exception v0

    .line 1028
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 3
    .parameter "mute"

    .prologue
    .line 1037
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    .line 1038
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 1039
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 397
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 398
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot be in the incoming state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 401
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->getCdmaCwActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 402
    .local v0, actConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->getCdmaCwHoldingConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 404
    .local v1, holdConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 405
    iput-boolean v4, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    .line 406
    iput-boolean v5, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    .line 407
    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwActive:Z

    .line 408
    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isCwHolding:Z

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->flashAndSetGenericTrue()V

    .line 419
    .end local v0           #actConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v1           #holdConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :goto_0
    return-void

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, ""

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 210
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 201
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 192
    return-void
.end method
