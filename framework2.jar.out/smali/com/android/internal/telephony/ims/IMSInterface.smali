.class public final Lcom/android/internal/telephony/ims/IMSInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "IMSInterface.java"


# static fields
.field private static CallIndex:I = 0x0

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_END_CALL_SIMULATE:I = 0x13

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_IMS_CALL_STATE_CHANGE:I = 0x11

.field protected static final EVENT_IMS_NEW_RINGING_CALL:I = 0x12

.field protected static final EVENT_IMS_NOT_ON:I = 0x14

.field protected static final EVENT_IMS_NOT_REGISTERED:I = 0x15

.field protected static final EVENT_ISIM_AUTHENTICATION_DONE:I = 0x191

.field protected static final EVENT_ISIM_AUTHENTICATION_DONE_MEDIASHARE:I = 0x192

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field private static final IMS_EVENT_CALL_ACTIVE:I = 0x3

.field private static final IMS_EVENT_CALL_ALERT:I = 0x2

.field private static final IMS_EVENT_CALL_DIAL:I = 0x1

.field private static final IMS_EVENT_CALL_DISCONNECT:I = 0x7

.field private static final IMS_EVENT_CALL_HOLD:I = 0x4

.field private static final IMS_EVENT_CALL_IDLE:I = 0x0

.field private static final IMS_EVENT_CALL_INCOMING:I = 0x5

.field private static final IMS_EVENT_CALL_WAITING:I = 0x6

.field private static final IMS_GET_CURRENT_CALLS:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "IMSPhone/IMSInterface"

.field private static bImsRegisterDone:Z

.field private static iEnablerIndex:I

.field private static mVTHandler:Landroid/os/Handler;


# instance fields
.field private final COMMAND_ISIM_AUTH:I

.field ImsCallIDList:Ljava/util/List;

.field ImsCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;"
        }
    .end annotation
.end field

.field private MAXCOUNT:I

.field private callid:I

.field private count:I

.field private isVideoCall:Z

.field public mCallType:I

.field mContext:Landroid/content/Context;

.field mIMSCTHandler:Landroid/os/Handler;

.field mIMSCallStateRegistrants:Landroid/os/RegistrantList;

.field mRilCm:Lcom/android/internal/telephony/CommandsInterface;

