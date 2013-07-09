.class public Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;
.super Landroid/os/Handler;
.source "UsimDataDownloadHandler.java"


# static fields
.field private static final BER_SMS_PP_DOWNLOAD_TAG:I = 0xd1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_UICC:I = 0x81

.field private static final EVENT_SEND_ENVELOPE_RESPONSE:I = 0x2

.field private static final EVENT_START_DATA_DOWNLOAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsimDataDownloadHandler"


# instance fields
.field private final mCI:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "commandsInterface"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    .line 61
    return-void
.end method

.method private acknowledgeSmsWithError(I)V
    .locals 3
    .parameter "cause"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 228
    return-void
.end method

.method private static getEnvelopeBodyLength(II)I
    .locals 2
    .parameter "scAddressLength"
    .parameter "tpduLength"

    .prologue
    .line 150
    add-int/lit8 v0, p1, 0x5

    .line 152
    .local v0, length:I
    const/16 v1, 0x7f

    if-le p1, v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    add-int/2addr v0, v1

    .line 154
    if-eqz p0, :cond_0

    .line 155
    add-int/lit8 v1, v0, 0x2

    add-int v0, v1, p0

    .line 157
    :cond_0
    return v0

    .line 152
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)V
    .locals 17
    .parameter "smsMessage"

    .prologue
    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v2

    .line 81
    .local v2, dcs:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v8

    .line 82
    .local v8, pid:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v7

    .line 84
    .local v7, pdu:[B
    const/4 v13, 0x0

    aget-byte v13, v7, v13

    and-int/lit16 v9, v13, 0xff

    .line 85
    .local v9, scAddressLength:I
    add-int/lit8 v11, v9, 0x1

    .line 86
    .local v11, tpduIndex:I
    array-length v13, v7

    sub-int v12, v13, v11

    .line 88
    .local v12, tpduLength:I
    invoke-static {v9, v12}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->getEnvelopeBodyLength(II)I

    move-result v1

    .line 92
    .local v1, bodyLength:I
    add-int/lit8 v14, v1, 0x1

    const/16 v13, 0x7f

    if-le v1, v13, :cond_0

    const/4 v13, 0x2

    :goto_0
    add-int v10, v14, v13

    .line 94
    .local v10, totalLength:I
    new-array v4, v10, [B

    .line 95
    .local v4, envelope:[B
    const/4 v5, 0x0

    .line 98
    .local v5, index:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .local v6, index:I
    const/16 v13, -0x2f

    aput-byte v13, v4, v5

    .line 99
    const/16 v13, 0x7f

    if-le v1, v13, :cond_4

    .line 100
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    const/16 v13, -0x7f

    aput-byte v13, v4, v6

    .line 102
    :goto_1
    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .restart local v6       #index:I
    int-to-byte v13, v1

    aput-byte v13, v4, v5

    .line 105
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    sget-object v13, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v13

    or-int/lit16 v13, v13, 0x80

    int-to-byte v13, v13

    aput-byte v13, v4, v6

    .line 106
    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .restart local v6       #index:I
    const/4 v13, 0x2

    aput-byte v13, v4, v5

    .line 107
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    const/16 v13, -0x7d

    aput-byte v13, v4, v6

    .line 108
    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .restart local v6       #index:I
    const/16 v13, -0x7f

    aput-byte v13, v4, v5

    .line 111
    if-eqz v9, :cond_3

    .line 112
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    sget-object v13, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v4, v6

    .line 113
    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .restart local v6       #index:I
    int-to-byte v13, v9

    aput-byte v13, v4, v5

    .line 114
    const/4 v13, 0x1

    invoke-static {v7, v13, v4, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    add-int v5, v6, v9

    .line 119
    .end local v6           #index:I
    .restart local v5       #index:I
    :goto_2
    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .restart local v6       #index:I
    sget-object v13, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v13

    or-int/lit16 v13, v13, 0x80

    int-to-byte v13, v13

    aput-byte v13, v4, v5

    .line 120
    const/16 v13, 0x7f

    if-le v12, v13, :cond_2

    .line 121
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    const/16 v13, -0x7f

    aput-byte v13, v4, v6

    .line 123
    :goto_3
    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .restart local v6       #index:I
    int-to-byte v13, v12

    aput-byte v13, v4, v5

    .line 124
    invoke-static {v7, v11, v4, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    add-int v5, v6, v12

    .line 128
    .end local v6           #index:I
    .restart local v5       #index:I
    array-length v13, v4

    if-eq v5, v13, :cond_1

    .line 129
    const-string v13, "UsimDataDownloadHandler"

    const-string/jumbo v14, "startDataDownload() calculated incorrect envelope length, aborting."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v13, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    .line 137
    :goto_4
    return-void

    .line 92
    .end local v4           #envelope:[B
    .end local v5           #index:I
    .end local v10           #totalLength:I
    :cond_0
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 134
    .restart local v4       #envelope:[B
    .restart local v5       #index:I
    .restart local v10       #totalLength:I
    :cond_1
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, encodedEnvelope:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v14, 0x2

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v2, v15, v16

    const/16 v16, 0x1

    aput v8, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-interface {v13, v3, v14}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_4

    .end local v3           #encodedEnvelope:Ljava/lang/String;
    .end local v5           #index:I
    .restart local v6       #index:I
    :cond_2
    move v5, v6

    .end local v6           #index:I
    .restart local v5       #index:I
    goto :goto_3

    .end local v5           #index:I
    .restart local v6       #index:I
    :cond_3
    move v5, v6

    .end local v6           #index:I
    .restart local v5       #index:I
    goto :goto_2

    .end local v5           #index:I
    .restart local v6       #index:I
    :cond_4
    move v5, v6

    .end local v6           #index:I
    .restart local v5       #index:I
    goto/16 :goto_1
.end method

.method private static is7bitDcs(I)Z
    .locals 2
    .parameter "dcs"

    .prologue
    .line 238
    and-int/lit16 v0, p0, 0x8c

    if-eqz v0, :cond_0

    and-int/lit16 v0, p0, 0xf4

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;II)V
    .locals 12
    .parameter "response"
    .parameter "dcs"
    .parameter "pid"

    .prologue
    .line 166
    iget v6, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    .line 167
    .local v6, sw1:I
    iget v7, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    .line 170
    .local v7, sw2:I
    const/16 v8, 0x90

    if-ne v6, v8, :cond_0

    if-eqz v7, :cond_1

    :cond_0
    const/16 v8, 0x91

    if-ne v6, v8, :cond_3

    .line 171
    :cond_1
    const-string v8, "UsimDataDownloadHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USIM data download succeeded: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v5, 0x1

    .line 185
    .local v5, success:Z
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 186
    .local v2, responseBytes:[B
    if-eqz v2, :cond_2

    array-length v8, v2

    if-nez v8, :cond_8

    .line 187
    :cond_2
    if-eqz v5, :cond_7

    .line 188
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 224
    .end local v2           #responseBytes:[B
    .end local v5           #success:Z
    :goto_1
    return-void

    .line 173
    :cond_3
    const/16 v8, 0x93

    if-ne v6, v8, :cond_4

    if-nez v7, :cond_4

    .line 174
    const-string v8, "UsimDataDownloadHandler"

    const-string v9, "USIM data download failed: Toolkit busy"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/16 v8, 0xd4

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    goto :goto_1

    .line 177
    :cond_4
    const/16 v8, 0x62

    if-eq v6, v8, :cond_5

    const/16 v8, 0x63

    if-ne v6, v8, :cond_6

    .line 178
    :cond_5
    const-string v8, "UsimDataDownloadHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USIM data download failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v5, 0x0

    .restart local v5       #success:Z
    goto :goto_0

    .line 181
    .end local v5           #success:Z
    :cond_6
    const-string v8, "UsimDataDownloadHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected SW1/SW2 response from UICC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v5, 0x0

    .restart local v5       #success:Z
    goto :goto_0

    .line 190
    .restart local v2       #responseBytes:[B
    :cond_7
    const/16 v8, 0xd5

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    goto :goto_1

    .line 197
    :cond_8
    const/4 v0, 0x0

    .line 198
    .local v0, index:I
    if-eqz v5, :cond_9

    .line 199
    array-length v8, v2

    add-int/lit8 v8, v8, 0x5

    new-array v4, v8, [B

    .line 200
    .local v4, smsAckPdu:[B
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    const/4 v8, 0x0

    aput-byte v8, v4, v0

    .line 201
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    const/4 v8, 0x7

    aput-byte v8, v4, v1

    .line 210
    :goto_2
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    int-to-byte v8, p3

    aput-byte v8, v4, v0

    .line 211
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    int-to-byte v8, p2

    aput-byte v8, v4, v1

    .line 213
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->is7bitDcs(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 214
    array-length v8, v2

    mul-int/lit8 v8, v8, 0x8

    div-int/lit8 v3, v8, 0x7

    .line 215
    .local v3, septetCount:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    int-to-byte v8, v3

    aput-byte v8, v4, v0

    move v0, v1

    .line 220
    .end local v1           #index:I
    .end local v3           #septetCount:I
    .restart local v0       #index:I
    :goto_3
    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v2, v8, v4, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v5, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 203
    .end local v4           #smsAckPdu:[B
    :cond_9
    array-length v8, v2

    add-int/lit8 v8, v8, 0x6

    new-array v4, v8, [B

    .line 204
    .restart local v4       #smsAckPdu:[B
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const/4 v8, 0x0

    aput-byte v8, v4, v0

    .line 205
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    const/16 v8, -0x2b

    aput-byte v8, v4, v1

    .line 207
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    const/4 v8, 0x7

    aput-byte v8, v4, v0

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_2

    .line 217
    :cond_a
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    array-length v8, v2

    int-to-byte v8, v8

    aput-byte v8, v4, v0

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 248
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 268
    const-string v2, "UsimDataDownloadHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unexpected message, what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    return-void

    .line 250
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)V

    goto :goto_0

    .line 254
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 256
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 257
    const-string v2, "UsimDataDownloadHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UICC Send Envelope failure, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/16 v2, 0xd5

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 264
    .local v1, dcsPid:[I
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;II)V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I
    .locals 2
    .parameter "smsMessage"

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, -0x1

    .line 75
    :goto_0
    return v0

    .line 74
    :cond_0
    const-string v0, "UsimDataDownloadHandler"

    const-string/jumbo v1, "startDataDownload failed to send message to start data download."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x2

    goto :goto_0
.end method
