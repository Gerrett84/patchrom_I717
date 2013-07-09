.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;
    }
.end annotation


# static fields
.field private static final ALLRECEIVE_MODE:B = 0x3t

.field private static final COMMERCIAL_MODE:B = 0x0t

.field private static final COUNT_COLUMN:I = 0x3

.field private static final DESTINATION_PORT_COLUMN:I = 0x2

.field private static final KDDITEST_MODE:B = 0x2t

.field private static final MANUFACTURETEST_MODE:B = 0x1t

.field private static final PDU_COLUMN:I = 0x0

.field private static final PDU_SEQUENCE_PORT_COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final SEQUENCE_COLUMN:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private final DEBUG:Z

.field private mCdmaJudgeSmsType:Lcom/android/internal/telephony/KddiJudgeSmsType;

.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;

.field private mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field protected mSmsDuplicate:Lcom/android/internal/telephony/KddiSmsDuplicate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 563
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pdu"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "sequence"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->PDU_SEQUENCE_PORT_COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"
    .parameter "imsSMSDispatcher"

    .prologue
    const/4 v2, 0x1

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 124
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->DEBUG:Z

    .line 132
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 141
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;

    .line 146
    const-string v0, "CDMA"

    const-string v1, "CdmaSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method private static checkDuplicatePortOmadmWappush([BI)Z
    .locals 6
    .parameter "origPdu"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 1422
    add-int/lit8 p1, p1, 0x4

    .line 1423
    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .line 1424
    .local v1, omaPdu:[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1426
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 1427
    .local v2, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 1430
    .local v3, wspIndex:I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return v4

    .line 1434
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    .line 1437
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1441
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "application/vnd.syncml.notification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1443
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .parameter "sms"

    .prologue
    .line 197
    const/4 v2, 0x0

    .local v2, i:I
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 198
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 199
    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    if-ne v5, v6, :cond_1

    .line 201
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 202
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 203
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 205
    const-string v5, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 197
    .restart local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 1394
    packed-switch p0, :pswitch_data_0

    .line 1406
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 1399
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1401
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 1403
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1394
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected KddiNotifiySmsToApp([[BLcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;)V
    .locals 2
    .parameter "pdus"
    .parameter "accessory"

    .prologue
    .line 1668
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1669
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1670
    invoke-virtual {p2}, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1671
    return-void
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 1360
    const-string/jumbo v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1361
    .local v1, inEcm:Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1391
    :goto_0
    return-void

    .line 1365
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .line 1366
    .local v0, causeCode:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 1367
    const/16 v2, 0x191

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->removeMessages(I)V

    .line 1387
    if-nez v0, :cond_1

    .line 1388
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 1390
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 1232
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method protected clearDuplicatedCbMessages()V
    .locals 2

    .prologue
    .line 1555
    const-string v0, "CDMA"

    const-string v1, "Error! clearDuplicatedCbMessages is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    return-void
.end method

.method protected completeLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;Landroid/database/Cursor;I)Z
    .locals 20
    .parameter "smsb"
    .parameter "cursor"
    .parameter "cursorCount"

    .prologue
    .line 576
    move-object/from16 v16, p1

    check-cast v16, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 577
    .local v16, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    add-int/lit8 v17, p3, 0x1

    move/from16 v0, v17

    new-array v13, v0, [[B

    .line 578
    .local v13, pdus:[[B
    const/4 v14, 0x0

    .line 579
    .local v14, sessionCount:I
    const/4 v4, 0x1

    .line 580
    .local v4, complete:Z
    const/4 v11, 0x0

    .line 581
    .local v11, payload:[B
    const/4 v12, 0x0

    .line 582
    .local v12, payloadStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 584
    .local v2, address:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeqEos()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 585
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeq()I

    move-result v17

    add-int/lit8 v14, v17, 0x1

    .line 586
    add-int/lit8 v17, p3, 0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_0

    .line 587
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[LGU_CBS][1]sessionCount invalid "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " cursorCount = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/16 v17, 0x0

    .line 645
    :goto_0
    return v17

    .line 593
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move/from16 v0, p3

    if-ge v8, v0, :cond_3

    .line 594
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 596
    const/16 v17, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 597
    .local v5, count:I
    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 599
    .local v15, sessionSeq:I
    if-eqz v5, :cond_1

    .line 600
    move v14, v5

    .line 601
    add-int/lit8 v17, p3, 0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_1

    .line 602
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[LGU_CBS][2]sessionCount invalid  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " cursorCount = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/16 v17, 0x0

    goto :goto_0

    .line 607
    :cond_1
    aget-object v17, v13, v15

    if-eqz v17, :cond_2

    .line 608
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[LGU_CBS]duplicated sessionSeq = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " count = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/16 v17, 0x0

    goto :goto_0

    .line 611
    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v17

    aput-object v17, v13, v15

    .line 593
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 615
    .end local v5           #count:I
    .end local v15           #sessionSeq:I
    :cond_3
    if-nez v14, :cond_4

    .line 616
    const-string v17, "CDMA"

    const-string v18, "[LGU_CBS]sessionCount is zero!!!???"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 620
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeq()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v18

    aput-object v18, v13, v17

    .line 622
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 623
    .local v10, output:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .local v3, body:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v14, :cond_7

    .line 625
    aget-object v17, v13, v8

    if-nez v17, :cond_5

    .line 626
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[LGU_CBS]pdu is empty i = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " sessionCount = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_5
    aget-object v17, v13, v8

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v9

    .line 629
    .local v9, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v6

    .line 630
    .local v6, data:[B
    const/16 v17, 0x0

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v6, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 631
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getReplyAddress()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 633
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getReplyAddress()Ljava/lang/String;

    move-result-object v2

    .line 624
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 636
    .end local v6           #data:[B
    .end local v9           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_7
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 637
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 639
    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->replacePdu([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 642
    .end local v3           #body:Ljava/lang/StringBuilder;
    .end local v10           #output:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v7

    .line 643
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 644
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[LGU_CBS] exception at completeLGTCBSPdu "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method protected dispatchBroadcastPdus([[BZ)V
    .locals 4
    .parameter "pdus"
    .parameter "isEmergencyMessage"

    .prologue
    .line 490
    if-eqz p2, :cond_0

    .line 491
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, broadcastIntent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 493
    const-string v1, "format"

    const-string v2, "3gpp2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v1, "CDMA"

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

    .line 495
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 500
    .end local v0           #broadcastIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 498
    :cond_0
    const-string v1, "CDMA"

    const-string v2, "CDMA non emergency messages: not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 23
    .parameter "smsb"

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    const-string v20, "CDMA"

    const-string v21, "dispatchMessage: message is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v20, 0x2

    .line 486
    :goto_0
    return v20

    .line 227
    :cond_0
    const-string/jumbo v20, "ril.cdma.inecmmode"

    const-string v21, "false"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, inEcm:Ljava/lang/String;
    const-string/jumbo v20, "true"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 229
    const/16 v20, -0x1

    goto :goto_0

    .line 232
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsReceiveDisabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 234
    const-string v20, "CDMA"

    const-string v21, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/16 v20, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v15, p1

    .line 239
    check-cast v15, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 242
    .local v15, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 245
    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 248
    const-string v20, "CDMA"

    const-string v21, "Duplicate SMS !!! Discard it "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v20, 0x1

    goto :goto_0

    .line 252
    :cond_3
    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v18

    .line 253
    .local v18, teleService:I
    const/4 v8, 0x0

    .line 254
    .local v8, handled:Z
    const/4 v12, 0x0

    .line 255
    .local v12, originAddress:Ljava/lang/String;
    const/4 v11, 0x0

    .line 256
    .local v11, msginfo:Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    const/4 v10, 0x0

    .line 257
    .local v10, isScptMessage:Z
    const/4 v14, 0x0

    .line 302
    .local v14, preVoicemailCount:I
    const/16 v20, 0x1003

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    const/high16 v20, 0x4

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 304
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getStoredVoiceMessageCount()I

    move-result v14

    .line 305
    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessagePriority()I

    move-result v19

    .line 306
    .local v19, voicemailPriority:I
    const-string v20, "CDMA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "VM prev : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v20, "CDMA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "VM priority : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v20

    move/from16 v0, v20

    if-eq v14, v0, :cond_5

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 312
    .local v17, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 313
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v20, "vm_priority_key_cdma"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 316
    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 319
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v17           #sp:Landroid/content/SharedPreferences;
    :cond_5
    const/4 v8, 0x1

    .line 340
    .end local v19           #voicemailPriority:I
    :cond_6
    :goto_1
    if-eqz v8, :cond_c

    .line 341
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 320
    :cond_7
    const/16 v20, 0x1001

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    const/16 v20, 0x1002

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    const/16 v20, 0x1005

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    :cond_8
    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 324
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 325
    const/4 v8, 0x1

    goto :goto_1

    .line 326
    :cond_9
    const/16 v20, 0x1006

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 327
    const-string v20, "CDMA"

    const-string v21, "Received SCPT Message. "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v10, 0x1

    goto :goto_1

    .line 329
    :cond_a
    const v20, 0x9999

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 330
    const-string v20, "CDMA"

    const-string v21, "Received Unknown Teleservice ID SMS"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v8, 0x1

    goto :goto_1

    .line 332
    :cond_b
    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v20

    if-nez v20, :cond_6

    .line 336
    const/4 v8, 0x1

    goto :goto_1

    .line 344
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v20

    if-nez v20, :cond_d

    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v20

    sget-object v21, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_d

    .line 360
    const/16 v20, 0x3

    goto/16 :goto_0

    .line 363
    :cond_d
    const/16 v20, 0x1004

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v20

    if-nez v20, :cond_e

    .line 367
    const-string v20, "CDMA"

    const-string v21, " MDM RoamingPush Disabled "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 371
    :cond_e
    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v20

    iget v0, v15, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    move/from16 v21, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v20

    goto/16 :goto_0

    .line 381
    :cond_f
    const/16 v20, 0x1001

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    const/16 v20, 0x1002

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    const/16 v20, 0x1005

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    const/16 v20, 0x1006

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    const/16 v20, 0x1

    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCDMAMessageType()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 386
    const/16 v20, 0x4

    goto/16 :goto_0

    .line 431
    :cond_10
    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCDMAMessageType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v20

    const/16 v21, 0x1000

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_11

    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v20

    const/16 v21, 0x1004

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_11

    .line 435
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v13, v0, [[B

    .line 436
    .local v13, pdus:[[B
    const/16 v20, 0x0

    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v21

    aput-object v21, v13, v20

    .line 437
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchBroadcastPdus([[BZ)V

    .line 438
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 441
    .end local v13           #pdus:[[B
    :cond_11
    if-eqz v10, :cond_12

    .line 443
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v13, v0, [[B

    .line 444
    .restart local v13       #pdus:[[B
    const/16 v20, 0x0

    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v21

    aput-object v21, v13, v20

    .line 445
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchScptPdu([[B)V

    .line 446
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 450
    .end local v13           #pdus:[[B
    :cond_12
    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v16

    .line 451
    .local v16, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v16, :cond_13

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    const/16 v20, 0xb84

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 452
    const/4 v7, 0x1

    .line 454
    .local v7, enabled:Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    .line 455
    .local v6, edm:Landroid/sec/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v7

    .line 456
    const-string v20, "CDMA"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isRoamingPushEnabled : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v6           #edm:Landroid/sec/enterprise/EnterpriseDeviceManager;
    :goto_2
    if-nez v7, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 461
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 457
    :catch_0
    move-exception v4

    .line 458
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 463
    .end local v4           #e:Ljava/lang/Exception;
    .end local v7           #enabled:Z
    :cond_13
    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 464
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 486
    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v20

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 152
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "3gpp2"

    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleGetIccSmsDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 175
    const-string v0, "CDMA"

    const-string v1, "handleGetIccSmsDone function is not applicable for CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method protected handleSmsOnIcc(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 166
    const-string v0, "CDMA"

    const-string v1, "handleSmsOnIcc function is not applicable for CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method protected insertLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;I)V
    .locals 5
    .parameter "sms"
    .parameter "messageCount"

    .prologue
    .line 652
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 653
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "date"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    const-string/jumbo v2, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v2, "address"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string/jumbo v2, "reference_number"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionId()I

    move-result v3

    or-int/lit16 v3, v3, -0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    const-string v2, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    const-string/jumbo v2, "sequence"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeq()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 659
    const-string v2, "destination_port"

    const/high16 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 661
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 664
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGU_CBS] exception at insertLGTCBSPdu "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 2
    .parameter "sms"

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;->isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    const-string v0, "CDMA"

    const-string v1, "Duplicate found. Samsung"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const/4 v0, 0x1

    .line 1491
    :goto_0
    return v0

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;->addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 1491
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIms()Z
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    move-result v0

    return v0
.end method

.method protected kddiDispatchPdus([[BLcom/android/internal/telephony/SmsMessageBase;)V
    .locals 4
    .parameter "pdus"
    .parameter "smsb"

    .prologue
    .line 1570
    const/4 v0, 0x0

    .local v0, isSendAckSkip:Z
    move-object v1, p2

    .line 1571
    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 1573
    .local v1, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCDMAMessageType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1574
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->kddiJudgeDeliveryFromServiceCategory(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1659
    :goto_0
    return-void

    .line 1657
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_0
.end method

.method protected kddiJudgeDeliveryFromServiceCategory(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 14
    .parameter "smsb"

    .prologue
    const v13, 0x8021

    const v12, 0x8001

    const/16 v11, 0x3f

    const/16 v10, 0x21

    const/4 v9, 0x1

    .line 1679
    const/4 v3, 0x0

    .line 1682
    .local v3, maintenanceMode:I
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v7, "com.kddi.maintenanceMode"

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1683
    .local v0, context:Landroid/content/Context;
    const-string/jumbo v6, "pref"

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1684
    .local v4, pref:Landroid/content/SharedPreferences;
    const-string v6, "maintenanceMode"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1690
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #pref:Landroid/content/SharedPreferences;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v5

    .line 1691
    .local v5, serviceCategory:I
    const/4 v2, 0x0

    .line 1692
    .local v2, isDelivery:Z
    packed-switch v3, :pswitch_data_0

    .line 1719
    :cond_0
    :goto_1
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kddiJudgeDeliveryFromServiceCategory maintenanceMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " serviceCategory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isDelivery: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    return v2

    .line 1685
    .end local v2           #isDelivery:Z
    .end local v5           #serviceCategory:I
    :catch_0
    move-exception v1

    .line 1686
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CDMA"

    const-string v7, "maintenanceMode app not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1694
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #isDelivery:Z
    .restart local v5       #serviceCategory:I
    :pswitch_0
    if-eq v5, v9, :cond_1

    if-gt v10, v5, :cond_0

    if-gt v5, v11, :cond_0

    .line 1695
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 1699
    :pswitch_1
    if-eq v5, v12, :cond_2

    if-gt v13, v5, :cond_0

    const v6, 0x803f

    if-gt v5, v6, :cond_0

    .line 1700
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 1704
    :pswitch_2
    const v6, 0xc001

    if-eq v5, v6, :cond_3

    const v6, 0xc021

    if-gt v6, v5, :cond_0

    const v6, 0xc03f

    if-gt v5, v6, :cond_0

    .line 1705
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 1709
    :pswitch_3
    if-eq v5, v9, :cond_6

    if-gt v10, v5, :cond_4

    if-le v5, v11, :cond_6

    :cond_4
    if-eq v5, v12, :cond_6

    if-gt v13, v5, :cond_5

    const v6, 0x803f

    if-le v5, v6, :cond_6

    :cond_5
    const v6, 0xc001

    if-eq v5, v6, :cond_6

    const v6, 0xc021

    if-gt v6, v5, :cond_0

    const v6, 0xc03f

    if-gt v5, v6, :cond_0

    .line 1712
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 1692
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;)I
    .locals 15
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    .line 513
    const/4 v11, 0x0

    .line 515
    .local v11, index:I
    const-string v1, "CDMA"

    const-string v3, "Received a WAP SMS  - processCdmaWapPdu"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    aget-byte v1, p1, v11

    and-int/lit16 v13, v1, 0xff

    .line 517
    .local v13, msgType:I
    if-eqz v13, :cond_0

    .line 518
    const-string v1, "CDMA"

    const-string v3, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v1, 0x1

    move v11, v12

    .line 557
    .end local v12           #index:I
    .restart local v11       #index:I
    :goto_0
    return v1

    .line 521
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_0
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v6, v1, 0xff

    .line 522
    .local v6, totalSegments:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v5, v1, 0xff

    .line 524
    .local v5, segment:I
    if-lt v5, v6, :cond_1

    .line 525
    const-string v1, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WDP bad segment #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expecting 0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v1, 0x1

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_0

    .line 530
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_1
    const/4 v14, 0x0

    .line 531
    .local v14, sourcePort:I
    const/4 v9, 0x0

    .line 532
    .local v9, destinationPort:I
    if-nez v5, :cond_2

    .line 534
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v14, v1, 0x8

    .line 535
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v14, v1

    .line 536
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v9, v1, 0x8

    .line 537
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v9, v1

    .line 540
    const-string v1, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WAP Push processCdmaWapPdu mCheckForDuplicatePortsInOmadmWapPush="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v1, :cond_2

    .line 542
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkDuplicatePortOmadmWappush([BI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 543
    add-int/lit8 v11, v12, 0x4

    .line 549
    .end local v12           #index:I
    .restart local v11       #index:I
    :goto_1
    const-string v1, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " !!! Received WAP PDU. Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", src-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dst-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segment# = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    move-object/from16 v0, p1

    array-length v1, v0

    sub-int/2addr v1, v11

    new-array v2, v1, [B

    .line 555
    .local v2, userData:[B
    const/4 v1, 0x0

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int/2addr v3, v11

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZ)I

    move-result v1

    goto/16 :goto_0

    .end local v2           #userData:[B
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_2
    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_1
.end method

.method protected processLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 29
    .parameter "sms"

    .prologue
    .line 673
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionId()I

    move-result v3

    or-int/lit16 v0, v3, -0x100

    move/from16 v23, v0

    .line 674
    .local v23, referenceNumber:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeq()I

    move-result v25

    .line 675
    .local v25, sequenceNumber:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeqEos()I

    move-result v26

    .line 676
    .local v26, sessionSeqEos:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v14

    .line 677
    .local v14, address:Ljava/lang/String;
    const/16 v19, 0x0

    .line 678
    .local v19, messageCount:I
    const/4 v15, 0x0

    .line 679
    .local v15, cursor:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 680
    .local v16, cursorCount:I
    const/16 v20, 0x0

    .line 681
    .local v20, okToDispatch:Z
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]processLGTCBSPdu referenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "sessionSeqEos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :try_start_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 686
    .local v22, refNumber:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    .line 687
    .local v24, seqNumber:Ljava/lang/String;
    const/high16 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 689
    .local v17, destPort:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->PDU_SEQUENCE_PORT_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v6, "address=? AND reference_number=? AND sequence=? AND destination_port=?"

    const/4 v8, 0x4

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v14, v7, v8

    const/4 v8, 0x1

    aput-object v22, v7, v8

    const/4 v8, 0x2

    aput-object v24, v7, v8

    const/4 v8, 0x3

    aput-object v17, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 694
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 695
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding duplicate message segment from address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    const/4 v3, 0x1

    .line 775
    if-eqz v15, :cond_0

    .line 776
    .end local v17           #destPort:Ljava/lang/String;
    .end local v22           #refNumber:Ljava/lang/String;
    .end local v24           #seqNumber:Ljava/lang/String;
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_0
    return v3

    .line 700
    .restart local v17       #destPort:Ljava/lang/String;
    .restart local v22       #refNumber:Ljava/lang/String;
    .restart local v24       #seqNumber:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 703
    const-string/jumbo v27, "reference_number<>? AND destination_port=?"

    .line 704
    .local v27, whereDel:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v3, 0x0

    aput-object v22, v28, v3

    const/4 v3, 0x1

    aput-object v17, v28, v3

    .line 705
    .local v28, whereDelArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 707
    const-string v6, "address=? AND reference_number=? AND destination_port=?"

    .line 708
    .local v6, where:Ljava/lang/String;
    const-string v11, "address=? AND reference_number=? AND destination_port=? AND count<>0"

    .line 709
    .local v11, whereEOS:Ljava/lang/String;
    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v14, v7, v3

    const/4 v3, 0x1

    aput-object v22, v7, v3

    const/4 v3, 0x2

    aput-object v17, v7, v3

    .line 710
    .local v7, whereArgs:[Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_5

    .line 711
    add-int/lit8 v19, v25, 0x1

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->PDU_SEQUENCE_PORT_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 713
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 714
    add-int/lit8 v3, v16, 0x1

    move/from16 v0, v19

    if-le v3, v0, :cond_2

    .line 715
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]cursorCount goes against messageCount[1]???!!!! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messageCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v3, 0x1

    .line 775
    if-eqz v15, :cond_0

    goto :goto_0

    .line 717
    :cond_2
    add-int/lit8 v3, v16, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_4

    .line 718
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]collect the complete set of sequence! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->completeLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;Landroid/database/Cursor;I)Z

    move-result v20

    .line 759
    :goto_1
    if-eqz v20, :cond_3

    .line 760
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v21, v0

    .line 761
    .local v21, pdus:[[B
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v4

    aput-object v4, v21, v3

    .line 764
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 765
    const-string v3, "CDMA"

    const-string v4, "[LGU_CBS]dispatchPdus!! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPdus([[B)V

    .line 769
    .end local v21           #pdus:[[B
    :cond_3
    const/4 v3, 0x1

    .line 775
    if-eqz v15, :cond_0

    goto/16 :goto_0

    .line 722
    :cond_4
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]EOS has comed but it can\'t make complete set! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->insertLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 770
    .end local v6           #where:Ljava/lang/String;
    .end local v7           #whereArgs:[Ljava/lang/String;
    .end local v11           #whereEOS:Ljava/lang/String;
    .end local v17           #destPort:Ljava/lang/String;
    .end local v22           #refNumber:Ljava/lang/String;
    .end local v24           #seqNumber:Ljava/lang/String;
    .end local v27           #whereDel:Ljava/lang/String;
    .end local v28           #whereDelArgs:[Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 771
    .local v18, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 772
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS] exception at processLGTCBSPdu "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 773
    const/4 v3, 0x1

    .line 775
    if-eqz v15, :cond_0

    goto/16 :goto_0

    .line 727
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v7       #whereArgs:[Ljava/lang/String;
    .restart local v11       #whereEOS:Ljava/lang/String;
    .restart local v17       #destPort:Ljava/lang/String;
    .restart local v22       #refNumber:Ljava/lang/String;
    .restart local v24       #seqNumber:Ljava/lang/String;
    .restart local v27       #whereDel:Ljava/lang/String;
    .restart local v28       #whereDelArgs:[Ljava/lang/String;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v10, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->PDU_SEQUENCE_PORT_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 728
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 729
    const/4 v3, 0x1

    move/from16 v0, v16

    if-le v0, v3, :cond_6

    .line 731
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]EOS is more than one???!!!! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v3, 0x1

    .line 775
    if-eqz v15, :cond_0

    goto/16 :goto_0

    .line 733
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_a

    .line 734
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 735
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 736
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 738
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->PDU_SEQUENCE_PORT_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 739
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 740
    add-int/lit8 v3, v16, 0x1

    move/from16 v0, v19

    if-le v3, v0, :cond_7

    .line 741
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]cursorCount goes against messageCount[2]???!!!! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messageCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v3, 0x1

    .line 775
    if-eqz v15, :cond_0

    goto/16 :goto_0

    .line 743
    :cond_7
    add-int/lit8 v3, v16, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_8

    .line 744
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]collect the complete set of sequence! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->completeLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;Landroid/database/Cursor;I)Z

    move-result v20

    goto/16 :goto_1

    .line 748
    :cond_8
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]It\'s EOS but it can\'t make complete set! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->insertLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 775
    .end local v6           #where:Ljava/lang/String;
    .end local v7           #whereArgs:[Ljava/lang/String;
    .end local v11           #whereEOS:Ljava/lang/String;
    .end local v17           #destPort:Ljava/lang/String;
    .end local v22           #refNumber:Ljava/lang/String;
    .end local v24           #seqNumber:Ljava/lang/String;
    .end local v27           #whereDel:Ljava/lang/String;
    .end local v28           #whereDelArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_9

    .line 776
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_9
    throw v3

    .line 753
    .restart local v6       #where:Ljava/lang/String;
    .restart local v7       #whereArgs:[Ljava/lang/String;
    .restart local v11       #whereEOS:Ljava/lang/String;
    .restart local v17       #destPort:Ljava/lang/String;
    .restart local v22       #refNumber:Ljava/lang/String;
    .restart local v24       #seqNumber:Ljava/lang/String;
    .restart local v27       #whereDel:Ljava/lang/String;
    .restart local v28       #whereDelArgs:[Ljava/lang/String;
    :cond_a
    :try_start_4
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]EOS has not been arrived yet cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->insertLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1
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

    .line 786
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p5, v0, v1, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v6

    .line 790
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 795
    .end local v6           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz p6, :cond_1

    :goto_1
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v5

    .local v5, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 798
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v7

    .line 799
    .local v7, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, p5, p6, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v8

    .line 801
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 795
    .end local v5           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v7           #map:Ljava/util/HashMap;
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .parameter "destAddr"
    .parameter "scAddr"
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
    .line 962
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRemainingMessages:I

    move/from16 v18, v0

    if-lez v18, :cond_1

    .line 965
    const-string v18, "CDMA"

    const-string v19, "Sending multipart message already in progress. Can\'t send another multipart message."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_9

    .line 967
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    .line 968
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    .line 970
    .local v13, sentIntent:Landroid/app/PendingIntent;
    const/16 v18, 0x1

    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 971
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v8

    .line 972
    .local v8, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v18, "CDMA"

    const-string v19, "failed to send error result"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 978
    .end local v8           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v9           #i:I
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRemainingMessages:I

    .line 980
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v12, v0, 0xff

    .line 981
    .local v12, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 982
    .local v11, msgCount:I
    const/4 v7, 0x0

    .line 984
    .local v7, encoding:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_2
    if-ge v9, v11, :cond_4

    .line 985
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v6

    .line 986
    .local v6, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v0, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v7, v0, :cond_3

    if-eqz v7, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_3

    .line 989
    :cond_2
    iget v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 984
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 993
    .end local v6           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_9

    .line 994
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 995
    .local v4, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v12, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 996
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    iput v0, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 997
    iput v11, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 998
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 999
    new-instance v14, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1000
    .local v14, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v4, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1002
    const/4 v13, 0x0

    .line 1003
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_5

    .line 1004
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 1007
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :cond_5
    const/4 v5, 0x0

    .line 1008
    .local v5, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_6

    .line 1009
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 1012
    .restart local v5       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1013
    .local v17, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1015
    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1017
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_7

    .line 1019
    const/16 v18, 0x9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1025
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1031
    if-eqz v5, :cond_8

    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_8

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 1034
    .local v15, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 1036
    .local v10, map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v13, v5, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v16

    .line 1038
    .local v16, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 993
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1023
    .end local v10           #map:Ljava/util/HashMap;
    .end local v15           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v16           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_7
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_4

    .line 1031
    :cond_8
    const/16 v18, 0x0

    goto :goto_5

    .line 1040
    .end local v4           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v5           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v7           #encoding:I
    .end local v11           #msgCount:I
    .end local v12           #refNumber:I
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    .end local v14           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v17           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_9
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 21
    .parameter "destAddr"
    .parameter "scAddr"
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
    .line 1053
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRemainingMessages:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 1056
    const-string v19, "CDMA"

    const-string v20, "Sending multipart message already in progress. Can\'t send another multipart message."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_9

    .line 1058
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v10, :cond_0

    .line 1059
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    .line 1061
    .local v14, sentIntent:Landroid/app/PendingIntent;
    const/16 v19, 0x1

    :try_start_0
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    .end local v14           #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1062
    .restart local v14       #sentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    .line 1063
    .local v9, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v19, "CDMA"

    const-string v20, "failed to send error result"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1069
    .end local v9           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v10           #i:I
    .end local v14           #sentIntent:Landroid/app/PendingIntent;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRemainingMessages:I

    .line 1071
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v13, v0, 0xff

    .line 1072
    .local v13, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1073
    .local v12, msgCount:I
    const/4 v8, 0x0

    .line 1075
    .local v8, encoding:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    if-ge v10, v12, :cond_4

    .line 1076
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    .line 1077
    .local v7, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v0, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v8, v0, :cond_3

    if-eqz v8, :cond_2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_3

    .line 1080
    :cond_2
    iget v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1075
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1084
    .end local v7           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v12, :cond_9

    .line 1085
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1086
    .local v5, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v13, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1087
    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    iput v0, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1088
    iput v12, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1089
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1090
    new-instance v15, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v15}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1091
    .local v15, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v5, v15, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1093
    const/4 v14, 0x0

    .line 1094
    .restart local v14       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v10, :cond_5

    .line 1095
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #sentIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 1098
    .restart local v14       #sentIntent:Landroid/app/PendingIntent;
    :cond_5
    const/4 v6, 0x0

    .line 1099
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v10, :cond_6

    .line 1100
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 1103
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6
    new-instance v18, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1104
    .local v18, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1106
    move-object/from16 v0, v18

    iput-object v15, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1108
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_7

    .line 1110
    const/16 v19, 0x9

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1116
    :goto_4
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1122
    if-eqz v6, :cond_8

    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_8

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, p6

    move/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v16

    .line 1125
    .local v16, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v11

    .line 1127
    .local v11, map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v14, v6, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v17

    .line 1129
    .local v17, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1084
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1114
    .end local v11           #map:Ljava/util/HashMap;
    .end local v16           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v17           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_7
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_4

    .line 1122
    :cond_8
    const/16 v19, 0x0

    goto :goto_5

    .line 1131
    .end local v5           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v8           #encoding:I
    .end local v12           #msgCount:I
    .end local v13           #refNumber:I
    .end local v14           #sentIntent:Landroid/app/PendingIntent;
    .end local v15           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v18           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_9
    return-void
.end method

.method protected sendMultipartTextDomestic(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
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
    .line 1136
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 20
    .parameter "destAddr"
    .parameter "scAddr"
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
    .line 1151
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRemainingMessages:I

    move/from16 v18, v0

    if-lez v18, :cond_1

    .line 1154
    const-string v18, "CDMA"

    const-string v19, "Sending multipart message already in progress. Can\'t send another multipart message."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_9

    .line 1156
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    .line 1157
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    .line 1159
    .local v13, sentIntent:Landroid/app/PendingIntent;
    const/16 v18, 0x1

    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1160
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v8

    .line 1161
    .local v8, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v18, "CDMA"

    const-string v19, "failed to send error result"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1167
    .end local v8           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v9           #i:I
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRemainingMessages:I

    .line 1169
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v12, v0, 0xff

    .line 1170
    .local v12, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1171
    .local v11, msgCount:I
    const/4 v7, 0x0

    .line 1173
    .local v7, encoding:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_2
    if-ge v9, v11, :cond_4

    .line 1174
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v6

    .line 1175
    .local v6, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v0, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v7, v0, :cond_3

    if-eqz v7, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_3

    .line 1178
    :cond_2
    iget v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1173
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1182
    .end local v6           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_9

    .line 1183
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1184
    .local v4, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v12, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1185
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    iput v0, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1186
    iput v11, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1187
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1188
    new-instance v14, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1189
    .local v14, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v4, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1191
    const/4 v13, 0x0

    .line 1192
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_5

    .line 1193
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 1196
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :cond_5
    const/4 v5, 0x0

    .line 1197
    .local v5, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_6

    .line 1198
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 1201
    .restart local v5       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1202
    .local v17, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1203
    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1205
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_7

    .line 1206
    const/16 v18, 0x9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1210
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1215
    if-eqz v5, :cond_8

    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_8

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 1218
    .local v15, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 1220
    .local v10, map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v13, v5, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v16

    .line 1222
    .local v16, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1182
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1208
    .end local v10           #map:Ljava/util/HashMap;
    .end local v15           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v16           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_7
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_4

    .line 1215
    :cond_8
    const/16 v18, 0x0

    goto :goto_5

    .line 1225
    .end local v4           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v5           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v7           #encoding:I
    .end local v11           #msgCount:I
    .end local v12           #refNumber:I
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    .end local v14           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v17           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_9
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 12
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    .line 1241
    const/4 v9, 0x1

    invoke-virtual {p0, p1, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1243
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v10, v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :goto_0
    return-void

    .line 1244
    :catch_0
    move-exception v3

    .line 1245
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1251
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1252
    .local v8, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1253
    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1254
    const/4 v9, 0x1

    move/from16 v0, p5

    if-ne v0, v9, :cond_1

    .line 1255
    const/16 v9, 0x9

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1259
    :goto_1
    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1265
    if-eqz p7, :cond_2

    if-eqz p8, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-static {p1, v8, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v5

    .line 1268
    .local v5, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v4

    .line 1270
    .local v4, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v4, v0, v1, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .line 1272
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1274
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1275
    .local v2, calendar:Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1276
    .local v6, time:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0, p1, v9, p3, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1257
    .end local v2           #calendar:Ljava/util/Calendar;
    .end local v4           #map:Ljava/util/HashMap;
    .end local v5           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v6           #time:Ljava/lang/Long;
    .end local v7           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v9, 0x4

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_1

    .line 1265
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method protected sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 941
    const-string v3, "CDMA"

    const-string/jumbo v4, "sendOTADomestic"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-static {p2, p1, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPduForKTOTA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 945
    .local v1, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 946
    .local v0, map:Ljava/util/HashMap;
    const-string v3, "3gpp"

    invoke-virtual {p0, v0, v5, v5, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 947
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 948
    return-void
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1354
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 9
    .parameter "tracker"

    .prologue
    const/4 v6, 0x1

    .line 1299
    iget-object v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1302
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "destination"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1303
    .local v0, destinationAddress:Ljava/lang/String;
    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1305
    :try_start_0
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    :goto_0
    return-void

    .line 1306
    :catch_0
    move-exception v1

    .line 1307
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1314
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v5, "pdu"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v3, v5

    check-cast v3, [B

    .line 1316
    .local v3, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1318
    .local v4, reply:Landroid/os/Message;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendSms:  isIms()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mRetryCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mImsRetry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMessageRef="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SS="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1341
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto :goto_0

    .line 1343
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface {v5, v3, v6, v7, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 1346
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto/16 :goto_0
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 1282
    const-string/jumbo v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1285
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 1286
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 809
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 811
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p4, v6, v7, v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_0
    return-void

    .line 813
    :catch_0
    move-exception v1

    .line 814
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 818
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz p5, :cond_1

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x0

    invoke-static {p2, p1, p3, v6, v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    .line 821
    .local v3, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v2

    .line 822
    .local v2, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, p4, p5, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v5

    .line 824
    .local v5, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 826
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 827
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 828
    .local v4, time:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, p3, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 818
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v2           #map:Ljava/util/HashMap;
    .end local v3           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v4           #time:Ljava/lang/Long;
    .end local v5           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 17
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "callbackNumber"
    .parameter "priority"

    .prologue
    .line 835
    if-eqz p5, :cond_0

    const/4 v7, 0x1

    :goto_0
    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v4 .. v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v14

    .line 839
    .local v14, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 841
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_1
    return-void

    .line 835
    .end local v14           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 843
    .restart local v14       #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v12

    .line 844
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 848
    .end local v12           #e:Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v13

    .line 849
    .local v13, map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v13, v1, v2, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v16

    .line 851
    .local v16, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 853
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 854
    .local v11, calendar:Ljava/util/Calendar;
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 855
    .local v15, time:Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 19
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
    .line 886
    const/4 v12, 0x1

    .local v12, curIndex:I
    const/16 v17, 0x1

    .line 887
    .local v17, totalCnt:I
    const/4 v9, 0x0

    .line 889
    .local v9, senderAddr:Ljava/lang/String;
    if-lez p10, :cond_0

    .line 890
    const-string v4, "CDMA"

    const-string v5, "handleStatusReport is a special GSM function, should never be called in CDMA!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :goto_0
    return-void

    .line 894
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 896
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 897
    :catch_0
    move-exception v13

    .line 898
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 916
    .end local v13           #e:Ljava/lang/Exception;
    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 917
    :cond_2
    if-eqz p5, :cond_3

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 922
    .local v15, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v14

    .line 923
    .local v14, map:Ljava/util/HashMap;
    const-string v4, "curIndex"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-string/jumbo v4, "totalCnt"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v14, v1, v2, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v18

    .line 928
    .local v18, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 931
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 932
    .local v11, calendar:Ljava/util/Calendar;
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 933
    .local v16, time:Ljava/lang/Long;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 917
    .end local v11           #calendar:Ljava/util/Calendar;
    .end local v14           #map:Ljava/util/HashMap;
    .end local v15           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v16           #time:Ljava/lang/Long;
    .end local v18           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 919
    :cond_4
    if-eqz p5, :cond_5

    const/4 v7, 0x1

    :goto_3
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-static/range {v4 .. v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v15

    .restart local v15       #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    goto :goto_2

    .end local v15           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const/4 v7, 0x0

    goto :goto_3
.end method

.method protected sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "noOfOccur"
    .parameter "scptCategory"
    .parameter "scptLanguage"
    .parameter "scptCategoryResult"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v6, 0x0

    .line 864
    const/4 v1, 0x0

    .line 866
    .local v1, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sending SCPT result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;IIII)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 870
    invoke-virtual {p0, p1, v6, v6, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 871
    .local v0, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, p6, p7, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 874
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 876
    return-void
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 1469
    if-gez p1, :cond_1

    .line 1470
    const/4 p1, -0x1

    .line 1477
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 1479
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->storeVoiceMailCount()V

    .line 1480
    return-void

    .line 1471
    :cond_1
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 1474
    const/16 p1, 0x63

    goto :goto_0
.end method

.method updateMessageWaitingIndicator(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 1460
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 1461
    return-void

    .line 1460
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
