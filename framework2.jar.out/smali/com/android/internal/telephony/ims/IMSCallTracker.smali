.class final Lcom/android/internal/telephony/ims/IMSCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "IMSCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = true

.field static final DIALING_TIMEOUT:I = 0xea60

.field static final DIALING_TIMER:I = 0x3ea

.field static final LOG_TAG:Ljava/lang/String; = "IMSCallTracker"

.field static final MAX_CONNECTIONS:I = 0x1

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x1

.field private static final REPEAT_POLLING:Z


# instance fields
.field backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

.field callWaitingRegistrants:Landroid/os/RegistrantList;

.field connections:[Lcom/android/internal/telephony/ims/IMSConnection;

.field desiredMute:Z

.field droppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ims/IMSConnection;",
            ">;"
        }
    .end annotation
.end field

.field foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

.field hangupPendingMO:Z

.field private mFailCause:I

.field private mIsEcmTimerCanceled:Z

.field mIsInEmergencyCall:Z

.field pendingCallClirMode:I

.field pendingCallInEcm:Z

.field pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

.field phone:Lcom/android/internal/telephony/ims/IMSPhone;

.field ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

.field state:Lcom/android/internal/telephony/Phone$State;

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 79
    new-array v0, v2, [Lcom/android/internal/telephony/ims/IMSConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 81
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 82
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 96
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingCallInEcm:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsInEmergencyCall:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    .line 103
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 105
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsEcmTimerCanceled:Z

    .line 106
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/ims/IMSPhone;)V
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 79
    new-array v0, v1, [Lcom/android/internal/telephony/ims/IMSConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 81
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 82
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 96
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingCallInEcm:Z

    .line 97
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsInEmergencyCall:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    .line 103
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 105
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsEcmTimerCanceled:Z

    .line 106
    iput v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    .line 115
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/ims/IMSInterface;

    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/ims/IMSInterface;->registerForIMSCallChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSInterface;->registerCallTrackerHandler(Landroid/os/Handler;)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 123
    iput v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    .line 124
    return-void
.end method

.method private addUniqueNumbersToConnection(Ljava/lang/String;)V
    .locals 6
    .parameter "numbers"

    .prologue
    .line 1138
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    const-string v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1141
    const-string v3, "IMSCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside addUserToConfCall  addUniqueNumbersToConnection(Entry) pendingMO.Address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";numbers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .local v1, listParticipants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    const-string v4, "\\$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1145
    .local v2, newParticipants:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    const-string v4, ""

    iput-object v4, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 1146
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 1147
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1148
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "$"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 1152
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v2, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 1146
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1156
    :cond_5
    const-string v3, "\\$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1157
    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 1158
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1159
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "$"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 1163
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v2, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 1157
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1166
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/ims/IMSConnection;->dialString:Ljava/lang/String;

    .line 1167
    const-string v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1168
    const-string v3, "IMSCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside addUserToConfCall  addUniqueNumbersToConnection(Exit) pendingMO.Address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; pendingMO.dialString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSConnection;->dialString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private canDial()Z
    .locals 5

    .prologue
    .line 1299
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1300
    .local v2, serviceState:I
    const-string v3, "ro.telephony.disable-call"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1303
    .local v0, disableCall:Ljava/lang/String;
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1311
    .local v1, ret:Z
    :goto_0
    return v1

    .line 1303
    .end local v1           #ret:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "dialString"

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1281
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 1284
    new-instance v0, Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1289
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1291
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 0
    .parameter "dialString"

    .prologue
    .line 1274
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 0

    .prologue
    .line 1351
    return-void
.end method

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 648
    new-instance v0, Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V

    .line 649
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 652
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;)V

    .line 653
    return-void
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsWhenSafe()V

    .line 668
    return-void
.end method

