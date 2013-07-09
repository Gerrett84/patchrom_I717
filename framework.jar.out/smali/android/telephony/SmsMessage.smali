.class public Landroid/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMessage$PduFormatChecker;,
        Landroid/telephony/SmsMessage$DeliverPdu;,
        Landroid/telephony/SmsMessage$SubmitPdu;,
        Landroid/telephony/SmsMessage$MessageTpPid;,
        Landroid/telephony/SmsMessage$MessageClass;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_EUC_KR:I = 0x4

.field public static final ENCODING_KSC5601:I = 0x4

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field public static final FORMAT_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final LOCAL_DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static final MAX_DATA_LEN_WITH_SEGMENT_SEPERATOR:I = 0x9a

.field public static final MAX_EMAIL_LENGTH_IN_SMS:I = 0x48

.field public static final MAX_USER_DATA_BYTES:I = 0x8c

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER_SINGLE_LOCKING_SHIFT:I = 0x80

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER_SINGLE_SHIFT:I = 0x83

.field public static final MAX_USER_DATA_BYTES_WITH_SEGMENT_SEPERATOR:I = 0x80

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_NATIONAL_LANGUAGE:I = 0x9b

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER_NATIONAL_LANGUAGE:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER_NATIONAL_LOCKING_SHIFT_LANGUAGE:I = 0x93


# instance fields
.field private mSubId:I

