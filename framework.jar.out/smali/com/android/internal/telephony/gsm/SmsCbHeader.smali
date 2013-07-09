.class public Lcom/android/internal/telephony/gsm/SmsCbHeader;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"


# static fields
.field public static final FORMAT_ETWS_PRIMARY:I = 0x3

.field static final FORMAT_GSM:I = 0x1

.field static final FORMAT_UMTS:I = 0x2

.field private static final MESSAGE_TYPE_CBS_MESSAGE:I = 0x1

.field static final PDU_HEADER_LENGTH:I = 0x6

.field private static final PDU_LENGTH_ETWS:I = 0x38

.field private static final PDU_LENGTH_GSM:I = 0x58


# instance fields
.field private final dataCodingScheme:I

.field private final format:I

.field private final geographicalScope:I

.field private final mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

.field private final mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

.field private final messageIdentifier:I

.field private final nrOfPages:I

.field private final pageIndex:I

.field private final serialNumber:I


# direct methods
.method public constructor <init>([B)V
    .locals 14
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal PDU"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    array-length v0, p1

    const/16 v2, 0x58

    if-gt v0, v2, :cond_8

    .line 104
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    .line 105
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->serialNumber:I

    .line 106
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    .line 107
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    .line 112
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    .line 113
    .local v8, emergencyUserAlert:Z
    :goto_0
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    .line 114
    .local v7, activatePopup:Z
    :goto_1
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xfe

    shr-int/lit8 v13, v0, 0x1

    .line 117
    .local v13, warningType:I
    array-length v0, p1

    const/4 v2, 0x6

    if-le v0, v2, :cond_4

    .line 118
    const/4 v0, 0x6

    array-length v2, p1

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 122
    .local v12, warningSecurityInfo:[B
    :goto_2
    new-instance v0, Landroid/telephony/SmsCbEtwsInfo;

    invoke-direct {v0, v13, v8, v7, v12}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZ[B)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 185
    .end local v7           #activatePopup:Z
    .end local v8           #emergencyUserAlert:Z
    .end local v12           #warningSecurityInfo:[B
    .end local v13           #warningType:I
    :goto_3
    return-void

    .line 112
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 113
    .restart local v8       #emergencyUserAlert:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 120
    .restart local v7       #activatePopup:Z
    .restart local v13       #warningType:I
    :cond_4
    const/4 v12, 0x0

    .restart local v12       #warningSecurityInfo:[B
    goto :goto_2

    .line 129
    .end local v7           #activatePopup:Z
    .end local v8           #emergencyUserAlert:Z
    .end local v12           #warningSecurityInfo:[B
    .end local v13           #warningType:I
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    .line 130
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    .line 133
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v11, v0, 0x4

    .line 134
    .local v11, pageIndex:I
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit8 v10, v0, 0xf

    .line 136
    .local v10, nrOfPages:I
    if-eqz v11, :cond_6

    if-eqz v10, :cond_6

    if-le v11, v10, :cond_7

    .line 137
    :cond_6
    const/4 v11, 0x1

    .line 138
    const/4 v10, 0x1

    .line 141
    :cond_7
    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    .line 142
    iput v10, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    .line 167
    .end local v10           #nrOfPages:I
    .end local v11           #pageIndex:I
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 168
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsEmergencyUserAlert()Z

    move-result v8

    .line 169
    .restart local v8       #emergencyUserAlert:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPopupAlert()Z

    move-result v7

    .line 170
    .restart local v7       #activatePopup:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsWarningType()I

    move-result v13

    .line 171
    .restart local v13       #warningType:I
    new-instance v0, Landroid/telephony/SmsCbEtwsInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v13, v8, v7, v2}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZ[B)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    goto :goto_3

    .line 147
    .end local v7           #activatePopup:Z
    .end local v8           #emergencyUserAlert:Z
    .end local v13           #warningType:I
    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    .line 149
    const/4 v0, 0x0

    aget-byte v9, p1, v0

    .line 151
    .local v9, messageType:I
    const/4 v0, 0x1

    if-eq v9, v0, :cond_9

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_9
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    .line 156
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    .line 157
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->serialNumber:I

    .line 158
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    .line 163
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    goto :goto_4

    .line 173
    .end local v9           #messageType:I
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isCmasMessage()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 174
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasMessageClass()I

    move-result v1

    .line 175
    .local v1, messageClass:I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasSeverity()I

    move-result v4

    .line 176
    .local v4, severity:I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasUrgency()I

    move-result v5

    .line 177
    .local v5, urgency:I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasCertainty()I

    move-result v6

    .line 178
    .local v6, certainty:I
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 179
    new-instance v0, Landroid/telephony/SmsCbCmasInfo;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    goto/16 :goto_3

    .line 182
    .end local v1           #messageClass:I
    .end local v4           #severity:I
    .end local v5           #urgency:I
    .end local v6           #certainty:I
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    goto/16 :goto_3
.end method

.method private getCmasCertainty()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    packed-switch v0, :pswitch_data_0

    .line 402
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 393
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCmasMessageClass()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    packed-switch v0, :pswitch_data_0

    .line 327
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 300
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 306
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 315
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 318
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 321
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 324
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getCmasSeverity()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    packed-switch v0, :pswitch_data_0

    .line 352
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 343
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 349
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getCmasUrgency()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    packed-switch v0, :pswitch_data_0

    .line 377
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 368
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 374
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getEtwsWarningType()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    add-int/lit16 v0, v0, -0x1100

    return v0
.end method

.method private isCmasMessage()Z
    .locals 2

    .prologue
    .line 258
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    const/16 v1, 0x1112

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    const/16 v1, 0x112f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEtwsEmergencyUserAlert()Z
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->serialNumber:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEtwsMessage()Z
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    const v1, 0xfff8

    and-int/2addr v0, v1

    const/16 v1, 0x1100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEtwsPopupAlert()Z
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->serialNumber:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getCmasInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    return-object v0
.end method

.method public getDataCodingScheme()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    return v0
.end method

.method getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    return-object v0
.end method

.method public getGeographicalScope()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    return v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    return v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->serialNumber:I

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    return v0
.end method

.method isEmergencyMessage()Z
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    const/16 v1, 0x1100

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    const/16 v1, 0x18ff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEtwsPrimaryNotification()Z
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUmtsFormat()Z
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbHeader{GS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serialNumber=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->serialNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageIdentifier=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DCS=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