.method private hangupAllConnections(Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 7
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1473
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1474
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1475
    iget-object v4, p1, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1476
    .local v0, cn:Lcom/android/internal/telephony/ims/IMSConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSConnection;->getIMSIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1474
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1478
    .end local v0           #cn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 1479
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "IMSCallTracker"

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

    .line 1482
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method private hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 1487
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 1488
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1490
    return-void
.end method

.method private hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 1465
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 1466
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1467
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->clearDisconnected()V

    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->clearDisconnected()V

    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->clearDisconnected()V

    .line 996
    return-void
.end method

.method private isVoiceCallActive()Z
    .locals 3

    .prologue
    .line 1493
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1494
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_0

    .line 1496
    const-string v1, "IMSCallTracker"

    const-string v2, "Voice Call is Active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const/4 v1, 0x1

    .line 1499
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 660
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized obtainCompleteMessage(I)Landroid/os/Message;
    .locals 2
    .parameter "what"

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->needsPoll:Z

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainCompleteMessage: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainMessage(I)Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onNewIMSRingingCall(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 414
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    move-object v0, v1

    check-cast v0, Landroid/os/Message;

    .line 415
    .local v0, msg:Landroid/os/Message;
    return-void
.end method

.method private declared-synchronized operationComplete()V
    .locals 2

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationComplete: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 229
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->needsPoll:Z

    if-eqz v0, :cond_1

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 232
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    if-gez v0, :cond_0

    .line 234
    const-string v0, "IMSCallTracker"

    const-string v1, "IMSCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVTCallState(I)V
    .locals 7
    .parameter "intValue"

    .prologue
    .line 418
    const-string v4, "IMSCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setVTCallState() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 420
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 423
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 424
    .local v3, size:I
    const/16 v4, 0xb

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 425
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 426
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 427
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/ims/IMSPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 433
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 434
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 437
    :cond_1
    :goto_1
    return-void

    .line 428
    :catch_0
    move-exception v2

    .line 429
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 435
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private updateIMSCallFailCause(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 441
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    move-object v0, v2

    check-cast v0, Landroid/os/Message;

    .line 442
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    .line 443
    .local v1, presentCall:Lcom/android/internal/telephony/ims/IMSCall;
    const-string v2, "IMSCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  updateIMSCallFailCause"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void
.end method

.method private updateIMSPhoneState()V
    .locals 4

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 609
    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    const-string v1, "IMSCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  updateIMSPhoneState oldstate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 628
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_0

    .line 629
    const-string v1, "IMSCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  updateIMSPhoneState newstate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPhoneStateChanged()V

    .line 632
    :cond_0
    return-void

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_3

    .line 614
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 616
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 245
    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_5

    .line 255
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 262
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPhoneStateChanged()V

    .line 265
    :cond_1
    return-void

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 249
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 251
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 257
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method public acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 1011
    const-string v1, "phone"

    const-string v2, "acceptCall: incoming..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->setMute(Z)V

    .line 1014
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 1033
    :goto_0
    return-void

    .line 1015
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 1016
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/IMSConnection;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1017
    .local v0, cwConn:Lcom/android/internal/telephony/ims/IMSConnection;
    if-eqz v0, :cond_1

    .line 1022
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ims/IMSConnection;->updateParent(Lcom/android/internal/telephony/ims/IMSCall;Lcom/android/internal/telephony/ims/IMSCall;)V

    .line 1023
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSConnection;->onConnectedInOrOut()V

    .line 1024
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 1025
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 1027
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "No call in waiting..."

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1030
    .end local v0           #cwConn:Lcom/android/internal/telephony/ims/IMSConnection;
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method addUserToConfCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 5
    .parameter "dialString"

    .prologue
    const/4 v4, 0x0

    .line 1174
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    const-string v1, "IMSCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside addUserToConfCall() dialString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 1178
    :cond_1
    const-string v1, "IMSCallTracker"

    const-string v2, "inside addUserToConfCall  connection is NULL, so returning..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v1, 0x0

    .line 1196
    :goto_0
    return-object v1

    .line 1181
    :cond_2
    const-string v1, "IMSCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside addUserToConfCall  connections.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1183
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->addUniqueNumbersToConnection(Ljava/lang/String;)V

    .line 1185
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSConnection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1186
    .local v0, userDataObject:Ljava/lang/Object;
    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_3

    .line 1187
    const-string v1, "IMSCallTracker"

    const-string v2, "inside addUserToConfCall() : instanceof CallerInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1188
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1189
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->setUserData(Ljava/lang/Object;)V

    .line 1191
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/IMSCall;->detach(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 1192
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    aput-object v2, v1, v4

    .line 1193
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    aget-object v2, v2, v4

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/ims/IMSCall;->attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 1194
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->addUserToConfCall(Ljava/lang/String;)V

    .line 1195
    const-string v1, "IMSCallTracker"

    const-string v2, "inside addUserToConfCall() : Detched & attached the modified Connectoin obj"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 1038
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->internalClearDisconnected()V

    .line 1040
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 1043
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1047
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    const-string v0, "IMSCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside dial "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 7
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1057
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->canDial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1058
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "cannot dial in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1061
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->isVoiceCallActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1062
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "Voice Call is Already Active. IMS VT Call cannot be dialed in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1064
    :cond_1
    const-string v3, "IMSCallTracker"

    const-string v4, "[IMSCallTracker]: VT can be dial...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->clearDisconnected()V

    .line 1067
    const-string v3, "ril.cdma.inecmmode"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, inEcm:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1069
    .local v2, isPhoneInEcmMode:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 1080
    .local v1, isEmergencyCall:Z
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 1085
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    .line 1086
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 1124
    :goto_0
    return-object v3

    .line 1089
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v3, v4, p1, p0, v5}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1090
    iput-boolean v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 1092
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    .line 1095
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v4, v3, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1099
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsWhenSafe()V

    .line 1121
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 1122
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 1124
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    goto :goto_0

    .line 1102
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->setMute(Z)V

    .line 1105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 1108
    if-eqz v2, :cond_6

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 1109
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_1
.end method

.method dialConferenceCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1131
    const-string v0, "IMSCallTracker"

    const-string v1, "inside dialConferenceCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dialConferenceCall(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dialConferenceCall(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 7
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1203
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->canDial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1204
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "cannot dial in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1207
    :cond_0
    const-string v3, "IMSCallTracker"

    const-string v4, "[IMSCallTracker]: VT can be dial...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->clearDisconnected()V

    .line 1210
    const-string v3, "ril.cdma.inecmmode"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1211
    .local v0, inEcm:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1212
    .local v2, isPhoneInEcmMode:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 1223
    .local v1, isEmergencyCall:Z
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 1228
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 1229
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 1267
    :goto_0
    return-object v3

    .line 1232
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v3, v4, p1, p0, v5}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1233
    iput-boolean v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 1235
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 1238
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v4, v3, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1242
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsWhenSafe()V

    .line 1264
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 1265
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 1267
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    goto :goto_0

    .line 1245
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->setMute(Z)V

    .line 1248
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 1251
    if-eqz v2, :cond_5

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 1252
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->dialConferenceCall(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 130
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 131
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 132
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 133
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v5, Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/ims/IMSInterface;->unregisterForIMSCallChanged(Landroid/os/Handler;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/ims/IMSConnection;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 136
    .local v1, c:Lcom/android/internal/telephony/ims/IMSConnection;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "IMSCallTracker"

    const-string v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    .end local v1           #c:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->clearDisconnected()V

    .line 150
    return-void

    .line 144
    :catch_1
    move-exception v2

    .line 145
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "IMSCallTracker"

    const-string v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 269
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 270
    const-string v0, "IMSCallTracker"

    const-string v1, "IMSCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public getIMSCallFailCause()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1322
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 274
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  IMSCallTracker handle message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 406
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "unexpected event not handled"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 280
    :sswitch_0
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event EVENT_POLL_CALLS_RESULT Received...pendingOperations.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v6, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 284
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->needsPoll:Z

    .line 285
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 286
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 410
    :cond_0
    :goto_0
    :sswitch_1
    return-void

    .line 291
    :sswitch_2
    const-string v6, "IMSCallTracker"

    const-string v7, "Dialing timer fired."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_0

    .line 293
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 294
    .local v2, conn:Lcom/android/internal/telephony/ims/IMSConnection;
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v2, :cond_0

    .line 296
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_0

    .line 298
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hangup connection :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSConnection;->getIMSIndex()I

    move-result v7

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 301
    :catch_0
    move-exception v3

    .line 302
    .local v3, e:Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 311
    .end local v2           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v3           #e:Lcom/android/internal/telephony/CallStateException;
    :sswitch_3
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event EVENT_OPERATION_COMPLETE Received....pendingOperations.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..arg1.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 325
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 327
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->operationComplete()V

    .line 329
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 332
    const/16 v1, 0x10

    .line 333
    .local v1, causeCode:I
    const-string v6, "IMSCallTracker"

    const-string v7, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_1
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLastCallFailCause, normal disconnect sent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 341
    .local v5, s:I
    :goto_2
    if-ge v4, v5, :cond_2

    .line 343
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 345
    .restart local v2       #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->onRemoteDisconnect(I)V

    .line 341
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 336
    .end local v1           #causeCode:I
    .end local v2           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v4           #i:I
    .end local v5           #s:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getIMSCallFailCause()I

    move-result v1

    .restart local v1       #causeCode:I
    goto :goto_1

    .line 348
    .restart local v4       #i:I
    .restart local v5       #s:I
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updatePhoneState()V

    .line 350
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 351
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 362
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #causeCode:I
    .end local v4           #i:I
    .end local v5           #s:I
    :sswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSCallFailCause(Landroid/os/AsyncResult;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 367
    :sswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->onNewIMSRingingCall(Landroid/os/AsyncResult;)V

    .line 370
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->handleRadioAvailable()V

    goto/16 :goto_0

    .line 374
    :sswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_5
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_1
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x3ea -> :sswitch_2
    .end sparse-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 23
    .parameter "ar"

    .prologue
    .line 679
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 680
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/List;

    .line 692
    .local v17, polledCalls:Ljava/util/List;
    :goto_0
    const/16 v16, 0x0

    .line 693
    .local v16, newRinging:Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    .line 695
    .local v12, hasNonHangupStateChanged:Z
    const/4 v15, 0x0

    .line 696
    .local v15, needsPollDelay:Z
    const/16 v18, 0x0

    .line 697
    .local v18, unknownConnectionAppeared:Z
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Number of Connections:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 698
    if-eqz v17, :cond_1a

    .line 699
    const/4 v13, 0x0

    .local v13, i:I
    const/4 v8, 0x0

    .local v8, curDC:I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v10

    .line 700
    .local v10, dcSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_1a

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v6, v19, v13

    .line 702
    .local v6, conn:Lcom/android/internal/telephony/ims/IMSConnection;
    const/4 v9, 0x0

    .line 705
    .local v9, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v8, v10, :cond_0

    .line 706
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v9, Lcom/android/internal/telephony/DriverCall;

    .line 707
    .restart local v9       #dc:Lcom/android/internal/telephony/DriverCall;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " dc is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 708
    if-eqz v9, :cond_6

    .line 709
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "index is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "connectionIndex is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->connectionIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " dc is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 710
    add-int/lit8 v8, v8, 0x1

    .line 717
    :cond_0
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "poll: conn[i="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", dc="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 719
    if-eqz v9, :cond_1

    .line 721
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DC index is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->connectionIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 723
    :cond_1
    if-eqz v6, :cond_2

    .line 725
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Connection index is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->connectionIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 727
    :cond_2
    if-nez v6, :cond_d

    if-eqz v9, :cond_d

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ims/IMSConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 731
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "poll: pendingMO="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v20, v0

    aput-object v20, v19, v13

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->connectionIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/ims/IMSConnection;->connectionIndex:I

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ims/IMSConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 738
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 741
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 742
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 751
    :try_start_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    .end local v6           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v8           #curDC:I
    .end local v9           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v10           #dcSize:I
    .end local v12           #hasNonHangupStateChanged:Z
    .end local v13           #i:I
    .end local v15           #needsPollDelay:Z
    .end local v16           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v17           #polledCalls:Ljava/util/List;
    .end local v18           #unknownConnectionAppeared:Z
    :cond_3
    :goto_3
    return-void

    .line 681
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 684
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .restart local v17       #polledCalls:Ljava/util/List;
    goto/16 :goto_0

    .line 688
    .end local v17           #polledCalls:Ljava/util/List;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsAfterDelay()V

    goto :goto_3

    .line 713
    .restart local v6       #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .restart local v8       #curDC:I
    .restart local v9       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v10       #dcSize:I
    .restart local v12       #hasNonHangupStateChanged:Z
    .restart local v13       #i:I
    .restart local v15       #needsPollDelay:Z
    .restart local v16       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v17       #polledCalls:Ljava/util/List;
    .restart local v18       #unknownConnectionAppeared:Z
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 754
    :catch_0
    move-exception v11

    .line 755
    .local v11, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v19, "IMSCallTracker"

    const-string v20, "unexpected error on hangup"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 763
    .end local v11           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v9, v2, v13}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/ims/IMSCallTracker;I)V

    aput-object v20, v19, v13

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ims/IMSConnection;->getCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 767
    const-string v19, "IMSCallTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PHone State on Incoming Call : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 774
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->rejectCallAsBusy()V

    .line 775
    const-string v19, "IMSCallTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Incoming Call .... Rejecting: PendingMo"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ims/IMSConnection;->onLocalDisconnect()V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 780
    :catch_1
    move-exception v11

    .line 781
    .restart local v11       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v19, "IMSCallTracker"

    const-string v20, "unexpected error on hangup"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 786
    .end local v11           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v16, v19, v13

    .line 806
    :cond_9
    :goto_4
    const/4 v12, 0x1

    .line 700
    :cond_a
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 793
    :cond_b
    const-string v19, "IMSCallTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Phantom call appeared "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, v9, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_c

    iget-object v0, v9, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/internal/telephony/ims/IMSConnection;->connectTime:J

    .line 803
    :cond_c
    const/16 v18, 0x1

    goto :goto_4

    .line 807
    :cond_d
    if-eqz v6, :cond_12

    if-nez v9, :cond_12

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 809
    .local v7, count:I
    if-nez v7, :cond_10

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getIMSCallFailCause()I

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 814
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 815
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "1. Disconnect cause  Set to : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 817
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v20, v19, v13

    goto/16 :goto_5

    .line 821
    :cond_10
    const/4 v14, 0x0

    .local v14, n:I
    :goto_6
    if-ge v14, v7, :cond_f

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 823
    .local v5, cn:Lcom/android/internal/telephony/ims/IMSConnection;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getIMSCallFailCause()I

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 825
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 826
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "2. Disconnect cause  Set to : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v5, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 828
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 844
    .end local v5           #cn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v7           #count:I
    .end local v14           #n:I
    :cond_12
    if-eqz v6, :cond_a

    if-eqz v9, :cond_a

    .line 845
    iget v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->connectionIndex:I

    move/from16 v19, v0

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->connectionIndex:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    .line 846
    const-string v19, "IMSCallTracker"

    const-string v20, "This is an error scenario..first dc is updated and then only connection.Such scenario implies improper dc and connection comparison"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 848
    .restart local v7       #count:I
    if-nez v7, :cond_15

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getIMSCallFailCause()I

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 853
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 854
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "1. Disconnect cause  Set to : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 856
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v20, v19, v13

    goto/16 :goto_5

    .line 862
    :cond_15
    const/4 v14, 0x0

    .restart local v14       #n:I
    :goto_7
    if-ge v14, v7, :cond_14

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 864
    .restart local v5       #cn:Lcom/android/internal/telephony/ims/IMSConnection;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getIMSCallFailCause()I

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 866
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 867
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "2. Disconnect cause  Set to : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v5, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 869
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 877
    .end local v5           #cn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v7           #count:I
    .end local v14           #n:I
    :cond_17
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/ims/IMSConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v4

    .line 878
    .local v4, changed:Z
    if-nez v12, :cond_18

    if-eqz v4, :cond_19

    :cond_18
    const/4 v12, 0x1

    :goto_8
    goto/16 :goto_5

    :cond_19
    const/4 v12, 0x0

    goto :goto_8

    .line 906
    .end local v4           #changed:Z
    .end local v6           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v8           #curDC:I
    .end local v9           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v10           #dcSize:I
    .end local v13           #i:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 907
    const-string v19, "IMSCallTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 912
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 913
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingCallInEcm:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 914
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingCallInEcm:Z

    .line 917
    :cond_1b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "newringing is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 918
    if-eqz v16, :cond_1c

    .line 920
    const-string v19, "notifying the app about new call"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyNewIMSCall(Lcom/android/internal/telephony/Connection;)V

    .line 927
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    .restart local v13       #i:I
    :goto_9
    if-ltz v13, :cond_21

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 929
    .restart local v6       #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 930
    .local v3, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Inside DroppedCall Poll List...................cause : ........................."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 931
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Inside DroppedCall Poll List...................conn.isIncoming() :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "conn.getConnectTime() :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSConnection;->getConnectTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming()Z

    move-result v19

    if-eqz v19, :cond_1f

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSConnection;->getConnectTime()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_1f

    .line 936
    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 937
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 943
    :goto_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "missed/rejected call, conn.cause="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 944
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setting cause to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 947
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/ims/IMSConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 927
    :cond_1d
    :goto_b
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_9

    .line 939
    :cond_1e
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_a

    .line 948
    :cond_1f
    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_20

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 951
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_b

    .line 952
    :cond_20
    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1d

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 954
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_b

    .line 959
    .end local v3           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v6           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_22

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 964
    :cond_22
    if-eqz v15, :cond_23

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsAfterDelay()V

    .line 973
    :cond_23
    if-nez v16, :cond_24

    if-eqz v12, :cond_25

    .line 974
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->internalClearDisconnected()V

    .line 977
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updatePhoneState()V

    .line 979
    if-eqz v18, :cond_26

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyUnknownConnection()V

    .line 983
    :cond_26
    if-nez v12, :cond_27

    if-eqz v16, :cond_3

    .line 984
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_3
.end method

.method public hangup(Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 0
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1448
    return-void
.end method

.method hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V
    .locals 3
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 156
    iget-object v0, p1, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    if-eq v0, p0, :cond_0

    .line 157
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMSConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to IMSCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-ne p1, v0, :cond_1

    .line 165
    const-string v0, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 166
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 191
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->onHangupLocal()V

    .line 194
    :goto_1
    return-void

    .line 170
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->getCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 183
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->onLocalDisconnect()V

    .line 184
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->getIMSIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public hangupDueToLowBattery(Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 1
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1451
    const-string v0, "(ringing) hangupDueToLowBattery waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 1463
    return-void
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1317
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1004
    const-string v0, "IMSCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1508
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1503
    return-void
.end method

.method public rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 1364
    return-void

    .line 1361
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rejectCallAsBusy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1376
    return-void
.end method

.method public separate(Lcom/android/internal/telephony/ims/IMSConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1381
    iget-object v1, p1, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    if-eq v1, p0, :cond_0

    .line 1382
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSConnection "

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

    .line 1386
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->getIMSIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    :goto_0
    return-void

    .line 1388
    :catch_0
    move-exception v0

    .line 1391
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "IMSCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 3
    .parameter "mute"

    .prologue
    .line 1327
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    .line 1328
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 1329
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 1335
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1337
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->flashAndSetGenericTrue()V

    .line 1346
    :cond_1
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1510
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1505
    return-void
.end method

.method public updateIMSCallState(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    .line 565
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    .line 566
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 567
    .local v1, newState:Lcom/android/internal/telephony/Call$State;
    const/4 v2, 0x0

    .line 568
    .local v2, presentCall:Lcom/android/internal/telephony/ims/IMSCall;
    const-string v3, "IMSCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  updateIMSCallState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-eqz v3, :cond_0

    .line 597
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSConnection;->getCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v2

    .line 598
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 599
    const-string v3, "IMSCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  updateIMSCallState : newstate is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/ims/IMSCall;->attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 603
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 604
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-eq v3, v1, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_1

    .line 605
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 606
    :cond_1
    return-void
.end method
