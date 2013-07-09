.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatService$1;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final MSG_ID_ALPHA_NOTIFY:I = 0x8

.field static final MSG_ID_CALL_CONTROL_RESULT:I = 0xd

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT:I = 0xe

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field private static final MSG_ID_ICC_CHANGED:I = 0x14

.field private static final MSG_ID_ICC_REFRESH:I = 0x1e

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SESSION_END:I = 0x1

.field static final MSG_ID_SIM_READY:I = 0x7

.field static final MSG_ID_TIMEOUT:I = 0x9

.field private static final NOT_IN_USE:I = 0x0

.field static final STK_DEFAULT:Ljava/lang/String; = "Default Message"

.field private static final STK_NOTIFICATION_ID:I = 0x14d

.field private static final WAITING_ACTIVATE_RESULT:I = 0x1

.field private static final WAITING_ACTIVATE_RESULT_TIME:I = 0x2710

.field private static mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private static mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field alpha_id_display:Ljava/lang/String;

.field private bBIPSuccess:Z

.field disabledCmdList:[Ljava/lang/String;

.field disabledProactiveCmd:Ljava/lang/String;

.field private mAlphaIdDisplay:Z

.field private mCallControlResultCode:I

.field private mCallType:I

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSlotId:I

.field private mStkAppInstalled:Z

.field private mTimeoutDest:I

.field private mUssdSendBySTK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;I)V
    .locals 5
    .parameter "ci"
    .parameter "context"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 219
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 155
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 156
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 157
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 159
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 160
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 163
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mUssdSendBySTK:Z

    .line 165
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 195
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    .line 196
    iput v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    .line 197
    iput v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    .line 201
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    .line 202
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mAlphaIdDisplay:Z

    .line 203
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    .line 207
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 216
    iput v2, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, fh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 222
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Service: Input parameters must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 226
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 227
    iput p3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 228
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cat Telephony service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 229
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 232
    invoke-static {}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance()Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 235
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x8

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1e

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xd

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallControlResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 246
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isStkAppInstalled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 247
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_DisableSimToolKitCmds"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->disabledProactiveCmd:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->disabledProactiveCmd:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running CAT service on Slotid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". STK app installed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 253
    return-void
.end method

.method private broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 4
    .parameter "cardState"
    .parameter "IccRefreshState"

    .prologue
    .line 1344
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.icc_status_change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1345
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x1

    .line 1347
    .local v0, cardStatus:Z
    if-eqz p2, :cond_0

    .line 1349
    const-string/jumbo v2, "refresh_result"

    iget v3, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending IccResult with Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1354
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq p1, v2, :cond_1

    .line 1355
    const/4 v0, 0x0

    .line 1360
    :cond_1
    const-string v2, "card_status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1361
    const-string v2, "SLOT_ID"

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Card Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cardStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1365
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1366
    return-void
.end method