.field public mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Landroid/telephony/SmsMessage;->getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 263
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 1
    .parameter "smb"

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 266
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 267
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 4
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    .line 557
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 560
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 561
    .local v0, ret:[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 562
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 563
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 564
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 565
    return-object v0

    .line 557
    .end local v0           #ret:[I
    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)[I
    .locals 5
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "encodingType"

    .prologue
    .line 525
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 526
    .local v0, activePhone:I
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v2

    .line 529
    .local v2, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    const/4 v3, 0x4

    new-array v1, v3, [I

    .line 530
    .local v1, ret:[I
    const/4 v3, 0x0

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v4, v1, v3

    .line 531
    const/4 v3, 0x1

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v4, v1, v3

    .line 532
    const/4 v3, 0x2

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v4, v1, v3

    .line 533
    const/4 v3, 0x3

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v4, v1, v3

    .line 534
    return-object v1

    .line 526
    .end local v1           #ret:[I
    .end local v2           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v2

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 754
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)[I
    .locals 6
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "maxEmailLen"

    .prologue
    const/4 v5, 0x2

    .line 572
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 573
    .local v0, activePhone:I
    if-ne v5, v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v2

    .line 576
    .local v2, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    const/4 v3, 0x4

    new-array v1, v3, [I

    .line 577
    .local v1, ret:[I
    const/4 v3, 0x0

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v4, v1, v3

    .line 578
    const/4 v3, 0x1

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v4, v1, v3

    .line 579
    iget v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v1, v5

    .line 580
    const/4 v3, 0x3

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v4, v1, v3

    .line 581
    return-object v1

    .line 573
    .end local v1           #ret:[I
    .end local v2           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v2

    goto :goto_0
.end method

.method public static createFromEfRecord(I[B)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "index"
    .parameter "data"

    .prologue
    .line 459
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 469
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 463
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 469
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsMessage;
    .locals 8
    .parameter "pdu"

    .prologue
    const/4 v7, 0x2

    .line 285
    const/4 v2, 0x0

    .line 288
    .local v2, message:Landroid/telephony/SmsMessage;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 289
    .local v0, activePhone:I
    if-ne v7, v0, :cond_1

    const-string v1, "3gpp2"

    .line 292
    .local v1, format:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    .line 301
    .local v3, pduFormat:Ljava/lang/String;
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createFromPdu(): message format"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 304
    if-nez v2, :cond_0

    .line 306
    if-ne v7, v0, :cond_2

    const-string v1, "3gpp"

    .line 314
    :goto_1
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createFromPdu(): message format"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 317
    :cond_0
    return-object v2

    .line 289
    .end local v1           #format:Ljava/lang/String;
    .end local v3           #pduFormat:Ljava/lang/String;
    :cond_1
    const-string v1, "3gpp"

    goto :goto_0

    .line 306
    .restart local v1       #format:Ljava/lang/String;
    .restart local v3       #pduFormat:Ljava/lang/String;
    :cond_2
    const-string v1, "3gpp2"

    goto :goto_1
.end method

.method public static createFromPdu([BI)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "pdu"
    .parameter "encoding"

    .prologue
    .line 352
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 353
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 358
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 355
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 4
    .parameter "pdu"
    .parameter "format"

    .prologue
    .line 333
    const-string v1, "3gpp2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 342
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_1
    return-object v1

    .line 335
    :cond_0
    const-string v1, "3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 338
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromPdu(): unsupported message format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 670
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .line 681
    .local v4, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v7, v9, :cond_8

    .line 683
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    if-eqz v7, :cond_5

    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    if-eqz v7, :cond_5

    .line 684
    const/4 v6, 0x7

    .line 691
    .local v6, udhLength:I
    :goto_1
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-le v7, v9, :cond_0

    .line 692
    add-int/lit8 v6, v6, 0x6

    .line 695
    :cond_0
    if-eqz v6, :cond_1

    .line 696
    add-int/lit8 v6, v6, 0x1

    .line 699
    :cond_1
    rsub-int v0, v6, 0xa0

    .line 709
    .end local v6           #udhLength:I
    .local v0, limit:I
    :goto_2
    const/4 v2, 0x0

    .line 710
    .local v2, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 711
    .local v5, textLen:I
    new-instance v3, Ljava/util/ArrayList;

    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 712
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ge v2, v5, :cond_3

    .line 713
    const/4 v1, 0x0

    .line 714
    .local v1, nextPos:I
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v7, v9, :cond_b

    .line 715
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v7

    if-eqz v7, :cond_a

    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-ne v7, v9, :cond_a

    .line 717
    sub-int v7, v5, v2

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v1, v2, v7

    .line 726
    :goto_4
    if-le v1, v2, :cond_2

    if-le v1, v5, :cond_c

    .line 727
    :cond_2
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText failed ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v1           #nextPos:I
    :cond_3
    return-object v3

    .line 670
    .end local v0           #limit:I
    .end local v2           #pos:I
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v5           #textLen:I
    :cond_4
    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    goto/16 :goto_0

    .line 685
    .restart local v4       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_5
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    if-nez v7, :cond_6

    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    if-eqz v7, :cond_7

    .line 686
    :cond_6
    const/4 v6, 0x4

    .restart local v6       #udhLength:I
    goto/16 :goto_1

    .line 688
    .end local v6           #udhLength:I
    :cond_7
    const/4 v6, 0x0

    .restart local v6       #udhLength:I
    goto/16 :goto_1

    .line 701
    .end local v6           #udhLength:I
    :cond_8
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-le v7, v9, :cond_9

    .line 702
    const/16 v0, 0x86

    .restart local v0       #limit:I
    goto :goto_2

    .line 704
    .end local v0           #limit:I
    :cond_9
    const/16 v0, 0x8c

    .restart local v0       #limit:I
    goto/16 :goto_2

    .line 720
    .restart local v1       #nextPos:I
    .restart local v2       #pos:I
    .restart local v3       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #textLen:I
    :cond_a
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iget v8, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    invoke-static {p0, v2, v0, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v1

    goto :goto_4

    .line 724
    :cond_b
    div-int/lit8 v7, v0, 0x2

    sub-int v8, v5, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v1, v2, v7

    goto :goto_4

    .line 731
    :cond_c
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    move v2, v1

    .line 733
    goto/16 :goto_3
.end method

.method public static fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 11
    .parameter "text"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 595
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 599
    .local v0, activePhone:I
    if-ne v0, v10, :cond_2

    .line 600
    invoke-static {p0, v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v5

    .line 612
    .local v5, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-le v7, v9, :cond_a

    .line 613
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledSingleShiftTables()[I

    move-result-object v7

    array-length v7, v7

    if-lt v7, v9, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledLockingShiftTables()[I

    move-result-object v7

    array-length v7, v7

    if-lt v7, v9, :cond_5

    .line 614
    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v7, v9, :cond_4

    const/16 v1, 0x93

    .line 629
    .local v1, limit:I
    :goto_1
    const/4 v3, 0x0

    .line 630
    .local v3, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 631
    .local v6, textLen:I
    new-instance v4, Ljava/util/ArrayList;

    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 632
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    if-ge v3, v6, :cond_1

    .line 633
    const/4 v2, 0x0

    .line 634
    .local v2, nextPos:I
    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v7, v9, :cond_d

    .line 635
    if-ne v0, v10, :cond_c

    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-ne v7, v9, :cond_c

    .line 637
    sub-int v7, v6, v3

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v2, v3, v7

    .line 646
    :goto_3
    if-le v2, v3, :cond_0

    if-le v2, v6, :cond_e

    .line 647
    :cond_0
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText failed ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .end local v2           #nextPos:I
    :cond_1
    return-object v4

    .line 602
    .end local v1           #limit:I
    .end local v3           #pos:I
    .end local v4           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v6           #textLen:I
    :cond_2
    if-ne p1, v9, :cond_3

    .line 603
    invoke-static {p0, v8, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v5

    .restart local v5       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    goto :goto_0

    .line 605
    .end local v5           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_3
    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v5

    .restart local v5       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    goto/16 :goto_0

    .line 614
    :cond_4
    const/16 v1, 0x80

    goto :goto_1

    .line 616
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledSingleShiftTables()[I

    move-result-object v7

    array-length v7, v7

    if-ge v7, v9, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledLockingShiftTables()[I

    move-result-object v7

    array-length v7, v7

    if-lt v7, v9, :cond_8

    .line 617
    :cond_6
    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v7, v9, :cond_7

    const/16 v1, 0x95

    .restart local v1       #limit:I
    :goto_4
    goto/16 :goto_1

    .end local v1           #limit:I
    :cond_7
    const/16 v1, 0x83

    goto :goto_4

    .line 620
    :cond_8
    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v7, v9, :cond_9

    const/16 v1, 0x99

    .restart local v1       #limit:I
    :goto_5
    goto/16 :goto_1

    .end local v1           #limit:I
    :cond_9
    const/16 v1, 0x86

    goto :goto_5

    .line 624
    :cond_a
    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v7, v9, :cond_b

    const/16 v1, 0xa0

    .restart local v1       #limit:I
    :goto_6
    goto/16 :goto_1

    .end local v1           #limit:I
    :cond_b
    const/16 v1, 0x8c

    goto :goto_6

    .line 640
    .restart local v1       #limit:I
    .restart local v2       #nextPos:I
    .restart local v3       #pos:I
    .restart local v4       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #textLen:I
    :cond_c
    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iget v8, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    invoke-static {p0, v3, v1, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v2

    goto/16 :goto_3

    .line 644
    :cond_d
    div-int/lit8 v7, v1, 0x2

    sub-int v8, v6, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v2, v3, v7

    goto/16 :goto_3

    .line 651
    :cond_e
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    move v3, v2

    .line 653
    goto/16 :goto_2
.end method

.method public static getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$DeliverPdu;
    .locals 4
    .parameter "scAddress"
    .parameter "Address"
    .parameter "message"
    .parameter "date"
    .parameter "header"

    .prologue
    .line 1405
    const-string v2, "SMS"

    const-string v3, "android.telephony.SmsMessage.java - getSimDeliverPdu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 1410
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 1417
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getRuimDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;

    move-result-object v1

    .line 1426
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage$DeliverPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$DeliverPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;)V

    return-object v2

    .line 1422
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    goto :goto_0
.end method

.method public static getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 4
    .parameter "scAddress"
    .parameter "Address"
    .parameter "message"
    .parameter "header"

    .prologue
    .line 1375
    const-string v2, "SMS"

    const-string v3, "android.telephony.SmsMessage.java - getSimSubmitPdu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 1382
    .local v0, activePhone:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 1387
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getRuimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 1396
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v2

    .line 1391
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method private static final getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;
    .locals 1

    .prologue
    .line 1342
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1343
    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1345
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;IIII)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "destAddrStr"
    .parameter "noOfOccur"
    .parameter "scptCategory"
    .parameter "scptLanguage"
    .parameter "scptCategoryResult"

    .prologue
    .line 832
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 834
    .local v0, activePhone:I
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 836
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;IIII)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 837
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    new-instance v2, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    .line 839
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 855
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 863
    .local v0, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 859
    .end local v0           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    .line 791
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 800
    .local v0, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 796
    .end local v0           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BLjava/lang/String;I)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "callbackNumber"
    .parameter "priority"

    .prologue
    .line 818
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 827
    .local v7, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v0, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v0, v7}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v0

    .line 823
    .end local v7           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    .restart local v7       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    .line 884
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 892
    .local v0, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 888
    .end local v0           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 1
    .parameter "pdu"

    .prologue
    .line 480
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    .line 483
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static isCdmaVoice()Z
    .locals 2

    .prologue
    .line 1364
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1365
    .local v0, activePhone:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCDS(Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 410
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 416
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 413
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "lines"

    .prologue
    .line 373
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 384
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method protected static newFromCMTI(Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 394
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 400
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 397
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "p"

    .prologue
    .line 423
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 434
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method private static useCdmaFormatForMoSms()Z
    .locals 2

    .prologue
    .line 1350
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v0

    .line 1355
    :goto_0
    return v0

    :cond_0
    const-string v0, "3gpp2"

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static writePduFormat(Ljava/lang/String;)V
    .locals 4
    .parameter "pduFormat"

    .prologue
    .line 1678
    #calls: Landroid/telephony/SmsMessage$PduFormatChecker;->write(Ljava/lang/String;)V
    invoke-static {p0}, Landroid/telephony/SmsMessage$PduFormatChecker;->access$000(Ljava/lang/String;)V

    .line 1679
    #calls: Landroid/telephony/SmsMessage$PduFormatChecker;->read()Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsMessage$PduFormatChecker;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 1680
    .local v0, pduFomat:Ljava/lang/String;
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[writePduFormat] pduFormat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    .end local v0           #pduFomat:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    return-void

    .line 1680
    .restart local v0       #pduFomat:Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "none"

    goto :goto_0
.end method


# virtual methods
.method public getCDMAMessageType()I
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getCDMAMessageType()I

    move-result v0

    return v0
.end method

.method public getCMASAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getCMASAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCMASAlertHandling()I
    .locals 3

    .prologue
    .line 1594
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->alertHandling:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    :goto_0
    return v1

    .line 1595
    :catch_0
    move-exception v0

    .line 1596
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASAlertHandling"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCMASCategory()I
    .locals 3

    .prologue
    .line 1503
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->category:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1506
    :goto_0
    return v1

    .line 1504
    :catch_0
    move-exception v0

    .line 1505
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASCategory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCMASCertainty()I
    .locals 3

    .prologue
    .line 1539
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->certainty:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    :goto_0
    return v1

    .line 1540
    :catch_0
    move-exception v0

    .line 1541
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASCertainty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCMASLanguage()I
    .locals 3

    .prologue
    .line 1612
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->language:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1615
    :goto_0
    return v1

    .line 1613
    :catch_0
    move-exception v0

    .line 1614
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASLanguage"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCMASMessageID()I
    .locals 3

    .prologue
    .line 1585
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->messageID:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    :goto_0
    return v1

    .line 1586
    :catch_0
    move-exception v0

    .line 1587
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASMessageID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCMASMsgExpires()J
    .locals 3

    .prologue
    .line 1603
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->msgExpires:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1606
    :goto_0
    return-wide v1

    .line 1604
    :catch_0
    move-exception v0

    .line 1605
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASMsgExpires"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getCMASRecordTypeFirstExists()Z
    .locals 3

    .prologue
    .line 1557
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->bRecordTypeFirstExists:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    :goto_0
    return v1

    .line 1558
    :catch_0
    move-exception v0

    .line 1559
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASRecordTypeFirstExists"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCMASRecordTypeSecondExists()Z
    .locals 3

    .prologue
    .line 1566
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->bRecordTypeSecondExists:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1569
    :goto_0
    return v1

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASRecordTypeSecondExists"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCMASRecordTypeThirdExists()Z
    .locals 3

    .prologue
    .line 1575
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->bRecordTypeThirdExists:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1578
    :goto_0
    return v1

    .line 1576
    :catch_0
    move-exception v0

    .line 1577
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASRecordTypeThirdExists"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCMASRecordTypeZeroExists()Z
    .locals 3

    .prologue
    .line 1548
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->bRecordTypeZeroExists:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1551
    :goto_0
    return v1

    .line 1549
    :catch_0
    move-exception v0

    .line 1550
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASRecordTypeZeroExists"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCMASResponseType()I
    .locals 3

    .prologue
    .line 1512
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->responseType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1515
    :goto_0
    return v1

    .line 1513
    :catch_0
    move-exception v0

    .line 1514
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASResponseType"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCMASServiceCategory()I
    .locals 3

    .prologue
    .line 1494
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->serviceCategory:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :goto_0
    return v1

    .line 1495
    :catch_0
    move-exception v0

    .line 1496
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASServiceCategory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCMASSeverity()I
    .locals 3

    .prologue
    .line 1521
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->severity:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1524
    :goto_0
    return v1

    .line 1522
    :catch_0
    move-exception v0

    .line 1523
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASSeverity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCMASType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 997
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->isCMASMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 998
    const/4 v1, 0x0

    .line 999
    .local v1, CMASType:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v0

    .line 1000
    .local v0, CMASServiceCategory:I
    packed-switch v0, :pswitch_data_0

    .line 1017
    const-string v1, "Test Message"

    .line 1020
    :goto_0
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmsMessage, getCMASType(),CMASType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    .end local v0           #CMASServiceCategory:I
    .end local v1           #CMASType:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 1002
    .restart local v0       #CMASServiceCategory:I
    .restart local v1       #CMASType:Ljava/lang/String;
    :pswitch_0
    const-string v1, "Presidential"

    .line 1003
    goto :goto_0

    .line 1005
    :pswitch_1
    const-string v1, "Extreme Threat"

    .line 1006
    goto :goto_0

    .line 1008
    :pswitch_2
    const-string v1, "Severity Threat"

    .line 1009
    goto :goto_0

    .line 1011
    :pswitch_3
    const-string v1, "Amber"

    .line 1012
    goto :goto_0

    .line 1014
    :pswitch_4
    const-string v1, "Test Message"

    .line 1015
    goto :goto_0

    .line 1024
    .end local v0           #CMASServiceCategory:I
    .end local v1           #CMASType:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1000
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getCMASUrgency()I
    .locals 3

    .prologue
    .line 1530
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCMASObject()Lcom/android/internal/telephony/cdma/sms/CMASdata;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/CMASdata;->urgency:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    :goto_0
    return v1

    .line 1531
    :catch_0
    move-exception v0

    .line 1532
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASUrgency"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallbackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getCallbackNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayDestinationAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress_IsInternational()Z
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress_IsInternational()Z

    move-result v0

    return v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getIndexOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1287
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->kddiGetMessageId()I

    move-result v0

    return v0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v0

    return v0
.end method

.method public getMessagePriority()I
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessagePriority()I

    move-result v0

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageType()I

    move-result v0

    return v0
.end method

.method public getOriginalOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginalOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getReplyAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScptCategory()I
    .locals 3

    .prologue
    .line 1458
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSCPTObject()Lcom/android/internal/telephony/cdma/sms/SCPTData;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SCPTData;->category:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    :goto_0
    return v1

    .line 1459
    :catch_0
    move-exception v0

    .line 1460
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getScptCategory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScptEncodingType()I
    .locals 3

    .prologue
    .line 1449
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSCPTObject()Lcom/android/internal/telephony/cdma/sms/SCPTData;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SCPTData;->msgEncoding:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    :goto_0
    return v1

    .line 1450
    :catch_0
    move-exception v0

    .line 1451
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getScptEncodingType"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScptMaxMessages()I
    .locals 3

    .prologue
    .line 1467
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSCPTObject()Lcom/android/internal/telephony/cdma/sms/SCPTData;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SCPTData;->maxMessages:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    :goto_0
    return v1

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getScptMaxMessages"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScptOperationCode()I
    .locals 3

    .prologue
    .line 1440
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSCPTObject()Lcom/android/internal/telephony/cdma/sms/SCPTData;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SCPTData;->operationCode:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1443
    :goto_0
    return v1

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getCMASServiceCategory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScptalertOption()I
    .locals 3

    .prologue
    .line 1476
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSCPTObject()Lcom/android/internal/telephony/cdma/sms/SCPTData;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SCPTData;->alertOption:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1479
    :goto_0
    return v1

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in getScptalertOption"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionId()I

    move-result v0

    return v0
.end method

.method public getSessionSeq()I
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeq()I

    move-result v0

    return v0
.end method

.method public getSessionSeqEos()I
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeqEos()I

    move-result v0

    return v0
.end method

.method public getSharedAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getSharedAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getSharedCmd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPayLoad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getSharedPayLoad()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getStatusOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1263
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    return v0
.end method

.method public getTeleserviceId()I
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTeleserviceId()I

    move-result v0

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestampMillisForKor()J
    .locals 2

    .prologue
    .line 1108
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillisForKor()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    return-object v0
.end method

.method public getlinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getlinkUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCMASMessage()Z
    .locals 3

    .prologue
    .line 1485
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCMASMessage()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1488
    :goto_0
    return v1

    .line 1486
    :catch_0
    move-exception v0

    .line 1487
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "SMS"

    const-string v2, "Null pointer exception in isCMASMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    move-result v0

    return v0
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    move-result v0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    move-result v0

    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    move-result v0

    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    move-result v0

    return v0
.end method

.method public isReplace()Z
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    move-result v0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    return v0
.end method

.method public setCMASAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "addr"

    .prologue
    .line 925
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setCMASAddress(Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public setMessagePriority(Z)V
    .locals 2
    .parameter "isHighPriority"

    .prologue
    .line 1431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSubId(I)V
    .locals 0
    .parameter "subId"

    .prologue
    .line 194
    iput p1, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 195
    return-void
.end method
