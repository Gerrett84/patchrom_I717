.class Lcom/movial/ipphone/IPSmsMessage$PduParser;
.super Ljava/lang/Object;
.source "IPSmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPSmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduParser"
.end annotation


# instance fields
.field cur:I

.field mUserDataSeptetPadding:I

.field mUserDataSize:I

.field pdu:[B

.field userData:[B

.field userDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method constructor <init>([B)V
    .locals 1
    .parameter "pdu"

    .prologue
    const/4 v0, 0x0

    .line 549
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p1, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    .line 551
    iput v0, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    .line 552
    iput v0, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 553
    return-void
.end method


# virtual methods
.method constructUserData(ZZ)I
    .locals 13
    .parameter "hasUserDataHeader"
    .parameter "dataInSeptets"

    .prologue
    const/4 v10, 0x0

    .line 668
    iget v4, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    .line 669
    .local v4, offset:I
    iget-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #offset:I
    .local v5, offset:I
    aget-byte v9, v9, v4

    and-int/lit16 v8, v9, 0xff

    .line 670
    .local v8, userDataLength:I
    const/4 v3, 0x0

    .line 671
    .local v3, headerSeptets:I
    const/4 v7, 0x0

    .line 673
    .local v7, userDataHeaderLength:I
    if-eqz p1, :cond_6

    .line 674
    iget-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #offset:I
    .restart local v4       #offset:I
    aget-byte v9, v9, v5

    and-int/lit16 v7, v9, 0xff

    .line 676
    new-array v6, v7, [B

    .line 677
    .local v6, udh:[B
    iget-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    invoke-static {v9, v4, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 679
    add-int/2addr v4, v7

    .line 681
    add-int/lit8 v9, v7, 0x1

    mul-int/lit8 v2, v9, 0x8

    .line 682
    .local v2, headerBits:I
    div-int/lit8 v3, v2, 0x7

    .line 683
    rem-int/lit8 v9, v2, 0x7

    if-lez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    add-int/2addr v3, v9

    .line 684
    mul-int/lit8 v9, v3, 0x7

    sub-int/2addr v9, v2

    iput v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 688
    .end local v2           #headerBits:I
    .end local v6           #udh:[B
    :goto_1
    if-eqz p2, :cond_2

    .line 694
    iget-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    array-length v9, v9

    sub-int v0, v9, v4

    .line 706
    .local v0, bufferLen:I
    :cond_0
    :goto_2
    new-array v9, v0, [B

    iput-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->userData:[B

    .line 707
    iget-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget-object v11, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->userData:[B

    iget-object v12, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->userData:[B

    array-length v12, v12

    invoke-static {v9, v4, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    iput v4, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    .line 710
    if-eqz p2, :cond_5

    .line 712
    sub-int v1, v8, v3

    .line 714
    .local v1, count:I
    if-gez v1, :cond_4

    .line 717
    .end local v1           #count:I
    :goto_3
    return v10

    .end local v0           #bufferLen:I
    .restart local v2       #headerBits:I
    .restart local v6       #udh:[B
    :cond_1
    move v9, v10

    .line 683
    goto :goto_0

    .line 700
    .end local v2           #headerBits:I
    .end local v6           #udh:[B
    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 v9, v7, 0x1

    :goto_4
    sub-int v0, v8, v9

    .line 701
    .restart local v0       #bufferLen:I
    if-gez v0, :cond_0

    .line 702
    const/4 v0, 0x0

    goto :goto_2

    .end local v0           #bufferLen:I
    :cond_3
    move v9, v10

    .line 700
    goto :goto_4

    .restart local v0       #bufferLen:I
    .restart local v1       #count:I
    :cond_4
    move v10, v1

    .line 714
    goto :goto_3

    .line 717
    .end local v1           #count:I
    :cond_5
    iget-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->userData:[B

    array-length v10, v9

    goto :goto_3

    .end local v0           #bufferLen:I
    .end local v4           #offset:I
    .restart local v5       #offset:I
    :cond_6
    move v4, v5

    .end local v5           #offset:I
    .restart local v4       #offset:I
    goto :goto_1
.end method

.method getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .locals 6

    .prologue
    .line 603
    iget-object v4, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v5, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 604
    .local v0, addressLength:I
    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v4, 0x2

    .line 607
    .local v2, lengthBytes:I
    :try_start_0
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v4, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v5, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .local v3, ret:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    :goto_0
    iget v4, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    .line 615
    return-object v3

    .line 608
    .end local v3           #ret:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    :catch_0
    move-exception v1

    .line 609
    .local v1, e:Ljava/text/ParseException;
    const-string v4, "IPSmsMessage"

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v3, 0x0

    .restart local v3       #ret:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    goto :goto_0
.end method

.method getByte()I
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/movial/ipphone/IPSmsMessage$PduParser;->getByte()I

    move-result v0

    .line 566
    .local v0, len:I
    if-nez v0, :cond_0

    .line 568
    const/4 v1, 0x0

    .line 580
    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    .line 582
    return-object v1

    .line 572
    .end local v1           #ret:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_0

    .line 574
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 575
    .local v2, tr:Ljava/lang/RuntimeException;
    const-string v3, "IPSmsMessage"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    const/4 v1, 0x0

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method getSCTimestampMillis()J
    .locals 13

    .prologue
    .line 625
    iget-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .line 626
    .local v8, year:I
    iget-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 627
    .local v3, month:I
    iget-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 628
    .local v0, day:I
    iget-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 629
    .local v1, hour:I
    iget-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .line 630
    .local v2, minute:I
    iget-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 637
    .local v4, second:I
    iget-object v9, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    aget-byte v7, v9, v10

    .line 640
    .local v7, tzByte:B
    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 642
    .local v6, timezoneOffset:I
    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_0

    .line 644
    :goto_0
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 647
    .local v5, time:Landroid/text/format/Time;
    const/16 v9, 0x5a

    if-lt v8, v9, :cond_1

    add-int/lit16 v9, v8, 0x76c

    :goto_1
    iput v9, v5, Landroid/text/format/Time;->year:I

    .line 648
    add-int/lit8 v9, v3, -0x1

    iput v9, v5, Landroid/text/format/Time;->month:I

    .line 649
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 650
    iput v1, v5, Landroid/text/format/Time;->hour:I

    .line 651
    iput v2, v5, Landroid/text/format/Time;->minute:I

    .line 652
    iput v4, v5, Landroid/text/format/Time;->second:I

    .line 655
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    mul-int/lit8 v11, v6, 0xf

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    return-wide v9

    .line 642
    .end local v5           #time:Landroid/text/format/Time;
    :cond_0
    neg-int v6, v6

    goto :goto_0

    .line 647
    .restart local v5       #time:Landroid/text/format/Time;
    :cond_1
    add-int/lit16 v9, v8, 0x7d0

    goto :goto_1
.end method

.method getUserData()[B
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->userData:[B

    return-object v0
.end method

.method getUserDataGSM7Bit(III)Ljava/lang/String;
    .locals 7
    .parameter "septetCount"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    iget v3, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v6

    .line 764
    .local v6, ret:Ljava/lang/String;
    iget v0, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    mul-int/lit8 v1, p1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    .line 766
    return-object v6
.end method

.method getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method getUserDataKSC5601(I)Ljava/lang/String;
    .locals 5
    .parameter "byteCount"

    .prologue
    .line 815
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    const-string v4, "KSC5601"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    .line 822
    return-object v1

    .line 816
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 817
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 818
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "IPSmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getUserDataSeptetPadding()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->mUserDataSeptetPadding:I

    return v0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .locals 5
    .parameter "byteCount"

    .prologue
    .line 780
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    const-string v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    .line 787
    return-object v1

    .line 781
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 782
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 783
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "IPSmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getUserDataUTF8(I)Ljava/lang/String;
    .locals 5
    .parameter "byteCount"

    .prologue
    .line 794
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    const-string v4, "utf-8"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    .line 801
    return-object v1

    .line 795
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 796
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 797
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "IPSmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method moreDataPresent()Z
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->pdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/movial/ipphone/IPSmsMessage$PduParser;->cur:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
