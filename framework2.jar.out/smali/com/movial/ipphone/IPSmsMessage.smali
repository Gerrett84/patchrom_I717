.class public Lcom/movial/ipphone/IPSmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "IPSmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/IPSmsMessage$PduParser;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IPSmsMessage"

.field private static mMessageReference:I


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private dischargeTimeMillis:J

.field private forSubmit:Z

.field private isStatusReportMessage:Z

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field private mti:I

.field private protocolIdentifier:I

.field private recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private replyPathPresent:Z

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    sput v0, Lcom/movial/ipphone/IPSmsMessage;->mMessageReference:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 110
    iput-boolean v0, p0, Lcom/movial/ipphone/IPSmsMessage;->replyPathPresent:Z

    .line 136
    iput-boolean v0, p0, Lcom/movial/ipphone/IPSmsMessage;->isStatusReportMessage:Z

    .line 541
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 3
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    .line 840
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 842
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez v1, :cond_0

    .line 843
    new-instance v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 844
    .restart local v1       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 845
    .local v0, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 846
    const/16 v2, 0x8c

    if-le v0, v2, :cond_1

    .line 847
    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 849
    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 855
    :goto_0
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 857
    .end local v0           #octets:I
    :cond_0
    return-object v1

    .line 852
    .restart local v0       #octets:I
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 853
    rsub-int v2, v0, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
.end method