.field myHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    sput-boolean v0, Lcom/android/internal/telephony/ims/IMSInterface;->bImsRegisterDone:Z

    .line 138
    sput v0, Lcom/android/internal/telephony/ims/IMSInterface;->CallIndex:I

    .line 139
    sput v0, Lcom/android/internal/telephony/ims/IMSInterface;->iEnablerIndex:I

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/ims/IMSInterface;->mVTHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 704
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    .line 98
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->isVideoCall:Z

    .line 131
    const/16 v0, 0x88

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->COMMAND_ISIM_AUTH:I

    .line 137
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCallStateRegistrants:Landroid/os/RegistrantList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallIDList:Ljava/util/List;

    .line 142
    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    .line 143
    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    .line 144
    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->count:I

    .line 146
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->MAXCOUNT:I

    .line 1206
    new-instance v0, Lcom/android/internal/telephony/ims/IMSInterface$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSInterface$1;-><init>(Lcom/android/internal/telephony/ims/IMSInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    .line 705
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    .line 706
    sget-boolean v0, Lcom/android/internal/telephony/ims/IMSInterface;->bImsRegisterDone:Z

    if-nez v0, :cond_0

    .line 707
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;->getIMSInstance(Landroid/content/Context;)V

    .line 726
    sput-boolean v2, Lcom/android/internal/telephony/ims/IMSInterface;->bImsRegisterDone:Z

    .line 730
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "context"
    .parameter "sCommandsInterface"

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;-><init>(Landroid/content/Context;)V

    .line 699
    iput-object p2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 700
    return-void
.end method

.method private addToCallsList(Ljava/lang/String;IZII)V
    .locals 8
    .parameter "address"
    .parameter "state"
    .parameter "callType"
    .parameter "callId"
    .parameter "mCallType"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1163
    const-string v2, "IMSPhone/IMSInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  addToCallsList : mCalltype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 1165
    .local v0, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-static {p2}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 1166
    iput p4, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 1167
    iput v5, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 1168
    iput-boolean v6, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 1169
    iput-boolean p3, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 1170
    iput v5, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 1171
    iput p5, v0, Lcom/android/internal/telephony/DriverCall;->mCallType:I

    .line 1173
    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->count:I

    iput v2, v0, Lcom/android/internal/telephony/DriverCall;->connectionIndex:I

    .line 1174
    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->count:I

    .line 1175
    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->count:I

    iget v3, p0, Lcom/android/internal/telephony/ims/IMSInterface;->MAXCOUNT:I

    if-le v2, v3, :cond_0

    .line 1177
    iput v6, p0, Lcom/android/internal/telephony/ims/IMSInterface;->count:I

    .line 1179
    :cond_0
    iput-boolean v5, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 1180
    iput-boolean v5, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 1181
    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->isVideoCall:Z

    iput-boolean v2, v0, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 1182
    const/4 v1, 0x0

    .line 1183
    .local v1, np:I
    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1184
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 1185
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1186
    const-string v2, "IMSPhone/IMSInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  addToCallsList : Address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_1
    const-string v2, "anonymous"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1190
    iput v7, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 1191
    iput v7, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 1200
    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1202
    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    return-void

    .line 1195
    :cond_2
    iput-object p1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 1196
    iput v5, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    goto :goto_0
.end method

.method private declared-synchronized checkForCallIDInCallsList(I)Z
    .locals 7
    .parameter "callId"

    .prologue
    .line 657
    monitor-enter p0

    const/4 v2, 0x0

    .line 658
    .local v2, call:Lcom/android/internal/telephony/DriverCall;
    const/4 v1, 0x0

    .line 659
    .local v1, bRetVal:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 660
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    move-object v2, v0

    .line 661
    iget v4, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne p1, v4, :cond_1

    .line 662
    const/4 v1, 0x1

    .line 666
    :cond_0
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " checkForCallIDInCallsList...callId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "....returning: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    monitor-exit p0

    return v1

    .line 659
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 657
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized deleteFromCallsList(I)Z
    .locals 7
    .parameter "callId"

    .prologue
    .line 638
    monitor-enter p0

    const/4 v2, 0x0

    .line 639
    .local v2, call:Lcom/android/internal/telephony/DriverCall;
    const/4 v1, 0x0

    .line 640
    .local v1, bRetVal:Z
    :try_start_0
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, " deleteFromCallsList"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 642
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    move-object v2, v0

    .line 643
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " deleteFromCallsList    callID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  callindex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget v4, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne p1, v4, :cond_1

    .line 646
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    const/4 v1, 0x1

    .line 652
    :cond_0
    monitor-exit p0

    return v1

    .line 641
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 638
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized getIMSInstance(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 745
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public static registerVideoEventListener(Landroid/os/Handler;)V
    .locals 0
    .parameter "VTHandler"

    .prologue
    .line 1930
    sput-object p0, Lcom/android/internal/telephony/ims/IMSInterface;->mVTHandler:Landroid/os/Handler;

    .line 1931
    return-void
.end method

.method private stateFromEventType(I)Lcom/android/internal/telephony/DriverCall$State;
    .locals 1
    .parameter "eventType"

    .prologue
    .line 693
    const/4 v0, 0x0

    return-object v0
.end method

.method public static unregisterVideoEventListener(Landroid/os/Handler;)V
    .locals 3
    .parameter "VTHandler"

    .prologue
    .line 1935
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterVideoEventListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/ims/IMSInterface;->mVTHandler:Landroid/os/Handler;

    .line 1937
    return-void
.end method

.method private updateCallList(IZ)V
    .locals 0
    .parameter "state"
    .parameter "callType"

    .prologue
    .line 1160
    return-void
.end method

.method private declared-synchronized updateCallsList(II)Z
    .locals 7
    .parameter "eventType"
    .parameter "callID"

    .prologue
    .line 623
    monitor-enter p0

    const/4 v2, 0x0

    .line 624
    .local v2, call:Lcom/android/internal/telephony/DriverCall;
    const/4 v1, 0x0

    .line 625
    .local v1, bRetVal:Z
    :try_start_0
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, " updateCallsList"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 627
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    move-object v2, v0

    .line 628
    iget v4, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne p2, v4, :cond_1

    .line 629
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;->stateFromEventType(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 630
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  present call state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    const/4 v1, 0x1

    .line 635
    :cond_0
    monitor-exit p0

    return v1

    .line 626
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 623
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public ClientStartSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "id"
    .parameter "alertType"
    .parameter "AlertFormat"
    .parameter "AlertSrc"
    .parameter "AlertCorrel"
    .parameter "AlertMark"
    .parameter "AlertData"
    .parameter "response"

    .prologue
    .line 1803
    return-void
.end method

.method public OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "id"
    .parameter "Data"
    .parameter "Len"
    .parameter "response"

    .prologue
    .line 1809
    return-void
.end method

.method public ServerStartSession(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "sessionId"
    .parameter "ID"
    .parameter "response"

    .prologue
    .line 1815
    return-void
.end method

.method public SetupSession(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "CB1_ID"
    .parameter "CB2_ID"
    .parameter "CB3_ID"
    .parameter "ENC"
    .parameter "VER"
    .parameter "maxMsgSize"
    .parameter "Max_obj_size"
    .parameter "Cookie"
    .parameter "Disp_Name"
    .parameter "response"

    .prologue
    .line 1822
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 767
    return-void
.end method

.method public accessPhoneBookEntry(IIILcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "adn"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1301
    return-void
.end method

.method public accessPhoneBookEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "alphTag"
    .parameter "number"
    .parameter "email"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1829
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "ackPdu"
    .parameter "result"

    .prologue
    .line 2250
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "response"

    .prologue
    .line 1334
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "response"

    .prologue
    .line 1343
    return-void
.end method

.method public addUserToConfCall(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 787
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1351
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 1360
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "result"

    .prologue
    .line 1835
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 1373
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 2096
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 1381
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 2099
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2231
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2234
    return-void
.end method

.method public changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPass"
    .parameter "newPass"
    .parameter "result"

    .prologue
    .line 1296
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 782
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 2024
    return-void
.end method

.method public deactivateDataCall(ILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 1388
    return-void
.end method

.method public deactivateDefaultPDP(ILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "response"

    .prologue
    .line 1396
    return-void
.end method

.method public deflect(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1840
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1403
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1411
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 857
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 1961
    return-void
.end method

.method public dialConferenceCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 819
    return-void
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1305
    return-void
.end method

.method public dialVideoCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1845
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 737
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1418
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1426
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1434
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1442
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1450
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1458
    return-void
.end method

.method public getCbConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1850
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1466
    return-void
.end method

.method public getCdmaDataProfile(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1855
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2175
    return-void
.end method

.method public getCdmaSystemProperties(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "sysPorpertyID"
    .parameter "response"

    .prologue
    .line 1860
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 864
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  getCurrentCalls   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 866
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "  getCurrentCalls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1473
    return-void
.end method

.method public getDataCallProfile(ILandroid/os/Message;)V
    .locals 0
    .parameter "appType"
    .parameter "result"

    .prologue
    .line 2020
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2069
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1481
    return-void
.end method

.method public getGPRSRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1489
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1497
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1505
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1513
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1521
    return-void
.end method

.method public getIMSI(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2102
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2225
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1529
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2178
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 873
    const-string v3, "IMSPhone/IMSInterface"

    const-string v4, "  getLastCallFailCause"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 875
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0xa

    new-array v1, v3, [I

    .line 876
    .local v1, cause:[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v1, v3

    .line 877
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v5, v1, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 878
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 879
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 880
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 881
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1536
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1544
    return-void
.end method

.method public getModemDefaultApn(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2197
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 887
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "IMS getMute..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1549
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 897
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1554
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1559
    return-void
.end method

.method public getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1866
    return-void
.end method

.method public getPhoneBookEntry(Ljava/lang/String;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2187
    return-void
.end method

.method public getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .locals 0
    .parameter "fileid"
    .parameter "result"

    .prologue
    .line 1871
    return-void
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 2274
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 907
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1564
    return-void
.end method

.method public getQosStatus(ILandroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter "result"

    .prologue
    .line 2000
    return-void
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 916
    return-void
.end method

.method public getSIMLockInfo(IILandroid/os/Message;)V
    .locals 0
    .parameter "numLockType"
    .parameter "lockType"
    .parameter "result"

    .prologue
    .line 1876
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1569
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1574
    return-void
.end method

.method public getStoredMessageCount(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1309
    return-void
.end method

.method public getTimeInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1942
    return-void
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1881
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2172
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2222
    return-void
.end method

.method public getWipiSysInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1944
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 1579
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 3
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    const/16 v2, 0x3ea

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "DIALING timer  removed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 944
    :cond_0
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 977
    return-void
.end method

.method public hangupVT(ILandroid/os/Message;)V
    .locals 0
    .parameter "errCause"
    .parameter "result"

    .prologue
    .line 2282
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 983
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;->rejectCall(Landroid/os/Message;)V

    .line 984
    return-void
.end method

.method public iccAUTH(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "data"
    .parameter "result"

    .prologue
    .line 1588
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 0
    .parameter "channel"
    .parameter "response"

    .prologue
    .line 1966
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 1585
    return-void
.end method

.method public iccIO(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2049
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2219
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "AID"
    .parameter "response"

    .prologue
    .line 1969
    return-void
.end method

.method public invokeDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "type"
    .parameter "response"

    .prologue
    .line 2032
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 2
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1591
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "invokeOemRilRequestRaw()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1594
    :cond_0
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 1599
    return-void
.end method

.method public modifyQos(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1988
    .local p2, qosFlows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public notifyIMSCallChanged(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 1154
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "  notifyIMSCallChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1157
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1604
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1609
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    .line 993
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1001
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1614
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1620
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2042
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 2215
    return-void
.end method

.method public queryLineId(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1950
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1625
    return-void
.end method

.method public readSmsFromSim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1886
    return-void
.end method

.method public registerCallTrackerHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    .line 1148
    return-void
.end method

.method public registerForCallReestablishInd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2072
    return-void
.end method

.method public registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2164
    return-void
.end method

.method public registerForCdmaSubscriptionSourceChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2160
    return-void
.end method

.method public registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2152
    return-void
.end method

.method public registerForIMSCallChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1142
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1143
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1144
    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2132
    return-void
.end method

.method public registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2144
    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2168
    return-void
.end method

.method public registerForRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2128
    return-void
.end method

.method public registerForSimLockInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2181
    return-void
.end method

.method public registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2078
    return-void
.end method

.method public registerForTetheredModeStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2148
    return-void
.end method

.method public registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2156
    return-void
.end method

.method public rejectCall()V
    .locals 0

    .prologue
    .line 774
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 1007
    const-string v1, "IMSPhone/IMSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectCall  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1032
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1033
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1035
    return-void
.end method

.method public releaseQos(ILandroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter "result"

    .prologue
    .line 1984
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .parameter "available"
    .parameter "result"

    .prologue
    .line 1630
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1635
    return-void
.end method

.method public requestAuthForMediaShare(Ljava/lang/String;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x88

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    const/16 v3, 0x192

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->iccAUTH(ILjava/lang/String;Landroid/os/Message;)V

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_0
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "requestAuthForMediaShare Error Scenario!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "nonce"
    .parameter "response"

    .prologue
    .line 2203
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1043
    return-void
.end method

.method public resumeQos(ILandroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter "result"

    .prologue
    .line 1996
    return-void
.end method

.method public sendAKAReceivedKeys([B)V
    .locals 2
    .parameter "isimResponse"

    .prologue
    .line 1285
    const-string v0, "IMSInterface"

    const-string v1, "sendAKAReceivedKeys : Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const-string v0, "IMSInterface"

    const-string v1, "sendAKAReceivedKeys : Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 1640
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 1645
    return-void
.end method

.method public sendCdmaSms([BIILandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "curIndex"
    .parameter "totalCnt"
    .parameter "response"

    .prologue
    .line 1655
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1650
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 1051
    return-void
.end method

.method public sendEncodedUSSD([BIILandroid/os/Message;)V
    .locals 0
    .parameter "ussdString"
    .parameter "length"
    .parameter "dcsCode"
    .parameter "response"

    .prologue
    .line 1892
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 1660
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 2247
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "retry"
    .parameter "messageRef"
    .parameter "result"

    .prologue
    .line 2253
    return-void
.end method

.method public sendImsCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 2063
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "retry"
    .parameter "messageRef"
    .parameter "result"

    .prologue
    .line 2257
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 2066
    return-void
.end method

.method public sendMobileTrackerSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1898
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1060
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "curIndex"
    .parameter "totalCnt"
    .parameter "result"

    .prologue
    .line 1972
    return-void
.end method

.method public sendSMSmore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 2200
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 1665
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 1670
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 1068
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 1675
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0
    .parameter "clirMode"
    .parameter "response"

    .prologue
    .line 1680
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    .line 1077
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1086
    return-void
.end method

.method public setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V
    .locals 0
    .parameter "cb"
    .parameter "result"

    .prologue
    .line 1903
    return-void
.end method

.method public setCbsOnOff([BLandroid/os/Message;)V
    .locals 0
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1976
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "result"

    .prologue
    .line 1685
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "result"

    .prologue
    .line 1690
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "configs"
    .parameter "response"

    .prologue
    .line 2195
    return-void
.end method

.method public setCdmaDataProfile(ILandroid/os/Message;)V
    .locals 0
    .parameter "dataConnection"
    .parameter "response"

    .prologue
    .line 1908
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 1695
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1700
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaSubscription"
    .parameter "response"

    .prologue
    .line 2205
    return-void
.end method

.method public setCdmaSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "sysPorpertyID"
    .parameter "sysPropertyValue"
    .parameter "response"

    .prologue
    .line 1914
    return-void
.end method

.method public setDataSubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 2010
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 2037
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1706
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 2211
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "result"

    .prologue
    .line 1711
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "config"
    .parameter "response"

    .prologue
    .line 1717
    return-void
.end method

.method public setLineId(ILandroid/os/Message;)V
    .locals 0
    .parameter "line"
    .parameter "response"

    .prologue
    .line 1953
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 1722
    return-void
.end method

.method public setModemPower(ZLandroid/os/Message;)V
    .locals 0
    .parameter "on"
    .parameter "response"

    .prologue
    .line 1919
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .parameter "enableMute"
    .parameter "response"

    .prologue
    .line 1094
    const-string v1, "IMSPhone/IMSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setMicrophoneMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1098
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1100
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1101
    :cond_2
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1727
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 1733
    return-void
.end method

.method public setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2112
    return-void
.end method

.method public setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2108
    return-void
.end method

.method public setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2116
    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2120
    return-void
.end method

.method public setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2124
    return-void
.end method

.method public setOnNewCdmaSMS(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2136
    return-void
.end method

.method public setOnSMSCenterNumber(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2140
    return-void
.end method

.method public setOnSS(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2104
    return-void
.end method

.method public setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2055
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 1108
    return-void
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
    .line 2278
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 1116
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 1738
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0
    .parameter "on"
    .parameter "response"

    .prologue
    .line 1743
    return-void
.end method

.method public setRilPowerOff(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2051
    return-void
.end method

.method public setSimInitEvent(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1924
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1748
    return-void
.end method

.method public setSubscriptionMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "i"
    .parameter "msg"

    .prologue
    .line 2005
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 1753
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 1758
    return-void
.end method

.method public setTransmitPower(ILandroid/os/Message;)V
    .locals 0
    .parameter "powerLevel"
    .parameter "result"

    .prologue
    .line 2193
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .parameter "slotId"
    .parameter "appIndex"
    .parameter "subId"
    .parameter "subStatus"
    .parameter "result"

    .prologue
    .line 2016
    return-void
.end method

.method public setUserAPNtoProfile(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "apn"
    .parameter "profile"
    .parameter "result"

    .prologue
    .line 1364
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "result"

    .prologue
    .line 1765
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "ipVersion"
    .parameter "result"

    .prologue
    .line 2029
    return-void
.end method

.method public setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "response"

    .prologue
    .line 1771
    return-void
.end method

.method public setupQosReq(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .parameter "callId"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1980
    .local p2, qosFlows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 1124
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1132
    return-void
.end method

.method public supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "netpin"
    .parameter "type"
    .parameter "result"

    .prologue
    .line 2228
    return-void
.end method

.method public supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "passwd"
    .parameter "result"

    .prologue
    .line 1964
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 1776
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 2084
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1781
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 2090
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2239
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2242
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 1786
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 2087
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 1791
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 2093
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2237
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 2245
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 1796
    return-void
.end method

.method public suspendQos(ILandroid/os/Message;)V
    .locals 0
    .parameter "qosId"
    .parameter "result"

    .prologue
    .line 1992
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1140
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 0

    .prologue
    .line 2190
    return-void
.end method

.method public uiccGbaAuthenticateBootstrap(Ljava/lang/String;[B[BLandroid/os/Message;)V
    .locals 0
    .parameter "sessionId"
    .parameter "rand"
    .parameter "autn"
    .parameter "response"

    .prologue
    .line 2262
    return-void
.end method

.method public uiccGbaAuthenticateNaf(Ljava/lang/String;[B[BLandroid/os/Message;)V
    .locals 0
    .parameter "sessionId"
    .parameter "nafId"
    .parameter "impi"
    .parameter "response"

    .prologue
    .line 2265
    return-void
.end method

.method public unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2114
    return-void
.end method

.method public unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2110
    return-void
.end method

.method public unSetOnCatEvent(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2118
    return-void
.end method

.method public unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2122
    return-void
.end method

.method public unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2126
    return-void
.end method

.method public unSetOnNewCdmaSMS(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2138
    return-void
.end method

.method public unSetOnSS(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2106
    return-void
.end method

.method public unSetOnUnsolOemHookExtApp(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2059
    return-void
.end method

.method public unSetOnmSmsCenterNumber(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2142
    return-void
.end method

.method public unregisterForCallReestablishInd(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2075
    return-void
.end method

.method public unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2166
    return-void
.end method

.method public unregisterForCdmaSubscriptionSourceChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2162
    return-void
.end method

.method public unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2154
    return-void
.end method

.method public unregisterForIMSCallChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1151
    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2134
    return-void
.end method

.method public unregisterForIccStatusChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2146
    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2170
    return-void
.end method

.method public unregisterForRestrictedStateChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2130
    return-void
.end method

.method public unregisterForSimLockInfoChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2184
    return-void
.end method

.method public unregisterForSubscriptionReady(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2081
    return-void
.end method

.method public unregisterForTetheredModeStateChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2150
    return-void
.end method

.method public unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 2158
    return-void
.end method

.method public writeErrorData(IIIILjava/lang/String;)V
    .locals 5
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"

    .prologue
    .line 483
    const/4 v1, 0x0

    .line 484
    .local v1, errString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 485
    .local v0, errCode:Ljava/lang/String;
    const/4 v2, 0x0

    .line 607
    .local v2, flag:I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 610
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 611
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.android.reciever.activities.ERROR_TABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string v4, "IMS_ERROR_CODE"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string v4, "IMS_ERROR_STRING"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 619
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public writeIndexSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1958
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1317
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1324
    return-void
.end method