.method private cancelTimeOut()V
    .locals 1

    .prologue
    .line 1623
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeMessages(I)V

    .line 1624
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    .line 1625
    return-void
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "cmdInput"
    .parameter "buf"

    .prologue
    .line 1045
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 1046
    .local v0, cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_1

    .line 1047
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() Unsupported Cmd details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1052
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v1, :cond_0

    .line 1054
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    goto :goto_0

    .line 1058
    :sswitch_1
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1060
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 1068
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() bad Cmd details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private eventDownload(III[BZ)V
    .locals 11
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    .line 1143
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1146
    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .line 1147
    .local v8, tag:I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1150
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1153
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1154
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1155
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1156
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1162
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1163
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1164
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1165
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1166
    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1182
    packed-switch p1, :pswitch_data_0

    .line 1198
    :goto_0
    :pswitch_0
    if-eqz p4, :cond_0

    .line 1199
    move-object v0, p4

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_0

    aget-byte v1, v0, v4

    .line 1200
    .local v1, b:B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1199
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1184
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v6           #len$:I
    :pswitch_1
    const-string v9, " Sending Idle Screen Available event download to ICC"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1187
    :pswitch_2
    const-string v9, " Sending Language Selection event download to ICC"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1188
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1189
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1191
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1204
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1207
    .local v7, rawData:[B
    array-length v9, v7

    add-int/lit8 v5, v9, -0x2

    .line 1208
    .local v5, len:I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    .line 1210
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1212
    .local v3, hexString:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ENVELOPE COMMAND: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1214
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1215
    return-void

    .line 1182
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .parameter "buf"
    .parameter "cmdInput"

    .prologue
    .line 1073
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 1075
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1076
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1077
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1078
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1079
    return-void
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .parameter "buf"

    .prologue
    .line 1084
    const-string/jumbo v2, "persist.sys.language"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, lang:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1088
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 1089
    .local v1, tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1090
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 1091
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1093
    .end local v1           #tag:I
    :cond_0
    return-void
.end method

.method private handleCallControlResultNoti(Ljava/lang/String;)V
    .locals 17
    .parameter "callcontrol_result"

    .prologue
    .line 421
    const/4 v5, 0x0

    .line 422
    .local v5, call_type:I
    const/4 v4, 0x0

    .line 423
    .local v4, callControlResultCode:I
    const/4 v2, 0x0

    .line 424
    .local v2, alphaidpresent:Z
    const/4 v1, 0x0

    .line 425
    .local v1, alphaid_len:I
    const/4 v7, 0x0

    .line 426
    .local v7, length_of_mod:B
    const/4 v13, 0x0

    .line 427
    .local v13, voicecall_ss_modified_address:Ljava/lang/String;
    const/4 v10, 0x0

    .line 428
    .local v10, modified_ussd_string:Ljava/lang/String;
    const/4 v9, 0x0

    .line 430
    .local v9, modified_sms_dest_address:Ljava/lang/String;
    const/4 v3, 0x0

    .line 433
    .local v3, callControlResult:Ljava/lang/String;
    const/4 v11, 0x0

    .line 435
    .local v11, rawData:[B
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 438
    const/4 v14, 0x0

    aget-byte v14, v11, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    .line 439
    const/4 v14, 0x1

    aget-byte v14, v11, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    .line 442
    const/4 v14, 0x1

    aget-byte v4, v11, v14

    .line 443
    const/4 v14, 0x0

    aget-byte v5, v11, v14

    .line 445
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The call control result by SIM = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    const/4 v14, 0x2

    :try_start_0
    aget-byte v14, v11, v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 448
    const/4 v2, 0x1

    .line 449
    const/4 v14, 0x3

    aget-byte v14, v11, v14

    if-lez v14, :cond_0

    .line 450
    const/4 v14, 0x4

    const/4 v15, 0x3

    aget-byte v15, v11, v15

    invoke-static {v11, v14, v15}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    .line 451
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The call control result by SIM : alpha_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    :cond_0
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The call control result by SIM : alphaidpresent = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    :goto_1
    invoke-static {v4}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v14, v15, :cond_8

    .line 470
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 471
    .local v12, sb:Ljava/lang/StringBuffer;
    sget-object v14, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$CallType:[I

    invoke-static {v5}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/cat/CallType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 576
    :goto_2
    invoke-static {v5}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    if-eq v14, v15, :cond_1

    invoke-static {v5}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/cat/CallType;

    if-ne v14, v15, :cond_2

    .line 577
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/cat/CatService;->mAlphaIdDisplay:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    if-nez v14, :cond_6

    .line 614
    .end local v12           #sb:Ljava/lang/StringBuffer;
    :cond_2
    :goto_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/cat/CatService;->mAlphaIdDisplay:Z

    .line 635
    return-void

    .line 454
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 474
    .restart local v12       #sb:Ljava/lang/StringBuffer;
    :pswitch_0
    const/16 v14, 0x46

    :try_start_1
    aget-byte v14, v11, v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 475
    const-string v14, "+"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    :cond_4
    const/16 v14, 0x48

    aget-byte v7, v11, v14

    .line 478
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    if-ge v6, v7, :cond_5

    .line 479
    add-int/lit8 v14, v6, 0x49

    aget-byte v14, v11, v14

    packed-switch v14, :pswitch_data_1

    .line 478
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 490
    :pswitch_1
    add-int/lit8 v14, v6, 0x49

    aget-byte v15, v11, v14

    add-int/lit8 v15, v15, 0x30

    int-to-byte v15, v15

    aput-byte v15, v11, v14

    .line 491
    new-instance v14, Ljava/lang/String;

    add-int/lit8 v15, v6, 0x49

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v11, v15, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 503
    .end local v6           #i:I
    :catch_0
    move-exception v14

    .line 506
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 507
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The Modified number by SIM : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v15, 0x10405c4

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 509
    .local v8, message:Ljava/lang/CharSequence;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 511
    goto/16 :goto_2

    .line 494
    .end local v8           #message:Ljava/lang/CharSequence;
    .restart local v6       #i:I
    :pswitch_2
    :try_start_2
    const-string v14, "*"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 497
    :pswitch_3
    const-string v14, "#"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 513
    .end local v6           #i:I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v15, 0x10405c4

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 514
    .restart local v8       #message:Ljava/lang/CharSequence;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 580
    .end local v8           #message:Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/cat/CatService;->mAlphaIdDisplay:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 582
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    .line 583
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/cat/CatService;->mAlphaIdDisplay:Z

    goto/16 :goto_3

    .line 586
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-static {v14, v3, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 589
    .end local v12           #sb:Ljava/lang/StringBuffer;
    :cond_8
    invoke-static {v4}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v14, v15, :cond_b

    .line 590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v15, 0x10405c6

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 591
    .restart local v8       #message:Ljava/lang/CharSequence;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 592
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/cat/CatService;->mAlphaIdDisplay:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    if-eqz v14, :cond_2

    .line 595
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/cat/CatService;->mAlphaIdDisplay:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 596
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 597
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    .line 598
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/cat/CatService;->mAlphaIdDisplay:Z

    goto/16 :goto_3

    .line 601
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-static {v14, v3, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 604
    .end local v8           #message:Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/cat/CatService;->mAlphaIdDisplay:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    if-eqz v14, :cond_2

    .line 607
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/cat/CatService;->mAlphaIdDisplay:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 608
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 609
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    .line 610
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/cat/CatService;->mAlphaIdDisplay:Z

    goto/16 :goto_3

    .line 465
    :catch_1
    move-exception v14

    goto/16 :goto_1

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 479
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 9
    .parameter "resMsg"

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 1470
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1559
    :goto_0
    return-void

    .line 1473
    :cond_0
    const/4 v5, 0x0

    .line 1474
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v6, 0x0

    .line 1475
    .local v6, helpRequired:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v1

    .line 1477
    .local v1, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    if-ne v2, v0, :cond_1

    .line 1478
    const-string v2, "Get terminal response of ACTIVATE and cancel timer"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1479
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 1482
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1484
    :pswitch_0
    const/4 v6, 0x1

    .line 1497
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v3, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 1556
    :cond_2
    :goto_1
    :pswitch_2
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-boolean v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->includeAdditionalInfo:Z

    iget v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1558
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 1499
    :pswitch_3
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v2, v3, :cond_3

    move v6, v0

    .line 1500
    :goto_2
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    goto :goto_0

    .line 1499
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 1503
    :pswitch_4
    new-instance v5, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    .line 1504
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1507
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v7

    .line 1508
    .local v7, input:Lcom/android/internal/telephony/cat/Input;
    iget-boolean v0, v7, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v0, :cond_4

    .line 1511
    if-nez v6, :cond_2

    .line 1512
    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    iget-boolean v3, v7, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v5, v0, v2, v3}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1516
    :cond_4
    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    .line 1519
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1525
    .end local v7           #input:Lcom/android/internal/telephony/cat/Input;
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v2, v8}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 1529
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 1536
    :pswitch_7
    iput-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->includeAdditionalInfo:Z

    .line 1537
    iput v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:I

    .line 1542
    :pswitch_8
    iget v0, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v2, :cond_5

    .line 1543
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v2, v8}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 1547
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 1550
    :cond_5
    const/4 v5, 0x0

    .line 1551
    goto :goto_1

    .line 1482
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 1497
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 25
    .parameter "cmdParams"
    .parameter "isProactiveCmd"

    .prologue
    .line 644
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    new-instance v20, Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 649
    .local v20, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 650
    const/16 v24, 0x1

    .line 652
    .local v24, sendIntent:Z
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 930
    const-string v2, "Unsupported command"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 654
    .restart local p1
    :pswitch_0
    const-string v2, "SetupMenu"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 656
    const/16 v24, 0x0

    .line 934
    .end local p1
    :cond_1
    :goto_1
    :pswitch_1
    if-eqz v24, :cond_0

    .line 935
    new-instance v21, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.command"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 936
    .local v21, intent:Landroid/content/Intent;
    const-string v2, "STK CMD"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 937
    const-string v2, "SLOT_ID"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending CmdMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on slotid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 658
    .end local v21           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_2
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 659
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 660
    const-string v2, "gsm.STK_SETUP_MENU"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :goto_2
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->loadIconFailed:Z

    if-eqz v2, :cond_6

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 676
    .local v4, resultCode:Lcom/android/internal/telephony/cat/ResultCode;
    :goto_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 662
    .end local v4           #resultCode:Lcom/android/internal/telephony/cat/ResultCode;
    :cond_3
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 664
    const-string v2, "SETUP_MENU property Setting. -AAA"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_4

    .line 666
    const-string v2, "gsm.STK_SETUP_MENU"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x13

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 668
    :cond_4
    const-string v2, "gsm.STK_SETUP_MENU"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 671
    :cond_5
    const-string v2, "SETUP_MENU property Setting. -BBB"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    const-string v2, "gsm.STK_SETUP_MENU"

    const-string v3, "SIM Toolkit"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 675
    :cond_6
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_3

    .line 681
    :pswitch_2
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v2, :cond_1

    .line 682
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->loadIconFailed:Z

    if-eqz v2, :cond_7

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 683
    .restart local v4       #resultCode:Lcom/android/internal/telephony/cat/ResultCode;
    :goto_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 682
    .end local v4           #resultCode:Lcom/android/internal/telephony/cat/ResultCode;
    :cond_7
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_4

    .line 693
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 694
    const/16 v24, 0x0

    .line 700
    goto/16 :goto_1

    .line 702
    :pswitch_4
    const-string v2, "SetupEventList"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 704
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 717
    :pswitch_5
    const-string v2, "ProvideLocalInformation"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 718
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 719
    const/16 v24, 0x0

    .line 720
    goto/16 :goto_1

    .line 723
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v2, :pswitch_data_1

    .line 733
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 725
    :pswitch_6
    new-instance v10, Lcom/android/internal/telephony/cat/DTTZResponseData;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Lcom/android/internal/telephony/cat/DTTZResponseData;-><init>(Ljava/util/Calendar;)V

    .line 726
    .local v10, resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 729
    .end local v10           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_7
    new-instance v10, Lcom/android/internal/telephony/cat/LanguageResponseData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/android/internal/telephony/cat/LanguageResponseData;-><init>(Ljava/lang/String;)V

    .line 730
    .restart local v10       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 739
    .end local v10           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_8
    const-string v2, "LaunchBrowser"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 740
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 741
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v2, p1

    .line 743
    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x1040655

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .line 746
    .local v23, message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_1

    .line 751
    .end local v23           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_9
    const-string v2, "SelectItem"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 752
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 753
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 757
    :pswitch_a
    const-string v2, "GetInput"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 758
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 759
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 763
    :pswitch_b
    const-string v2, "GetInkey"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 764
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 765
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 769
    :pswitch_c
    const-string v2, "SendDtmf"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 770
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 771
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v2, p1

    .line 773
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 775
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_1

    .restart local p1
    :pswitch_d
    move-object/from16 v2, p1

    .line 780
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_1

    .line 786
    .restart local p1
    :pswitch_e
    const-string v2, "SendSs"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 787
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 788
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v2, p1

    .line 790
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_1

    .line 797
    .restart local p1
    :pswitch_f
    const-string v2, "SendUssd"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 798
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 799
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v2, p1

    .line 801
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v2, p1

    .line 803
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 806
    :cond_d
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 807
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplayStkUssdDialog"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 808
    const-string v2, "Display USSD dialog even though USSD was sent by STK"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mUssdSendBySTK:Z

    goto/16 :goto_1

    .line 811
    :cond_e
    const-string v2, "GLW"

    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 812
    const-string v2, "mUssdSendBySTK is set as false"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mUssdSendBySTK:Z

    goto/16 :goto_1

    .line 815
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mUssdSendBySTK:Z

    goto/16 :goto_1

    .line 822
    .restart local p1
    :pswitch_10
    const-string v2, "PlayTone"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 823
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 826
    :pswitch_11
    const-string v2, "LanguageNotification"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 827
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 828
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 832
    :pswitch_12
    const-string v2, "SetupCall"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 833
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 834
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_10
    move-object/from16 v2, p1

    .line 836
    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x1040656

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .line 839
    .restart local v23       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_1

    .end local v23           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_13
    move-object/from16 v17, p1

    .line 844
    check-cast v17, Lcom/android/internal/telephony/cat/BIPClientParams;

    .line 845
    .local v17, OpenChannelcmd:Lcom/android/internal/telephony/cat/BIPClientParams;
    const-string v2, "OpenChannel"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 846
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 847
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 849
    :cond_11
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/BIPClientParams;->bHasAlphaId:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/BIPClientParams;->bHasAlphaId:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BIPClientParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 850
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with null alpha id , HasAlphaId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/BIPClientParams;->bHasAlphaId:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 860
    .end local v17           #OpenChannelcmd:Lcom/android/internal/telephony/cat/BIPClientParams;
    :pswitch_14
    const-string v2, "OpenChannel"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "CloseChannel"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "ReceiveData"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "SendData"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 861
    :cond_13
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 862
    const/16 v24, 0x0

    .line 863
    goto/16 :goto_1

    :cond_14
    move-object/from16 v19, p1

    .line 865
    check-cast v19, Lcom/android/internal/telephony/cat/BIPClientParams;

    .line 873
    .local v19, cmd:Lcom/android/internal/telephony/cat/BIPClientParams;
    const-string/jumbo v2, "persist.atel.noalpha.usrcnf"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 875
    .local v18, alphaUsrCnf:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alphaUsrCnf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bHasAlphaId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/BIPClientParams;->bHasAlphaId:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BIPClientParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_17

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/BIPClientParams;->bHasAlphaId:Z

    if-nez v2, :cond_15

    if-nez v18, :cond_17

    .line 878
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with null alpha id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    if-eqz p2, :cond_16

    .line 881
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 882
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v3, :cond_0

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 888
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    if-nez v2, :cond_18

    .line 889
    const-string v2, "No STK application found."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    if-eqz p2, :cond_18

    .line 891
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 898
    :cond_18
    const-string v2, "LGT"

    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v3, :cond_19

    .line 900
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    .line 909
    :cond_19
    if-eqz p2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v2, v3, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v2, v3, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v3, :cond_1

    .line 913
    :cond_1a
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 917
    .end local v18           #alphaUsrCnf:Z
    .end local v19           #cmd:Lcom/android/internal/telephony/cat/BIPClientParams;
    :pswitch_15
    const-string v2, "Activate"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 918
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 919
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 921
    :cond_1b
    const-string v2, "Send broadcast : ACTIVATE"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    new-instance v22, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.activate"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .local v22, intentActivate:Landroid/content/Intent;
    const-string v2, "STK CMD"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 925
    const/16 v24, 0x0

    .line 926
    const/4 v2, 0x1

    const/16 v3, 0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    goto/16 :goto_1

    .line 652
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 723
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 9
    .parameter "rilMsg"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 325
    if-nez p1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const/4 v7, 0x0

    .line 331
    .local v7, cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 385
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    .line 333
    :pswitch_2
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_0

    .line 334
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 335
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 336
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 342
    :pswitch_3
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    if-eqz v7, :cond_3

    .line 354
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_2

    .line 355
    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 343
    :catch_0
    move-exception v8

    .line 345
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 360
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_2
    iget-object v2, v7, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 369
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 370
    .local v2, lastCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    iput-boolean v5, v2, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 371
    iput v4, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 372
    iput v4, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 373
    iput v4, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    .line 374
    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 379
    .end local v2           #lastCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    :pswitch_4
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 380
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 381
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SESSION END on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 950
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 951
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 952
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 953
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 955
    const-string v1, "LGT"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 956
    const-string v1, "broadcasting com.sec.android.lgt.bip.SUCCESS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.lgt.bip.SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 958
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 959
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    .line 961
    :cond_0
    return-void
.end method

.method private isDisabledCmd(Ljava/lang/String;)Z
    .locals 3
    .parameter "cmd"

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 257
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    const/4 v1, 0x1

    .line 263
    .end local v0           #i:I
    :cond_0
    return v1

    .line 257
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isStkAppInstalled()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1562
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.stk.command"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1563
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1564
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1566
    .local v0, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    move v2, v4

    .line 1568
    .local v2, numReceiver:I
    :goto_0
    if-lez v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 1566
    .end local v2           #numReceiver:I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0
.end method

.method private isSupportedSetupEventCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 5
    .parameter "cmdMsg"

    .prologue
    .line 399
    const/4 v1, 0x1

    .line 402
    .local v1, flag:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 403
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v0, v3, v2

    .line 404
    .local v0, eventval:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    packed-switch v0, :pswitch_data_0

    .line 414
    :pswitch_0
    const/4 v1, 0x0

    .line 402
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    .end local v0           #eventval:I
    :cond_0
    return v1

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private launchIdleText()V
    .locals 10

    .prologue
    const v9, 0x10806ce

    const v8, 0x1020006

    const/4 v7, 0x0

    const/16 v6, 0x14d

    .line 1572
    const-string v4, "launchIdleText"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1573
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    .line 1574
    .local v2, msg:Lcom/android/internal/telephony/cat/TextMessage;
    iget-object v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1575
    const-string v4, "REMOVE IDLE TEXT "

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1576
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1610
    :goto_0
    return-void

    .line 1577
    :cond_0
    iget-object v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1578
    const-string v4, "REMOVE IDLE TEXT  due to text length is 0"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1579
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 1581
    :cond_1
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 1582
    .local v3, notification:Landroid/app/Notification;
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x10900ee

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1586
    .local v0, contentView:Landroid/widget/RemoteViews;
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 1587
    iput v9, v3, Landroid/app/Notification;->icon:I

    .line 1589
    iget-boolean v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v4, :cond_2

    .line 1590
    iget-object v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1591
    const v4, 0x1020046

    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1594
    :cond_2
    iget-object v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 1595
    iget-object v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1603
    :goto_1
    iput-object v0, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1604
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1605
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1608
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1598
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {v0, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1443
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 1450
    :goto_0
    return v1

    .line 1446
    :catch_0
    move-exception v0

    .line 1447
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 1450
    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 8
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1097
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1100
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 1101
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1104
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1110
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1111
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1112
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1113
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1114
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1117
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1118
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1119
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1120
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1123
    if-eqz p2, :cond_0

    .line 1124
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 1125
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1126
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1129
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1132
    .local v3, rawData:[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 1133
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    .line 1135
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1138
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 8
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 967
    if-nez p1, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 970
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 972
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 973
    .local v1, cmdInput:Lcom/android/internal/telephony/cat/Input;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v7, :cond_1

    .line 974
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 978
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 979
    .local v5, tag:I
    iget-boolean v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v7, :cond_2

    .line 980
    or-int/lit16 v5, v5, 0x80

    .line 982
    :cond_2
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 983
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 984
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 985
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 986
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 998
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 999
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1000
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1001
    const/16 v7, 0x82

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1002
    const/16 v7, 0x81

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1007
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasTextAttribute()Z

    move-result v7

    if-ne v7, v6, :cond_3

    .line 1008
    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1013
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v7, :cond_4

    .line 1014
    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1016
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v5, v7, 0x80

    .line 1017
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1018
    if-eqz p3, :cond_6

    .line 1019
    .local v3, length:I
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1020
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1023
    if-eqz p3, :cond_5

    .line 1024
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1028
    :cond_5
    if-eqz p5, :cond_7

    .line 1029
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 1034
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1035
    .local v4, rawData:[B
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1040
    .local v2, hexString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v2           #hexString:Ljava/lang/String;
    .end local v3           #length:I
    .end local v4           #rawData:[B
    :cond_6
    move v3, v6

    .line 1018
    goto :goto_1

    .line 1031
    .restart local v3       #length:I
    :cond_7
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 3
    .parameter "resMsg"

    .prologue
    .line 1429
    const/4 v0, 0x0

    .line 1430
    .local v0, validResponse:Z
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1432
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmdType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1433
    const/4 v0, 0x1

    .line 1438
    :cond_1
    :goto_0
    return v0

    .line 1434
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_1

    .line 1435
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CommandDetails;->compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z

    move-result v0

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResponse for last valid cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public SetUssdFlag(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetUssdFlag - flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1619
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->mUssdSendBySTK:Z

    .line 1620
    return-void
.end method

.method public UssdSendByStk()Z
    .locals 2

    .prologue
    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UssdSendByStk - mUssdSendBySTK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mUssdSendBySTK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1614
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUssdSendBySTK:Z

    return v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 278
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 280
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 321
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "arrived on slotid: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1221
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1332
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized CAT command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1226
    :sswitch_0
    const-string/jumbo v1, "ril message arrived"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1227
    const/4 v15, 0x0

    .line 1228
    .local v15, data:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1229
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1230
    .local v13, ar:Landroid/os/AsyncResult;
    if-eqz v13, :cond_0

    iget-object v1, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1232
    :try_start_0
    iget-object v15, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v15           #data:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    .end local v13           #ar:Landroid/os/AsyncResult;
    .restart local v15       #data:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    new-instance v7, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-direct {v7, v8, v15}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Landroid/os/Handler;Lcom/android/internal/telephony/cat/IconLoader;Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 1334
    .end local v15           #data:Ljava/lang/String;
    :goto_0
    return-void

    .line 1233
    .restart local v13       #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v16

    .line 1234
    .local v16, e:Ljava/lang/ClassCastException;
    const-string v1, "Exception caught for proactive cmd"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1243
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #e:Ljava/lang/ClassCastException;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    new-instance v7, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Landroid/os/Handler;Lcom/android/internal/telephony/cat/IconLoader;Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 1247
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 1250
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 1253
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    iget v2, v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->event:I

    .line 1254
    .local v2, event:I
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    iget v3, v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->sourceID:I

    .line 1255
    .local v3, sourceId:I
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    iget v4, v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->destinationID:I

    .line 1256
    .local v4, destinationId:I
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    iget-object v5, v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->additionalInfo:[B

    .line 1257
    .local v5, additionalInfo:[B
    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto :goto_0

    .line 1260
    .end local v2           #event:I
    .end local v3           #sourceId:I
    .end local v4           #destinationId:I
    .end local v5           #additionalInfo:[B
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1261
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1262
    .restart local v13       #ar:Landroid/os/AsyncResult;
    if-eqz v13, :cond_3

    iget-object v1, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1263
    iget-object v1, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    iget v1, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    iget-object v1, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    iget v1, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 1264
    :cond_1
    const-string v1, "REMOVE IDLE TEXT "

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v6, 0x14d

    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1267
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iget-object v1, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_0

    .line 1270
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icc REFRESH with exception: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1273
    .end local v13           #ar:Landroid/os/AsyncResult;
    :cond_4
    const-string v1, "IccRefresh Message is null"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1277
    :sswitch_6
    const-string v1, "handleMsg : MSG_ID_CALL_CONTROL_RESULT"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1278
    const/4 v14, 0x0

    .line 1279
    .local v14, callcontrol_result:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 1280
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1281
    .restart local v13       #ar:Landroid/os/AsyncResult;
    if-eqz v13, :cond_5

    iget-object v1, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 1283
    :try_start_1
    iget-object v14, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v14           #callcontrol_result:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1289
    .end local v13           #ar:Landroid/os/AsyncResult;
    .restart local v14       #callcontrol_result:Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call control result data"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1290
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/cat/CatService;->handleCallControlResultNoti(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1284
    .end local v14           #callcontrol_result:Ljava/lang/String;
    .restart local v13       #ar:Landroid/os/AsyncResult;
    :catch_1
    move-exception v16

    .line 1285
    .restart local v16       #e:Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .line 1293
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #e:Ljava/lang/ClassCastException;
    :sswitch_7
    const-string v1, "Received STK CC Alpha message from card"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1294
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 1295
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1296
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mAlphaIdDisplay:Z

    .line 1297
    if-eqz v13, :cond_7

    iget-object v1, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 1298
    iget-object v12, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 1299
    .local v12, alphaString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting STK Alpha message from card: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1300
    if-eqz v12, :cond_6

    .line 1301
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mAlphaIdDisplay:Z

    .line 1302
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alpha_id_display: STK Alpha message from card: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1306
    :cond_6
    new-instance v17, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.alpha_notify"

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1307
    .local v17, intent:Landroid/content/Intent;
    const-string v1, "alpha_string"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1310
    .end local v12           #alphaString:Ljava/lang/String;
    .end local v17           #intent:Landroid/content/Intent;
    :cond_7
    const-string v1, "STK Alpha message: ar.result is null"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1313
    .end local v13           #ar:Landroid/os/AsyncResult;
    :cond_8
    const-string v1, "STK Alpha message: msg.obj is null"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1317
    :sswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_ID_TIMEOUT timeout!!! - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_9

    .line 1319
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    goto/16 :goto_0

    .line 1322
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    packed-switch v1, :pswitch_data_0

    .line 1329
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    goto/16 :goto_0

    .line 1325
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v7, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 1221
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_3
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_2
        0xd -> :sswitch_6
        0xe -> :sswitch_4
        0x1e -> :sswitch_5
    .end sparse-switch

    .line 1322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 1369
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1375
    :goto_0
    monitor-exit p0

    return-void

    .line 1373
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1374
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1369
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/cat/CatEnvelopeMessage;)V
    .locals 2
    .parameter "eventMsg"

    .prologue
    .line 1379
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "onEventDownload()"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1380
    if-nez p1, :cond_0

    .line 1386
    :goto_0
    monitor-exit p0

    return-void

    .line 1384
    :cond_0
    const/16 v1, 0xe

    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1385
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1379
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendEnvelopeToTriggerBip()V
    .locals 7

    .prologue
    .line 1389
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1392
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd6

    .line 1393
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1396
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1399
    const/16 v4, 0x19

    .line 1400
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1401
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1402
    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1405
    const/16 v4, 0x82

    .line 1406
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1407
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1408
    const/16 v5, 0x82

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1409
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1412
    const/4 v4, 0x5

    .line 1413
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1415
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1418
    .local v3, rawData:[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 1419
    .local v2, len:I
    const/4 v5, 0x1

    int-to-byte v6, v2

    aput-byte v6, v3, v5

    .line 1421
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1423
    .local v1, hexString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendEnvelopeToTriggerBip cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1425
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    monitor-exit p0

    return-void

    .line 1389
    .end local v0           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v1           #hexString:Ljava/lang/String;
    .end local v2           #len:I
    .end local v3           #rawData:[B
    .end local v4           #tag:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method startTimeOut(II)V
    .locals 3
    .parameter "timeDest"
    .parameter "duration"

    .prologue
    .line 1628
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 1629
    iput p1, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    .line 1630
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1631
    return-void
.end method

.method public update(Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)V
    .locals 5
    .parameter "ca"
    .parameter "newState"

    .prologue
    const/4 v4, 0x0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Card State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Old Card State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq p2, v2, :cond_4

    .line 290
    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    .line 296
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, ir:Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v0, 0x0

    .line 300
    .local v0, fh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    sput-object p1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 301
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_1

    .line 302
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 303
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 305
    :cond_1
    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v2, v1, :cond_2

    .line 306
    const-string v2, "Reinitialize the Service with IccRecords"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 310
    :cond_2
    if-eqz v0, :cond_3

    .line 311
    const-string v2, "Reinitialize the Service with new IccFilehandler"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-eqz v2, :cond_5

    .line 313
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/IconLoader;->updateIccFileHandler(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 318
    :cond_3
    :goto_1
    return-void

    .line 291
    .end local v0           #fh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v1           #ir:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p2, v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto :goto_0

    .line 315
    .restart local v0       #fh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v1       #ir:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/cat/IconLoader;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {v2, v0, v3}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    goto :goto_1
.end method