.method public static createFromEfRecord(I[B)Lcom/movial/ipphone/IPSmsMessage;
    .locals 7
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 207
    :try_start_0
    new-instance v1, Lcom/movial/ipphone/IPSmsMessage;

    invoke-direct {v1}, Lcom/movial/ipphone/IPSmsMessage;-><init>()V

    .line 209
    .local v1, msg:Lcom/movial/ipphone/IPSmsMessage;
    iput p0, v1, Lcom/movial/ipphone/IPSmsMessage;->indexOnIcc:I

    .line 214
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 215
    const-string v5, "IPSmsMessage"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 232
    .end local v1           #msg:Lcom/movial/ipphone/IPSmsMessage;
    :goto_0
    return-object v1

    .line 219
    .restart local v1       #msg:Lcom/movial/ipphone/IPSmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/movial/ipphone/IPSmsMessage;->statusOnIcc:I

    .line 222
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 226
    .local v3, size:I
    new-array v2, v3, [B

    .line 227
    .local v2, pdu:[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    invoke-direct {v1, v2}, Lcom/movial/ipphone/IPSmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v1           #msg:Lcom/movial/ipphone/IPSmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 231
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "IPSmsMessage"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 232
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/movial/ipphone/IPSmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 146
    :try_start_0
    new-instance v1, Lcom/movial/ipphone/IPSmsMessage;

    invoke-direct {v1}, Lcom/movial/ipphone/IPSmsMessage;-><init>()V

    .line 147
    .local v1, msg:Lcom/movial/ipphone/IPSmsMessage;
    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPSmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1           #msg:Lcom/movial/ipphone/IPSmsMessage;
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "IPSmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 393
    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 395
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 397
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 399
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 400
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 407
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 408
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    return-object v0

    .line 404
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method public static getPreviousMessageReference()I
    .locals 1

    .prologue
    .line 1287
    sget v0, Lcom/movial/ipphone/IPSmsMessage;->mMessageReference:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v7, 0x0

    .line 443
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 444
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 445
    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 446
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 448
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 449
    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 451
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 453
    .local v4, smsHeaderData:[B
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 454
    const-string v5, "IPSmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v2, 0x0

    .line 482
    :goto_0
    return-object v2

    .line 459
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 460
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v2}, Lcom/movial/ipphone/IPSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 467
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 472
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 475
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 476
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 479
    array-length v5, p3

    invoke-virtual {v0, p3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 481
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/movial/ipphone/IPSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    const/4 v5, 0x0

    .line 259
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/movial/ipphone/IPSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 283
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 284
    :cond_0
    const/4 v7, 0x0

    .line 381
    :goto_0
    return-object v7

    .line 287
    :cond_1
    if-nez p5, :cond_4

    .line 289
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/movial/ipphone/IPSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v9

    .line 290
    .local v9, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    .line 291
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    .line 292
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    .line 294
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_4

    if-nez p6, :cond_2

    if-eqz p7, :cond_4

    .line 295
    :cond_2
    if-eqz p4, :cond_5

    .line 296
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 297
    .local v8, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v12, v0, :cond_3

    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v12, v0, :cond_4

    .line 299
    :cond_3
    const-string v12, "IPSmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating language table in SMS header: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 303
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 304
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 315
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    :goto_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 317
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_6

    const/16 v12, 0x40

    :goto_2
    or-int/lit8 v12, v12, 0x1

    int-to-byte v6, v12

    .line 318
    .local v6, mtiByte:B
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v6, v1, v7}, Lcom/movial/ipphone/IPSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 325
    .local v4, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_7

    .line 326
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 352
    .local v11, userData:[B
    :goto_3
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_9

    .line 353
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_8

    .line 355
    const-string v12, "IPSmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " septets)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 307
    .end local v4           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v6           #mtiByte:B
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11           #userData:[B
    .restart local v9       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_5
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 308
    .restart local v8       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 309
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 310
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto :goto_1

    .line 317
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 330
    .restart local v4       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #mtiByte:B
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/movial/ipphone/IPSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .restart local v11       #userData:[B
    goto :goto_3

    .line 331
    .end local v11           #userData:[B
    :catch_0
    move-exception v10

    .line 332
    .local v10, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v12, "IPSmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 335
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 338
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 342
    .local v5, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/movial/ipphone/IPSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    .line 343
    .restart local v11       #userData:[B
    const/16 p5, 0x3

    goto :goto_3

    .line 344
    .end local v11           #userData:[B
    :catch_2
    move-exception v10

    .line 345
    .restart local v10       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "IPSmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 366
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #userData:[B
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 379
    :goto_4
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 380
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 368
    :cond_9
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x8c

    if-le v12, v13, :cond_a

    .line 370
    const-string v12, "IPSmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 375
    :cond_a
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v3, 0x0

    .line 500
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 504
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 505
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 512
    :goto_0
    if-eqz p3, :cond_0

    .line 514
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 517
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 522
    sget v2, Lcom/movial/ipphone/IPSmsMessage;->mMessageReference:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lcom/movial/ipphone/IPSmsMessage;->mMessageReference:I

    rem-int/lit16 v2, v2, 0x100

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 526
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 530
    .local v1, daBytes:[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 534
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 537
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 538
    return-object v0

    .line 507
    .end local v1           #daBytes:[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_2
    move v2, v3

    .line 530
    goto :goto_1
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 242
    .local v0, len:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 244
    .local v1, smscLen:I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/movial/ipphone/IPSmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    .line 186
    :try_start_0
    new-instance v1, Lcom/movial/ipphone/IPSmsMessage;

    invoke-direct {v1}, Lcom/movial/ipphone/IPSmsMessage;-><init>()V

    .line 187
    .local v1, msg:Lcom/movial/ipphone/IPSmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/movial/ipphone/IPSmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1           #msg:Lcom/movial/ipphone/IPSmsMessage;
    :goto_0
    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "IPSmsMessage"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/movial/ipphone/IPSmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 174
    :try_start_0
    new-instance v1, Lcom/movial/ipphone/IPSmsMessage;

    invoke-direct {v1}, Lcom/movial/ipphone/IPSmsMessage;-><init>()V

    .line 175
    .local v1, msg:Lcom/movial/ipphone/IPSmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/movial/ipphone/IPSmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1           #msg:Lcom/movial/ipphone/IPSmsMessage;
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "IPSmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parsePdu([B)V
    .locals 5
    .parameter "pdu"

    .prologue
    .line 962
    iput-object p1, p0, Lcom/movial/ipphone/IPSmsMessage;->mPdu:[B

    .line 966
    new-instance v1, Lcom/movial/ipphone/IPSmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;-><init>([B)V

    .line 968
    .local v1, p:Lcom/movial/ipphone/IPSmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/movial/ipphone/IPSmsMessage;->scAddress:Ljava/lang/String;

    .line 970
    iget-object v2, p0, Lcom/movial/ipphone/IPSmsMessage;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 978
    :cond_0
    invoke-virtual {v1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getByte()I

    move-result v0

    .line 980
    .local v0, firstByte:I
    const-string v2, "IPSmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mti: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/movial/ipphone/IPSmsMessage;->mti:I

    .line 983
    iget v2, p0, Lcom/movial/ipphone/IPSmsMessage;->mti:I

    packed-switch v2, :pswitch_data_0

    .line 996
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 989
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/movial/ipphone/IPSmsMessage;->parseSmsDeliver(Lcom/movial/ipphone/IPSmsMessage$PduParser;I)V

    .line 998
    :goto_0
    return-void

    .line 992
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/movial/ipphone/IPSmsMessage;->parseSmsStatusReport(Lcom/movial/ipphone/IPSmsMessage$PduParser;I)V

    goto :goto_0

    .line 983
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/movial/ipphone/IPSmsMessage$PduParser;I)V
    .locals 6
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1050
    and-int/lit16 v1, p2, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/movial/ipphone/IPSmsMessage;->replyPathPresent:Z

    .line 1052
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/movial/ipphone/IPSmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1054
    iget-object v1, p0, Lcom/movial/ipphone/IPSmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    .line 1061
    :cond_0
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/movial/ipphone/IPSmsMessage;->protocolIdentifier:I

    .line 1065
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    .line 1068
    const-string v1, "IPSmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS TP-PID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/movial/ipphone/IPSmsMessage;->protocolIdentifier:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " data coding scheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/movial/ipphone/IPSmsMessage;->scTimeMillis:J

    .line 1076
    and-int/lit8 v1, p2, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 1078
    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/movial/ipphone/IPSmsMessage;->parseUserData(Lcom/movial/ipphone/IPSmsMessage$PduParser;Z)V

    .line 1079
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v3

    .line 1050
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1076
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/movial/ipphone/IPSmsMessage$PduParser;I)V
    .locals 8
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1007
    iput-boolean v4, p0, Lcom/movial/ipphone/IPSmsMessage;->isStatusReportMessage:Z

    .line 1010
    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/movial/ipphone/IPSmsMessage;->forSubmit:Z

    .line 1012
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/movial/ipphone/IPSmsMessage;->messageRef:I

    .line 1014
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPSmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1016
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/movial/ipphone/IPSmsMessage;->scTimeMillis:J

    .line 1018
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/movial/ipphone/IPSmsMessage;->dischargeTimeMillis:J

    .line 1020
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/movial/ipphone/IPSmsMessage;->status:I

    .line 1023
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1025
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1026
    .local v0, extraParams:I
    move v2, v0

    .line 1027
    .local v2, moreExtraParams:I
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    .line 1031
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_0
    move v3, v5

    .line 1010
    goto :goto_0

    .line 1034
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 1035
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/movial/ipphone/IPSmsMessage;->protocolIdentifier:I

    .line 1038
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    .line 1039
    invoke-virtual {p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    .line 1042
    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    .line 1043
    and-int/lit8 v3, p2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_5

    move v1, v4

    .line 1044
    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/movial/ipphone/IPSmsMessage;->parseUserData(Lcom/movial/ipphone/IPSmsMessage$PduParser;Z)V

    .line 1047
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_4
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_5
    move v1, v5

    .line 1043
    goto :goto_2
.end method

.method private parseUserData(Lcom/movial/ipphone/IPSmsMessage$PduParser;Z)V
    .locals 16
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    .line 1089
    const/4 v6, 0x0

    .line 1090
    .local v6, hasMessageClass:Z
    const/4 v10, 0x0

    .line 1092
    .local v10, userDataCompressed:Z
    const/4 v5, 0x0

    .line 1093
    .local v5, encodingType:I
    const-string v11, "IPSmsMessage"

    const-string v12, "parse userdata"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_5

    .line 1098
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit8 v11, v11, 0x40

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/movial/ipphone/IPSmsMessage;->automaticDeletion:Z

    .line 1099
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_2

    const/4 v10, 0x1

    .line 1100
    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_3

    const/4 v6, 0x1

    .line 1102
    :goto_2
    if-eqz v10, :cond_4

    .line 1103
    const-string v11, "IPSmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :goto_3
    const/4 v11, 0x1

    if-ne v5, v11, :cond_10

    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v3

    .line 1183
    .local v3, count:I
    invoke-virtual/range {p1 .. p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getUserData()[B

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->userData:[B

    .line 1184
    invoke-virtual/range {p1 .. p1}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1186
    packed-switch v5, :pswitch_data_0

    .line 1243
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->messageBody:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/movial/ipphone/IPSmsMessage;->parseMessageBody()V

    .line 1247
    :cond_0
    if-nez v6, :cond_14

    .line 1248
    sget-object v11, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 1265
    :goto_6
    return-void

    .line 1098
    .end local v3           #count:I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1099
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 1100
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 1106
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    shr-int/lit8 v11, v11, 0x2

    and-int/lit8 v11, v11, 0x3

    packed-switch v11, :pswitch_data_1

    goto :goto_3

    .line 1108
    :pswitch_0
    const/4 v5, 0x1

    .line 1109
    goto :goto_3

    .line 1112
    :pswitch_1
    const/4 v5, 0x3

    .line 1113
    goto :goto_3

    .line 1117
    :pswitch_2
    const-string v11, "IPSmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const/4 v5, 0x2

    goto :goto_3

    .line 1123
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xf0

    const/16 v12, 0xf0

    if-ne v11, v12, :cond_7

    .line 1124
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/movial/ipphone/IPSmsMessage;->automaticDeletion:Z

    .line 1125
    const/4 v6, 0x1

    .line 1126
    const/4 v10, 0x0

    .line 1128
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_6

    .line 1130
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 1133
    :cond_6
    const/4 v5, 0x2

    goto/16 :goto_3

    .line 1135
    :cond_7
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xf0

    const/16 v12, 0xc0

    if-eq v11, v12, :cond_8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xf0

    const/16 v12, 0xd0

    if-eq v11, v12, :cond_8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xf0

    const/16 v12, 0xe0

    if-ne v11, v12, :cond_d

    .line 1144
    :cond_8
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xf0

    const/16 v12, 0xe0

    if-ne v11, v12, :cond_9

    .line 1145
    const/4 v5, 0x3

    .line 1150
    :goto_7
    const/4 v10, 0x0

    .line 1151
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit8 v11, v11, 0x8

    const/16 v12, 0x8

    if-ne v11, v12, :cond_a

    const/4 v2, 0x1

    .line 1155
    .local v2, active:Z
    :goto_8
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit8 v11, v11, 0x3

    if-nez v11, :cond_c

    .line 1156
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/movial/ipphone/IPSmsMessage;->isMwi:Z

    .line 1157
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/movial/ipphone/IPSmsMessage;->mwiSense:Z

    .line 1158
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xf0

    const/16 v12, 0xc0

    if-ne v11, v12, :cond_b

    const/4 v11, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/movial/ipphone/IPSmsMessage;->mwiDontStore:Z

    goto/16 :goto_3

    .line 1147
    .end local v2           #active:Z
    :cond_9
    const/4 v5, 0x1

    goto :goto_7

    .line 1151
    :cond_a
    const/4 v2, 0x0

    goto :goto_8

    .line 1158
    .restart local v2       #active:Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_9

    .line 1160
    :cond_c
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/movial/ipphone/IPSmsMessage;->isMwi:Z

    .line 1162
    const-string v11, "IPSmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MWI for fax, email, or other "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1165
    .end local v2           #active:Z
    :cond_d
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit16 v11, v11, 0xc0

    const/16 v12, 0x80

    if-ne v11, v12, :cond_f

    .line 1168
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    const/16 v12, 0x84

    if-ne v11, v12, :cond_e

    .line 1170
    const/4 v5, 0x4

    goto/16 :goto_3

    .line 1172
    :cond_e
    const-string v11, "IPSmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1176
    :cond_f
    const-string v11, "IPSmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1181
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 1190
    .restart local v3       #count:I
    :pswitch_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getUserDataUTF8(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->messageBody:Ljava/lang/String;

    .line 1192
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v11, v11, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v12, 0xb84

    if-ne v11, v12, :cond_11

    .line 1194
    const-string v11, "IPSmsMessage"

    const-string v12, "receive WAP PUSH"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1200
    :cond_11
    const/4 v8, 0x0

    .line 1202
    .local v8, newText:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->messageBody:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/movial/ipphone/IPSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v8

    .line 1203
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->mPdu:[B

    array-length v11, v11

    array-length v12, v8

    add-int/lit8 v12, v12, -0x1

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/IPSmsMessage;->messageBody:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    new-array v7, v11, [B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    .local v7, newPdu:[B
    const-string v11, "IPSmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "new Encoded Text: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->mPdu:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/movial/ipphone/IPSmsMessage;->mPdu:[B

    array-length v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/movial/ipphone/IPSmsMessage;->messageBody:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    invoke-static {v11, v12, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1211
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/movial/ipphone/IPSmsMessage;->mPdu:[B

    array-length v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/movial/ipphone/IPSmsMessage;->messageBody:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    array-length v13, v8

    invoke-static {v8, v11, v7, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1214
    const/4 v4, 0x0

    .line 1215
    .local v4, dcs_offset:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->mPdu:[B

    aget-byte v11, v11, v4

    add-int/lit8 v11, v11, 0x2

    add-int/2addr v4, v11

    .line 1216
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->mPdu:[B

    aget-byte v11, v11, v4

    add-int/lit8 v11, v11, 0x1

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v4, v11

    .line 1217
    add-int/lit8 v4, v4, 0x2

    .line 1219
    const-string v11, "IPSmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "change DCS from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-byte v13, v7, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to 0x1b"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/16 v11, 0x1b

    aput-byte v11, v7, v4

    .line 1221
    const-string v11, "IPSmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "new encoded: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/movial/ipphone/IPSmsMessage;->mPdu:[B

    goto/16 :goto_5

    .line 1204
    .end local v4           #dcs_offset:I
    .end local v7           #newPdu:[B
    :catch_0
    move-exception v9

    .line 1205
    .local v9, uex:Ljava/io/UnsupportedEncodingException;
    const-string v11, "IPSmsMessage"

    const-string v12, "Implausible UnsupportedEncodingException "

    invoke-static {v11, v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1227
    .end local v8           #newText:[B
    .end local v9           #uex:Ljava/io/UnsupportedEncodingException;
    :pswitch_4
    if-eqz p2, :cond_12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v11, v11, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v12, v11

    :goto_a
    if-eqz p2, :cond_13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v11, v11, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :goto_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12, v11}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_5

    :cond_12
    const/4 v11, 0x0

    move v12, v11

    goto :goto_a

    :cond_13
    const/4 v11, 0x0

    goto :goto_b

    .line 1233
    :pswitch_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_5

    .line 1237
    :pswitch_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_5

    .line 1250
    :cond_14
    move-object/from16 v0, p0

    iget v11, v0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    and-int/lit8 v11, v11, 0x3

    packed-switch v11, :pswitch_data_2

    goto/16 :goto_6

    .line 1252
    :pswitch_7
    sget-object v11, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_6

    .line 1255
    :pswitch_8
    sget-object v11, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_6

    .line 1258
    :pswitch_9
    sget-object v11, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_6

    .line 1261
    :pswitch_a
    sget-object v11, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/movial/ipphone/IPSmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_6

    .line 1186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1106
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1250
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method getDataCodingScheme()I
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Lcom/movial/ipphone/IPSmsMessage;->dataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/movial/ipphone/IPSmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public getMessagePriority()I
    .locals 1

    .prologue
    .line 1291
    const/4 v0, 0x0

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Lcom/movial/ipphone/IPSmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 938
    iget v0, p0, Lcom/movial/ipphone/IPSmsMessage;->status:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/movial/ipphone/IPSmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPSmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 896
    iget-boolean v0, p0, Lcom/movial/ipphone/IPSmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/movial/ipphone/IPSmsMessage;->mwiSense:Z

    if-nez v0, :cond_0

    .line 900
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPSmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/movial/ipphone/IPSmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 907
    iget-boolean v0, p0, Lcom/movial/ipphone/IPSmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/movial/ipphone/IPSmsMessage;->mwiSense:Z

    if-eqz v0, :cond_0

    .line 911
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPSmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/movial/ipphone/IPSmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 918
    iget-boolean v1, p0, Lcom/movial/ipphone/IPSmsMessage;->isMwi:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/movial/ipphone/IPSmsMessage;->mwiDontStore:Z

    if-eqz v1, :cond_1

    .line 932
    :cond_0
    :goto_0
    return v0

    .line 922
    :cond_1
    invoke-virtual {p0}, Lcom/movial/ipphone/IPSmsMessage;->isCphsMwiMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 926
    const-string v1, " "

    invoke-virtual {p0}, Lcom/movial/ipphone/IPSmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 932
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 881
    iget v0, p0, Lcom/movial/ipphone/IPSmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/movial/ipphone/IPSmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/movial/ipphone/IPSmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/movial/ipphone/IPSmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/movial/ipphone/IPSmsMessage;->isStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/movial/ipphone/IPSmsMessage;->protocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 2

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/movial/ipphone/IPSmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/movial/ipphone/IPSmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/movial/ipphone/IPSmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected kddiDispatchPdus([[BLcom/android/internal/telephony/SmsMessageBase;)V
    .locals 0
    .parameter "pdus"
    .parameter "smsb"

    .prologue
    .line 1301
    return-void
.end method

.method public kddiGetMessageId()I
    .locals 2

    .prologue
    .line 1325
    const-string v0, "IPSmsMessage"

    const-string v1, "GetMessageID: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const/4 v0, 0x0

    return v0
.end method

.method public kddiGetServiceCategory()I
    .locals 2

    .prologue
    .line 1312
    const-string v0, "IPSmsMessage"

    const-string v1, "GetServiceCategory: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const/4 v0, 0x0

    return v0
.end method
