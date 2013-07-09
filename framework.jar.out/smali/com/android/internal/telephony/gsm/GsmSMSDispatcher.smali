.class public Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;,
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;,
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbDuplicateInfo;,
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final ALLRECEIVE_MODE:B = 0x3t

.field private static final COMMERCIAL_MODE:B = 0x0t

.field private static final EVENT_NEW_BROADCAST_SMS:I = 0x65

.field private static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x64

.field private static final EVENT_WRITE_SMS_COMPLETE:I = 0x66

.field private static final KDDITEST_MODE:B = 0x2t

.field private static final MANUFACTURETEST_MODE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private final DEBUG:Z

.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

.field private mDomainPrefObserver:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$DomainPreferenceObserver;

.field private mDuplicateFilter:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;

.field private mGsmJudgeSmsType:Lcom/android/internal/telephony/KddiJudgeSmsType;

.field private mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field private mPbReady:Z

.field private mSmsCbDuplicateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbDuplicateInfo;",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field

.field private mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 4
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"
    .parameter "imsSMSDispatcher"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 143
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->DEBUG:Z

    .line 169
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 170
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 171
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 1391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    .line 179
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    .line 180
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    const/16 v1, 0x139

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/BaseCommands;->setOnCellBroadcastMessageIdentifier(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13a

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x28

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSMSCenterNumber(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 194
    const-string v0, "GSM"

    const-string v1, "GsmSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x29

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 199
    const-string/jumbo v0, "ril.initPB"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPbReady:Z

    .line 200
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPbReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPbReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPbReady:Z

    if-ne v0, v3, :cond_0

    .line 202
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "GSM"

    const-string v1, "Sim_Smsc is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 210
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;-><init>(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDuplicateFilter:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;

    .line 217
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSCADialingNumberFromRil(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "addr"

    .prologue
    const/4 v1, 0x0

    .line 774
    :try_start_0
    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 781
    :cond_0
    :goto_0
    return-object v1

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getSmsHeaderKTReadConfirm(I)Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    .locals 4
    .parameter "readConfim"

    .prologue
    const/4 v3, 0x1

    .line 545
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;-><init>()V

    .line 546
    .local v0, ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    const/16 v2, 0x44

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->id:I

    .line 547
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x8c

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 552
    .local v1, outStream:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 554
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 560
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 561
    iput p1, v0, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    .line 562
    return-object v0
.end method

.method private getSmsHeaderMiscElt(Ljava/lang/String;)Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .locals 7
    .parameter "sendAddr"

    .prologue
    const/4 v4, 0x0

    .line 518
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 519
    .local v0, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v3, 0x22

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 520
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x8c

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 524
    .local v1, outStream:Ljava/io/ByteArrayOutputStream;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .line 527
    .local v2, saBytes:[B
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v5, v3, 0x2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v6, 0xf0

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    :goto_0
    sub-int v3, v5, v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 531
    array-length v3, v2

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 533
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 535
    return-object v0

    :cond_0
    move v3, v4

    .line 527
    goto :goto_0
.end method

.method private handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 20
    .parameter "ar"

    .prologue
    .line 1433
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [B

    move-object/from16 v0, v18

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 1449
    .local v17, receivedPdu:[B
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 1450
    .local v7, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v18, "gsm.operator.numeric"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1451
    .local v16, plmn:Ljava/lang/String;
    const/4 v11, -0x1

    .line 1452
    .local v11, lac:I
    const/4 v3, -0x1

    .line 1453
    .local v3, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 1454
    .local v4, cl:Landroid/telephony/CellLocation;
    instance-of v0, v4, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1455
    move-object v0, v4

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v2, v0

    .line 1456
    .local v2, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v11

    .line 1457
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 1461
    .end local v2           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 1473
    :pswitch_0
    new-instance v12, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 1478
    .local v12, location:Landroid/telephony/SmsCbLocation;
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isDuplicatedCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1479
    const-string v18, "GSM"

    const-string v19, "[CB] DuplicatedCbMessage: Duplicated CB message exist."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    .end local v3           #cid:I
    .end local v4           #cl:Landroid/telephony/CellLocation;
    .end local v7           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v11           #lac:I
    .end local v12           #location:Landroid/telephony/SmsCbLocation;
    .end local v16           #plmn:Ljava/lang/String;
    .end local v17           #receivedPdu:[B
    :cond_1
    :goto_1
    return-void

    .line 1463
    .restart local v3       #cid:I
    .restart local v4       #cl:Landroid/telephony/CellLocation;
    .restart local v7       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #lac:I
    .restart local v16       #plmn:Ljava/lang/String;
    .restart local v17       #receivedPdu:[B
    :pswitch_1
    new-instance v12, Landroid/telephony/SmsCbLocation;

    const/16 v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v12, v0, v11, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 1464
    .restart local v12       #location:Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 1468
    .end local v12           #location:Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v12, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v16

    invoke-direct {v12, v0, v11, v3}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 1469
    .restart local v12       #location:Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 1485
    :cond_2
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v14

    .line 1486
    .local v14, pageCount:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v14, v0, :cond_6

    .line 1488
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    invoke-direct {v5, v7, v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 1491
    .local v5, concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[B

    .line 1493
    .local v15, pdus:[[B
    if-nez v15, :cond_3

    .line 1496
    new-array v15, v14, [[B

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    :cond_3
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    aput-object v17, v15, v18

    .line 1504
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_4

    .line 1505
    aget-object v18, v15, v8

    if-eqz v18, :cond_1

    .line 1504
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1512
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    .end local v5           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v8           #i:I
    :goto_3
    invoke-static {v7, v12, v15}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v13

    .line 1526
    .local v13, message:Landroid/telephony/SmsCbMessage;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchBroadcastMessage(Landroid/telephony/SmsCbMessage;)V

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1533
    .local v10, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_5
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1534
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 1536
    .local v9, info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v11, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_5

    .line 1537
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1540
    .end local v3           #cid:I
    .end local v4           #cl:Landroid/telephony/CellLocation;
    .end local v7           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v9           #info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v10           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v11           #lac:I
    .end local v12           #location:Landroid/telephony/SmsCbLocation;
    .end local v13           #message:Landroid/telephony/SmsCbMessage;
    .end local v14           #pageCount:I
    .end local v15           #pdus:[[B
    .end local v16           #plmn:Ljava/lang/String;
    .end local v17           #receivedPdu:[B
    :catch_0
    move-exception v6

    .line 1541
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v18, "GSM"

    const-string v19, "Error in decoding SMS CB pdu"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1515
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v3       #cid:I
    .restart local v4       #cl:Landroid/telephony/CellLocation;
    .restart local v7       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #lac:I
    .restart local v12       #location:Landroid/telephony/SmsCbLocation;
    .restart local v14       #pageCount:I
    .restart local v16       #plmn:Ljava/lang/String;
    .restart local v17       #receivedPdu:[B
    :cond_6
    const/16 v18, 0x1

    :try_start_1
    move/from16 v0, v18

    new-array v15, v0, [[B

    .line 1516
    .restart local v15       #pdus:[[B
    const/16 v18, 0x0

    aput-object v17, v15, v18
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    .line 283
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 284
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 286
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_2

    .line 287
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 288
    .local v7, tpStatus:I
    iget v4, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 311
    .local v4, messageRef:I
    const/4 v2, 0x0

    .local v2, i:I
    sget-object v9, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 312
    sget-object v9, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 313
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    .line 315
    const/16 v9, 0x40

    if-ge v7, v9, :cond_0

    const/16 v9, 0x20

    if-ge v7, v9, :cond_1

    .line 316
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 318
    :cond_1
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 319
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 320
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 321
    const-string v9, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v7           #tpStatus:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 334
    return-void

    .line 311
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v7       #tpStatus:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private isDuplicatedCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;)Z
    .locals 6
    .parameter "cbHeader"

    .prologue
    .line 1396
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbDuplicateInfo;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbDuplicateInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;)V

    .line 1397
    .local v0, duplicateInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbDuplicateInfo;
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] DuplicatedCbMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbDuplicateInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1401
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbDuplicateInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1402
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbDuplicateInfo;

    .line 1403
    .local v1, info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbDuplicateInfo;
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] DuplicatedCbMessage: list of duplicated Map. key value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbDuplicateInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1408
    .end local v1           #info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbDuplicateInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1410
    const-string v3, "GSM"

    const-string v4, "[CB] DuplicatedCbMessage: Add CB header to hash map."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    const/4 v3, 0x0

    .line 1416
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private onUpdateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1268
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 1274
    .local v1, newUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1275
    .local v0, app:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v1, :cond_0

    .line 1276
    if-eqz v0, :cond_3

    .line 1277
    const-string v2, "GSM"

    const-string v3, "Removing stale icc objects."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1279
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    .line 1281
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1282
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1284
    :cond_3
    if-eqz v1, :cond_0

    .line 1285
    const-string v2, "GSM"

    const-string v3, "New Uicc application found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1287
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1288
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1289
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v3, 0xd

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 1249
    packed-switch p0, :pswitch_data_0

    .line 1258
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 1253
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1255
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 1249
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 27
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1014
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendMultipartTextWithPermit destinationAddress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v25

    .line 1019
    .local v25, ss:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isIms()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v25, :cond_1

    .line 1020
    const/16 v18, 0x0

    .local v18, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, count:I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v13, :cond_b

    .line 1021
    const/16 v23, 0x0

    .line 1022
    .local v23, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-le v4, v0, :cond_0

    .line 1023
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    check-cast v23, Landroid/app/PendingIntent;

    .line 1025
    .restart local v23       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1, v5, v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v26

    .line 1027
    .local v26, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    .line 1020
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1032
    .end local v13           #count:I
    .end local v18           #i:I
    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    .end local v26           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    .line 1033
    .local v22, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1034
    .local v20, msgCount:I
    const/4 v9, 0x0

    .line 1036
    .local v9, encoding:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    if-lez v4, :cond_3

    .line 1039
    const-string v4, "GSM"

    const-string v5, "Sending multipart message already in progress. Can\'t send another multipart message."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_b

    .line 1041
    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-le v4, v0, :cond_2

    .line 1042
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/PendingIntent;

    .line 1044
    .restart local v23       #sentIntent:Landroid/app/PendingIntent;
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    :cond_2
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1045
    .restart local v23       #sentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v17

    .line 1046
    .local v17, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "GSM"

    const-string v5, "failed to send error result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1052
    .end local v17           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v18           #i:I
    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 1054
    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v16, v0

    .line 1055
    .local v16, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 1056
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v15

    .line 1057
    .local v15, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v4, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v4, :cond_5

    if-eqz v9, :cond_4

    const/4 v4, 0x1

    if-ne v9, v4, :cond_5

    .line 1060
    :cond_4
    iget v9, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1062
    :cond_5
    aput-object v15, v16, v18

    .line 1055
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 1065
    .end local v15           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_6
    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 1066
    new-instance v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1067
    .local v12, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v22

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1068
    add-int/lit8 v4, v18, 0x1

    iput v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1069
    move/from16 v0, v20

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1070
    const/4 v4, 0x0

    iput-boolean v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1071
    new-instance v24, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1072
    .local v24, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1074
    const/4 v4, 0x1

    if-ne v9, v4, :cond_7

    .line 1075
    aget-object v4, v16, v18

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1076
    aget-object v4, v16, v18

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1079
    :cond_7
    const/16 v23, 0x0

    .line 1080
    .restart local v23       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_8

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-le v4, v0, :cond_8

    .line 1081
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    check-cast v23, Landroid/app/PendingIntent;

    .line 1084
    .restart local v23       #sentIntent:Landroid/app/PendingIntent;
    :cond_8
    const/4 v14, 0x0

    .line 1085
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_9

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-le v4, v0, :cond_9

    .line 1086
    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 1089
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_9
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v14, :cond_a

    const/4 v7, 0x1

    :goto_5
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v24

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v21

    .line 1093
    .local v21, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v19

    .line 1095
    .local v19, map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v14, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v26

    .line 1097
    .restart local v26       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1065
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 1089
    .end local v19           #map:Ljava/util/HashMap;
    .end local v21           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v26           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    .line 1099
    .end local v9           #encoding:I
    .end local v12           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v16           #encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v20           #msgCount:I
    .end local v22           #refNumber:I
    .end local v23           #sentIntent:Landroid/app/PendingIntent;
    .end local v24           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_b
    return-void
.end method

.method public static setSCADialingNumberToRil(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "addr"

    .prologue
    const/4 v1, 0x0

    .line 790
    :try_start_0
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 791
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :goto_0
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    if-gt v2, v3, :cond_1

    :cond_0
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    :cond_1
    move-object p0, v1

    .line 806
    .end local p0
    :goto_1
    return-object p0

    .line 793
    .restart local p0
    :cond_2
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v1

    .line 797
    goto :goto_1

    .line 805
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 806
    goto :goto_1
.end method


# virtual methods
.method protected KddiNotifiyGsmSmsToApp([[BLcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;)V
    .locals 2
    .parameter "pdus"
    .parameter "accessory"

    .prologue
    .line 1960
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1961
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1962
    invoke-virtual {p2}, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1963
    return-void
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 1220
    const/16 v0, 0x191

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->removeMessages(I)V

    .line 1222
    :cond_0
    return-void
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 1105
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public clearDuplicatedCbMessages()V
    .locals 2

    .prologue
    .line 1421
    const-string v0, "GSM"

    const-string v1, "[CB] DuplicatedCbMessage: Clear duplicated CB Messages from hash map."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1423
    return-void
.end method

.method protected dispatchBroadcastPdus([[BZ)V
    .locals 4
    .parameter "pdus"
    .parameter "isEmergencyMessage"

    .prologue
    .line 1648
    if-eqz p2, :cond_0

    .line 1649
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v0, broadcastIntent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1651
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " emergency SMS CB pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1659
    :goto_0
    return-void

    .line 1654
    .end local v0           #broadcastIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1655
    .restart local v0       #broadcastIntent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1656
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SMS CB pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 15
    .parameter "smsb"

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    const-string v11, "GSM"

    const-string v12, "dispatchMessage: message is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v11, 0x2

    .line 512
    :goto_0
    return v11

    :cond_0
    move-object/from16 v7, p1

    .line 346
    check-cast v7, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 348
    .local v7, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 351
    const-string v11, "GSM"

    const-string v12, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v11, 0x1

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 357
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v10

    .line 362
    .local v10, ust:Lcom/android/internal/telephony/uicc/UsimServiceTable;
    if-eqz v10, :cond_2

    sget-object v11, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 364
    const-string v11, "GSM"

    const-string v12, "Received SMS-PP data download, sending to UICC."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v11, v7}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v11

    goto :goto_0

    .line 367
    :cond_2
    const-string v11, "GSM"

    const-string v12, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    .line 371
    .local v9, smsc:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x3

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x66

    invoke-virtual {p0, v14}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-interface {v11, v12, v9, v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 374
    const/4 v11, -0x1

    goto :goto_0

    .line 378
    .end local v9           #smsc:Ljava/lang/String;
    .end local v10           #ust:Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_3
    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsReceiveDisabled:Z

    if-eqz v11, :cond_4

    .line 380
    const-string v11, "GSM"

    const-string v12, "Received short message on device which doesn\'t support SMS service. Ignored."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v11, 0x1

    goto :goto_0

    .line 386
    :cond_4
    const/4 v4, 0x0

    .line 387
    .local v4, handled:Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v0

    .line 388
    .local v0, dcs:I
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 389
    and-int/lit8 v11, v0, 0x3

    if-eqz v11, :cond_5

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 390
    :cond_5
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 395
    :goto_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v4

    .line 397
    const-string v12, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v4, :cond_8

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_6
    :goto_3
    if-eqz v4, :cond_d

    .line 413
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 392
    :cond_7
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isMWISetMessage dcs ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 397
    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 399
    :cond_9
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 400
    and-int/lit8 v11, v0, 0x3

    if-eqz v11, :cond_a

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 401
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 406
    :goto_4
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v4

    .line 408
    const-string v12, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v4, :cond_c

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 403
    :cond_b
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isMWIClearMessage dcs ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 408
    :cond_c
    const/4 v11, 0x0

    goto :goto_5

    .line 417
    :cond_d
    const-string v11, "GSM"

    const-string v12, "[DirectedSMS] Start1: "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v6, 0x0

    .line 419
    .local v6, originAddress:Ljava/lang/String;
    const/4 v5, 0x0

    .line 432
    .local v5, msginfo:Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    const-string v11, "GSM"

    const-string v12, "[DirectedSMS] End1....: "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v11}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v11

    sget-object v12, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v11, v12, :cond_f

    :cond_e
    sget-boolean v11, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mStorageAvailable:Z

    if-nez v11, :cond_10

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v11

    sget-object v12, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v11, v12, :cond_10

    .line 453
    :cond_f
    const/4 v11, 0x3

    goto/16 :goto_0

    .line 487
    :cond_10
    const-string v11, "GSM"

    const-string v12, "[DirectedSMS] Checking End..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 494
    .local v8, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v8, :cond_11

    iget-object v11, v8, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v11, :cond_11

    const/16 v11, 0xb84

    iget-object v12, v8, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v12, v12, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v11, v12, :cond_11

    .line 495
    const/4 v3, 0x1

    .line 497
    .local v3, enabled:Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    .line 498
    .local v2, edm:Landroid/sec/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object v11

    invoke-virtual {v11}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v3

    .line 499
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isRoamingPushEnabled : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v2           #edm:Landroid/sec/enterprise/EnterpriseDeviceManager;
    :goto_6
    if-nez v3, :cond_12

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 504
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 500
    :catch_0
    move-exception v1

    .line 501
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 508
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #enabled:Z
    :cond_11
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 509
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 512
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v11

    goto/16 :goto_0
.end method

.method public dispatchSmsServiceCenter(Ljava/lang/String;)V
    .locals 8
    .parameter "smsc_hexstring"

    .prologue
    const/4 v7, -0x1

    .line 1617
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.GET_SMSC"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1619
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 1621
    .local v0, garbage_value:Z
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "smsc_hexstring = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    const-string v4, "f"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_0

    const-string v4, "F"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 1625
    const/4 v0, 0x0

    .line 1626
    const-string v4, "GSM"

    const-string/jumbo v5, "smsc_hexstring doesn\'t have garbage value"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1634
    .local v2, scAddress:[B
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 1636
    .local v3, smsc:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmscNumber([BZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1638
    const-string/jumbo v4, "smsc"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1642
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1643
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.RECEIVE_SMS"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1644
    return-void

    .line 1628
    .end local v2           #scAddress:[B
    .end local v3           #smsc:[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    .line 1629
    const-string v4, "GSM"

    const-string/jumbo v5, "smsc_hexstring has garbage value"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 225
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    const-string v0, "3gpp"

    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmscNumber([BZ)Ljava/lang/String;
    .locals 14
    .parameter "a"
    .parameter "garbage_value"

    .prologue
    .line 1558
    new-instance v0, Ljava/lang/StringBuffer;

    sget v11, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    invoke-direct {v0, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1559
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 1563
    .local v2, extra:I
    const/4 v8, 0x0

    .line 1565
    .local v8, smsc_length:I
    const/4 v4, 0x0

    .line 1567
    .local v4, international:Z
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    if-nez v11, :cond_0

    .line 1568
    const-string v6, "NotSet"

    .local v6, smsc:Ljava/lang/String;
    move-object v7, v6

    .line 1613
    .end local v6           #smsc:Ljava/lang/String;
    .local v7, smsc:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1572
    .end local v7           #smsc:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x1

    aget-byte v11, p1, v11

    const/16 v12, -0x6f

    if-ne v11, v12, :cond_1

    .line 1573
    const-string v11, "+"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1574
    const/4 v4, 0x1

    .line 1576
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 1578
    const/16 v11, 0xa

    new-array v9, v11, [B

    .line 1579
    .local v9, temp2:[B
    const/4 v11, 0x0

    array-length v12, p1

    add-int/lit8 v12, v12, -0x2

    invoke-static {p1, v2, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1581
    const/4 v1, 0x0

    .local v1, cx:I
    :goto_1
    array-length v11, v9

    if-ge v1, v11, :cond_5

    .line 1582
    aget-byte v11, v9, v1

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 1581
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1585
    :cond_3
    aget-byte v11, v9, v1

    and-int/lit16 v11, v11, 0xff

    div-int/lit8 v3, v11, 0x10

    .line 1586
    .local v3, hn:I
    aget-byte v11, v9, v1

    and-int/lit8 v5, v11, 0xf

    .line 1587
    .local v5, ln:I
    const/16 v11, 0xa

    if-ge v5, v11, :cond_4

    .line 1588
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1590
    :cond_4
    const/16 v11, 0xa

    if-ge v3, v11, :cond_2

    .line 1591
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1596
    .end local v3           #hn:I
    .end local v5           #ln:I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1598
    .local v10, temp_smsc:Ljava/lang/String;
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v8, v11, 0x2

    .line 1600
    if-eqz v4, :cond_7

    .line 1601
    const/4 v11, 0x0

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1602
    .restart local v6       #smsc:Ljava/lang/String;
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "international even smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :goto_3
    if-eqz p2, :cond_6

    .line 1608
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1611
    :cond_6
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 1613
    .end local v6           #smsc:Ljava/lang/String;
    .restart local v7       #smsc:Ljava/lang/String;
    goto/16 :goto_0

    .line 1604
    .end local v7           #smsc:Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #smsc:Ljava/lang/String;
    goto :goto_3
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method protected handleGetIccSmsDone(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v7, 0x0

    .line 1688
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 1689
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    .line 1690
    .local v0, ba:[B
    aget-byte v4, v0, v7

    if-eqz v4, :cond_0

    .line 1691
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_0
    aget-byte v4, v0, v7

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1696
    array-length v2, v0

    .line 1700
    .local v2, n:I
    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [B

    .line 1701
    .local v3, pdu:[B
    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v0, v4, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1702
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .line 1703
    .local v1, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 1709
    .end local v0           #ba:[B
    .end local v1           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #n:I
    .end local v3           #pdu:[B
    :cond_1
    :goto_0
    return-void

    .line 1706
    :cond_2
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error on GET_SMS with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 240
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 271
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 273
    :goto_0
    return-void

    .line 242
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 246
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleBroadcastSms(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 250
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 251
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 252
    const-string v1, "GSM"

    const-string v2, "Successfully wrote SMS-PP message to UICC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 255
    :cond_0
    const-string v1, "GSM"

    const-string v2, "Failed to write SMS-PP message to UICC"

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xff

    invoke-interface {v1, v4, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 262
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 263
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    goto :goto_0

    .line 267
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->onUpdateIccAvailability()V

    goto :goto_0

    .line 240
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
    .end sparse-switch
.end method

.method protected handleSmsOnIcc(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 1668
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 1670
    .local v0, index:[I
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1671
    :cond_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Error on SMS_ON_SIM with exp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :goto_0
    return-void

    .line 1674
    :cond_1
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ EF_SMS RECORD index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f3c

    aget v3, v0, v4

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 1
    .parameter "sms"

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDuplicateFilter:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    const/4 v0, 0x1

    .line 1742
    :goto_0
    return v0

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDuplicateFilter:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$GsmSmsDuplicateFilter;->addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 1742
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIms()Z
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    move-result v0

    return v0
.end method

.method protected kddiDispatchPdus([[BLcom/android/internal/telephony/SmsMessageBase;)V
    .locals 2
    .parameter "pdus"
    .parameter "smsb"

    .prologue
    .line 1877
    const/4 v0, 0x0

    .local v0, isSendAckSkip:Z
    move-object v1, p2

    .line 1878
    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 1947
    .local v1, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdus([[B)V

    .line 1950
    return-void
.end method

.method protected kddiJudgeDeliveryFromMessageID(I)Z
    .locals 13
    .parameter "messageIdentifier"

    .prologue
    const/16 v12, 0x1107

    const/16 v11, 0x1104

    const/16 v10, 0x1103

    const/16 v9, 0x1101

    const/16 v8, 0x1100

    .line 1968
    const/4 v3, 0x0

    .line 1971
    .local v3, maintenanceMode:I
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v6, "com.kddi.maintenanceMode"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1972
    .local v0, context:Landroid/content/Context;
    const-string/jumbo v5, "pref"

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1973
    .local v4, pref:Landroid/content/SharedPreferences;
    const-string v5, "maintenanceMode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1979
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #pref:Landroid/content/SharedPreferences;
    :goto_0
    const/4 v2, 0x0

    .line 1980
    .local v2, isDelivery:Z
    packed-switch v3, :pswitch_data_0

    .line 2008
    :cond_0
    :goto_1
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kddiJudgeDeliveryFromMessageID maintenanceMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isDelivery: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    return v2

    .line 1974
    .end local v2           #isDelivery:Z
    :catch_0
    move-exception v1

    .line 1975
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "GSM"

    const-string v6, "maintenanceMode app not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1982
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #isDelivery:Z
    :pswitch_0
    if-eq p1, v8, :cond_2

    if-eq p1, v9, :cond_2

    if-lt p1, v11, :cond_1

    if-le p1, v12, :cond_2

    :cond_1
    const v5, 0xa003

    if-eq p1, v5, :cond_2

    const v5, 0xa801

    if-lt p1, v5, :cond_0

    const v5, 0xa8ff

    if-gt p1, v5, :cond_0

    .line 1984
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 1988
    :pswitch_1
    if-eq p1, v10, :cond_3

    const v5, 0xaa01

    if-lt p1, v5, :cond_0

    const v5, 0xaaff

    if-gt p1, v5, :cond_0

    .line 1989
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 1993
    :pswitch_2
    const v5, 0xab00

    if-lt p1, v5, :cond_0

    const v5, 0xabff

    if-gt p1, v5, :cond_0

    .line 1994
    const/4 v2, 0x1

    goto :goto_1

    .line 1998
    :pswitch_3
    if-eq p1, v8, :cond_7

    if-eq p1, v9, :cond_7

    if-lt p1, v11, :cond_4

    if-le p1, v12, :cond_7

    :cond_4
    const v5, 0xa003

    if-eq p1, v5, :cond_7

    const v5, 0xa801

    if-lt p1, v5, :cond_5

    const v5, 0xa8ff

    if-le p1, v5, :cond_7

    :cond_5
    if-eq p1, v10, :cond_7

    const v5, 0xaa01

    if-lt p1, v5, :cond_6

    const v5, 0xaaff

    if-le p1, v5, :cond_7

    :cond_6
    const v5, 0xab00

    if-lt p1, v5, :cond_0

    const v5, 0xabff

    if-gt p1, v5, :cond_0

    .line 2001
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1980
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v0, 0x1

    .line 572
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p5, v0, v1, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v6

    .line 576
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 581
    .end local v6           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz p6, :cond_1

    :goto_1
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v5

    .line 583
    .local v5, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 584
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v7

    .line 586
    .local v7, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, p5, p6, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v8

    .line 588
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 581
    .end local v5           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v7           #map:Ljava/util/HashMap;
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 591
    .restart local v5       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v0, "GSM"

    const-string v1, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 25
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "callbackNumber"
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 821
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v21, v0

    .line 822
    .local v21, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 823
    .local v19, msgCount:I
    const/4 v9, 0x0

    .line 825
    .local v9, encoding:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    if-lez v4, :cond_1

    .line 828
    const-string v4, "GSM"

    const-string v5, "Sending multipart message already in progress. Can\'t send another multipart message."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_9

    .line 830
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-le v4, v0, :cond_0

    .line 831
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/PendingIntent;

    .line 833
    .local v22, sentIntent:Landroid/app/PendingIntent;
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 834
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v16

    .line 835
    .local v16, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "GSM"

    const-string v5, "failed to send error result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 841
    .end local v16           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v17           #i:I
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    :cond_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 843
    move/from16 v0, v19

    new-array v15, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .line 844
    .local v15, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 845
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v14

    .line 846
    .local v14, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v4, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v4, :cond_3

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    if-ne v9, v4, :cond_3

    .line 849
    :cond_2
    iget v9, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 851
    :cond_3
    aput-object v14, v15, v17

    .line 844
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 854
    .end local v14           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 855
    new-instance v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 856
    .local v12, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v21

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 857
    add-int/lit8 v4, v17, 0x1

    iput v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 858
    move/from16 v0, v19

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 859
    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 860
    new-instance v23, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 861
    .local v23, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v23

    iput-object v12, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 863
    const/4 v4, 0x1

    if-ne v9, v4, :cond_5

    .line 864
    aget-object v4, v15, v17

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 865
    aget-object v4, v15, v17

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 868
    :cond_5
    const/16 v22, 0x0

    .line 869
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-le v4, v0, :cond_6

    .line 870
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    check-cast v22, Landroid/app/PendingIntent;

    .line 873
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v13, 0x0

    .line 874
    .local v13, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-le v4, v0, :cond_7

    .line 875
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 878
    .restart local v13       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v13, :cond_8

    const/4 v7, 0x1

    :goto_4
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    move-object/from16 v0, v23

    iget v10, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v20

    .line 882
    .local v20, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v18

    .line 884
    .local v18, map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v13, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v24

    .line 886
    .local v24, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 854
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 878
    .end local v18           #map:Ljava/util/HashMap;
    .end local v20           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v24           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 888
    .end local v12           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v13           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v15           #encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    .end local v23           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_9
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 29
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .prologue
    .line 896
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendMultipartTextwithOptions destinationAddress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    if-nez p2, :cond_0

    .line 899
    sget-object p2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    .line 901
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v25, v0

    .line 903
    .local v25, refNumber:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    if-lez v4, :cond_2

    .line 906
    const-string v4, "GSM"

    const-string v5, "Sending multipart message already in progress. Can\'t send another multipart message."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_c

    .line 908
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-le v4, v0, :cond_1

    .line 909
    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/PendingIntent;

    .line 911
    .local v26, sentIntent:Landroid/app/PendingIntent;
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    .end local v26           #sentIntent:Landroid/app/PendingIntent;
    :cond_1
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 912
    .restart local v26       #sentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v20

    .line 913
    .local v20, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "GSM"

    const-string v5, "failed to send error result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 919
    .end local v20           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v21           #i:I
    .end local v26           #sentIntent:Landroid/app/PendingIntent;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 921
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 922
    .local v23, msgCount:I
    const/16 v18, 0x0

    .line 923
    .local v18, encoding:I
    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v19, v0

    .line 925
    .local v19, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 926
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v17

    .line 927
    .local v17, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v18

    if-eq v0, v4, :cond_4

    if-eqz v18, :cond_3

    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_4

    .line 930
    :cond_3
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v18, v0

    .line 932
    :cond_4
    aput-object v17, v19, v21

    .line 925
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 935
    .end local v17           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_5
    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    .line 936
    new-instance v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v15}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 937
    .local v15, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v25

    iput v0, v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 938
    add-int/lit8 v4, v21, 0x1

    iput v4, v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 939
    move/from16 v0, v23

    iput v0, v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 947
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 948
    new-instance v27, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v27 .. v27}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 949
    .local v27, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v27

    iput-object v15, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 951
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_6

    .line 952
    aget-object v4, v19, v21

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v27

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 953
    aget-object v4, v19, v21

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v27

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 956
    :cond_6
    const/16 v26, 0x0

    .line 957
    .restart local v26       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-le v4, v0, :cond_7

    .line 958
    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #sentIntent:Landroid/app/PendingIntent;
    check-cast v26, Landroid/app/PendingIntent;

    .line 961
    .restart local v26       #sentIntent:Landroid/app/PendingIntent;
    :cond_7
    const/16 v16, 0x0

    .line 962
    .local v16, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-le v4, v0, :cond_8

    .line 963
    move-object/from16 v0, p5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v16, Landroid/app/PendingIntent;

    .line 966
    .restart local v16       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_8
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v16, :cond_9

    const/4 v7, 0x1

    :goto_4
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    const/4 v4, 0x3

    move/from16 v0, v18

    if-ne v0, v4, :cond_a

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, v27

    iget v13, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v27

    iget v14, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v4 .. v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v24

    .line 971
    .local v24, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v22

    .line 973
    .local v22, map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v28

    .line 976
    .local v28, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    add-int/lit8 v4, v21, 0x1

    move/from16 v0, v23

    if-ne v4, v0, :cond_b

    .line 977
    const/4 v4, 0x0

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->linkControl:Z

    .line 981
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 935
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 966
    .end local v22           #map:Ljava/util/HashMap;
    .end local v24           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v28           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    :cond_a
    move/from16 v12, p9

    goto :goto_5

    .line 979
    .restart local v22       #map:Ljava/util/HashMap;
    .restart local v24       #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v28       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_b
    const/4 v4, 0x1

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->linkControl:Z

    goto :goto_6

    .line 983
    .end local v15           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v16           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v18           #encoding:I
    .end local v19           #encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v22           #map:Ljava/util/HashMap;
    .end local v23           #msgCount:I
    .end local v24           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v26           #sentIntent:Landroid/app/PendingIntent;
    .end local v27           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v28           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_c
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 18
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    .line 1114
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1116
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :goto_0
    return-void

    .line 1117
    :catch_0
    move-exception v13

    .line 1118
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1124
    .end local v13           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz p7, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, p4

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move/from16 v9, p5

    invoke-static/range {v4 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 1127
    .local v15, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v15, :cond_2

    .line 1128
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v14

    .line 1130
    .local v14, map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual {v0, v14, v1, v2, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v17

    .line 1132
    .local v17, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1139
    .end local v14           #map:Ljava/util/HashMap;
    .end local v17           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 1140
    .local v12, calendar:Ljava/util/Calendar;
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 1141
    .local v16, time:Ljava/lang/Long;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1124
    .end local v12           #calendar:Ljava/util/Calendar;
    .end local v15           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v16           #time:Ljava/lang/Long;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1135
    .restart local v15       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v4, "GSM"

    const-string v5, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 751
    const-string v5, "GSM"

    const-string/jumbo v6, "sendOTADomestic"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    if-nez p2, :cond_0

    .line 754
    sget-object p2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    .line 756
    :cond_0
    const/4 v0, 0x1

    .line 757
    .local v0, curIndex:I
    const/4 v3, 0x1

    .line 759
    .local v3, totalCnt:I
    invoke-static {p2, p1, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduForKTOTA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v2

    .line 761
    .local v2, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v1

    .line 762
    .local v1, map:Ljava/util/HashMap;
    const-string v5, "curIndex"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    const-string/jumbo v5, "totalCnt"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    const-string v5, "3gpp"

    invoke-virtual {p0, v1, v7, v7, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    .line 765
    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 766
    return-void
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1213
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 11
    .parameter "tracker"

    .prologue
    const/4 v3, 0x1

    .line 1148
    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1151
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "destination"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1152
    .local v6, destinationAddress:Ljava/lang/String;
    invoke-virtual {p0, v6, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    :goto_0
    return-void

    .line 1155
    :catch_0
    move-exception v7

    .line 1156
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1162
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v0, "smsc"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v10, v0

    check-cast v10, [B

    .line 1163
    .local v10, smsc:[B
    const-string/jumbo v0, "pdu"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v9, v0

    check-cast v9, [B

    .line 1165
    .local v9, pdu:[B
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1167
    .local v5, reply:Landroid/os/Message;
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSms:  isIms()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isIms()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mImsRetry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMessageRef="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1175
    iget-boolean v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->linkControl:Z

    if-ne v0, v3, :cond_1

    .line 1176
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMSmore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1196
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1200
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    .line 1205
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto/16 :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v4, 0x1

    .line 600
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 602
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p4, v4, v5, v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 609
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz p5, :cond_2

    :goto_1
    invoke-static {p2, p1, p3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v2

    .line 612
    .local v2, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez p2, :cond_1

    .line 613
    sget-object p2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    .line 615
    :cond_1
    if-eqz v2, :cond_3

    .line 616
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v1

    .line 618
    .local v1, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, p4, p5, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v3

    .line 620
    .local v3, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 609
    .end local v1           #map:Ljava/util/HashMap;
    .end local v2           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v3           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 623
    .restart local v2       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_3
    const-string v4, "GSM"

    const-string v5, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 4
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "callbackNumber"
    .parameter "priority"

    .prologue
    .line 633
    if-eqz p5, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 636
    .local v1, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez p2, :cond_0

    .line 637
    sget-object p2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    .line 639
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 640
    .local v0, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, p4, p5, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 642
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 643
    return-void

    .line 633
    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 26
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "confirmId"

    .prologue
    .line 657
    const/16 v22, 0x0

    .line 658
    .local v22, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    const/16 v16, 0x1

    .local v16, curIndex:I
    const/16 v24, 0x1

    .line 660
    .local v24, totalCnt:I
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendTextwithOptions destAddr : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 664
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :goto_0
    return-void

    .line 665
    :catch_0
    move-exception v18

    .line 666
    .local v18, e:Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 671
    .end local v18           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v17

    .line 673
    .local v17, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez p2, :cond_1

    .line 674
    sget-object p2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    .line 713
    :cond_1
    const/16 v19, 0x1

    .line 719
    .local v19, encoding:I
    if-nez v22, :cond_3

    .line 720
    if-eqz p5, :cond_2

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v5 .. v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v21

    .line 729
    .local v21, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v20

    .line 730
    .local v20, map:Ljava/util/HashMap;
    const-string v5, "curIndex"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string/jumbo v5, "totalCnt"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v25

    .line 735
    .local v25, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const/4 v5, 0x0

    move-object/from16 v0, v25

    iput-boolean v5, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->linkControl:Z

    .line 736
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 740
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 741
    .local v15, calendar:Ljava/util/Calendar;
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 742
    .local v23, time:Ljava/lang/Long;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2, v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 720
    .end local v15           #calendar:Ljava/util/Calendar;
    .end local v20           #map:Ljava/util/HashMap;
    .end local v21           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v23           #time:Ljava/lang/Long;
    .end local v25           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 724
    :cond_3
    if-eqz p5, :cond_4

    const/4 v8, 0x1

    :goto_3
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-static/range {v5 .. v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v21

    .restart local v21       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    goto :goto_2

    .end local v21           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_4
    const/4 v8, 0x0

    goto :goto_3
.end method

.method protected sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "destAddr"
    .parameter "noOfOccur"
    .parameter "scptCategory"
    .parameter "scptLanguage"
    .parameter "scptCategoryResult"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 648
    const-string v0, "GSM"

    const-string v1, "SCPT-submit pdu is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 4
    .parameter "mwi"

    .prologue
    .line 1714
    if-gez p1, :cond_1

    .line 1715
    const/4 p1, -0x1

    .line 1722
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 1723
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1725
    .local v1, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    .line 1726
    const/16 v2, 0x16

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1727
    .local v0, onComplete:Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(IILandroid/os/Message;)V

    .line 1731
    .end local v0           #onComplete:Landroid/os/Message;
    :goto_1
    return-void

    .line 1716
    .end local v1           #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const/16 v2, 0xff

    if-le p1, v2, :cond_0

    .line 1719
    const/16 p1, 0xff

    goto :goto_0

    .line 1729
    .restart local v1       #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    const-string v2, "GSM"

    const-string v3, "SIM Records not found, MWI not updated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
