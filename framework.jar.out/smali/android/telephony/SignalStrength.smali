.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static INVALID:I = 0x0

.field public static final INVALID_SNR:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static NUM_SIGNAL_STRENGTH_BINS:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalBar:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTdScdmaRscp:I

.field private weakRSSI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Landroid/telephony/SignalStrength;->InitializeSignalBins()I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 60
    invoke-static {}, Landroid/telephony/SignalStrength;->InitializeSignalNames()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 82
    const v0, 0x7fffffff

    sput v0, Landroid/telephony/SignalStrength;->INVALID:I

    .line 421
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    .prologue
    .line 140
    const/16 v1, 0x63

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x63

    sget v9, Landroid/telephony/SignalStrength;->INVALID:I

    sget v10, Landroid/telephony/SignalStrength;->INVALID:I

    sget v11, Landroid/telephony/SignalStrength;->INVALID:I

    sget v12, Landroid/telephony/SignalStrength;->INVALID:I

    sget v13, Landroid/telephony/SignalStrength;->INVALID:I

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZI)V

    .line 141
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 1
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "tdScdmaRscp"
    .parameter "gsm"

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->weakRSSI:Z

    .line 175
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 176
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 177
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 178
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 179
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 180
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 181
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 182
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 183
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 184
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 185
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 186
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 187
    iput p13, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 188
    iput-boolean p14, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 189
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 190
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZI)V
    .locals 2
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "tdScdmaRscp"
    .parameter "gsm"
    .parameter "gsmSignalBar"

    .prologue
    .line 220
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->weakRSSI:Z

    .line 221
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 222
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 223
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 224
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 225
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 226
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 227
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 228
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 229
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 230
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 231
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 232
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 233
    iput p13, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 234
    move/from16 v0, p14

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 235
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 236
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZIZ)V
    .locals 2
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteRssi"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteSnr"
    .parameter "lteCqi"
    .parameter "tdScdmaRscp"
    .parameter "gsm"
    .parameter "gsmSignalBar"
    .parameter "lowRSSI"

    .prologue
    .line 264
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->weakRSSI:Z

    .line 265
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 266
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 267
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 268
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 269
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 270
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 271
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 272
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 273
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 274
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 275
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 276
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 277
    iput p13, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 278
    move/from16 v0, p14

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 279
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 280
    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->weakRSSI:Z

    .line 281
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 2
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->weakRSSI:Z

    .line 153
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 154
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 155
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 156
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 157
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 158
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 159
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 160
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 161
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 162
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 163
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 164
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 165
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 166
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 167
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 168
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZI)V
    .locals 1
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"
    .parameter "gsmSignalBar"

    .prologue
    .line 198
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->weakRSSI:Z

    .line 199
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 200
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 201
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 202
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 203
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 204
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 205
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 206
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 207
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 208
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 209
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 210
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 211
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 212
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 213
    iput p14, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 214
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZIZ)V
    .locals 2
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteRssi"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteSnr"
    .parameter "lteCqi"
    .parameter "gsm"
    .parameter "gsmSignalBar"
    .parameter "lowRSSI"

    .prologue
    .line 243
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->weakRSSI:Z

    .line 244
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 245
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 246
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 247
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 248
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 249
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 250
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 251
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 252
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 253
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 254
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 255
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 256
    sget v1, Landroid/telephony/SignalStrength;->INVALID:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 257
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 258
    move/from16 v0, p14

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 259
    move/from16 v0, p15

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->weakRSSI:Z

    .line 260
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 15
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"

    .prologue
    .line 293
    const/16 v8, 0x63

    sget v9, Landroid/telephony/SignalStrength;->INVALID:I

    sget v10, Landroid/telephony/SignalStrength;->INVALID:I

    sget v11, Landroid/telephony/SignalStrength;->INVALID:I

    sget v12, Landroid/telephony/SignalStrength;->INVALID:I

    sget v13, Landroid/telephony/SignalStrength;->INVALID:I

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v14, p8

    invoke-direct/range {v0 .. v14}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZ)V

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->weakRSSI:Z

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 354
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Z)V
    .locals 3
    .parameter "in"
    .parameter "validate"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 363
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->weakRSSI:Z

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 382
    if-ne p2, v1, :cond_1

    .line 383
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 384
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 304
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->weakRSSI:Z

    .line 305
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 306
    return-void
.end method

.method private static InitializeSignalBins()I
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x5

    .line 110
    .local v0, maxRSSI:I
    const-string v1, "1"

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    :cond_0
    const/4 v0, 0x6

    .line 116
    :cond_1
    :goto_0
    return v0

    .line 113
    :cond_2
    const-string v1, "1"

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private static InitializeSignalNames()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    const-string v3, "1"

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1"

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    :cond_0
    const/4 v3, 0x6

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "none"

    aput-object v3, v2, v5

    const-string/jumbo v3, "poor"

    aput-object v3, v2, v6

    const-string v3, "moderate"

    aput-object v3, v2, v7

    const-string v3, "good"

    aput-object v3, v2, v8

    const-string v3, "great"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "excellent"

    aput-object v4, v2, v3

    .local v2, vzwName:[Ljava/lang/String;
    move-object v1, v2

    .line 130
    .end local v2           #vzwName:[Ljava/lang/String;
    .local v0, defualtName:[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 125
    .end local v0           #defualtName:[Ljava/lang/String;
    :cond_1
    const-string v3, "1"

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    const/4 v3, 0x7

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "none"

    aput-object v3, v1, v5

    const-string/jumbo v3, "poor"

    aput-object v3, v1, v6

    const-string v3, "moderate"

    aput-object v3, v1, v7

    const-string v3, "good"

    aput-object v3, v1, v8

    const-string v3, "great"

    aput-object v3, v1, v9

    const/4 v3, 0x5

    const-string v4, "excellent"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "perfect"

    aput-object v4, v1, v3

    .line 127
    .local v1, sprName:[Ljava/lang/String;
    goto :goto_0

    .line 129
    .end local v1           #sprName:[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "none"

    aput-object v3, v0, v5

    const-string/jumbo v3, "poor"

    aput-object v3, v0, v6

    const-string v3, "moderate"

    aput-object v3, v0, v7

    const-string v3, "good"

    aput-object v3, v0, v8

    const-string v3, "great"

    aput-object v3, v0, v9

    .restart local v0       #defualtName:[Ljava/lang/String;
    move-object v1, v0

    .line 130
    goto :goto_0
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 593
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1356
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "m"

    .prologue
    .line 101
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 102
    .local v0, ret:Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 103
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1307
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1308
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1309
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1310
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1311
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1312
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1313
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1314
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1315
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1316
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1317
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1318
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1319
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1320
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1321
    const-string v0, "GsmSignalBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 1324
    return-void
.end method

.method private validateInput()V
    .locals 5

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SignalStrength before validate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 435
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 438
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 439
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 441
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 442
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 443
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 445
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 446
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 447
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 448
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 449
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v0, v0

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength after validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 453
    return-void

    :cond_3
    move v0, v1

    .line 435
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 438
    goto/16 :goto_1

    .line 439
    :cond_5
    const/16 v0, -0xa0

    goto/16 :goto_2

    :cond_6
    move v0, v3

    .line 442
    goto :goto_3

    .line 446
    :cond_7
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    goto :goto_4

    .line 447
    :cond_8
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    goto :goto_5

    .line 448
    :cond_9
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    goto :goto_6

    .line 449
    :cond_a
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    goto :goto_7
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 312
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 313
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 314
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 315
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 316
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 317
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 318
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 319
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 320
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 321
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 322
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 323
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 324
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 325
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 326
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 329
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 1215
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    .local v2, s:Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1241
    .end local v2           #s:Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1216
    :catch_0
    move-exception v1

    .line 1217
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1241
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 1333
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1334
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1335
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1336
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1337
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1338
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1339
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1340
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1341
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1342
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1343
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1344
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1345
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1346
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1347
    const-string v0, "GsmSignalBar"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1350
    return-void
.end method

.method public getAsuLevel()I
    .locals 7

    .prologue
    const/16 v6, 0x63

    .line 677
    const-string v4, "1"

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 678
    const-string v4, "gsm.current.phone-type"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 679
    .local v2, currentPhone:I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 680
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 727
    .end local v2           #currentPhone:I
    :goto_0
    return v0

    .line 682
    .restart local v2       #currentPhone:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v0

    goto :goto_0

    .line 685
    .end local v2           #currentPhone:I
    :cond_1
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_4

    .line 688
    const-string v4, "getAsuLevel 1"

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 689
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-eq v4, v6, :cond_2

    .line 691
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 726
    .local v0, asuLevel:I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAsuLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    .end local v0           #asuLevel:I
    :cond_2
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-eq v4, v6, :cond_3

    .line 695
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_1

    .line 699
    .end local v0           #asuLevel:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #asuLevel:I
    goto :goto_1

    .line 713
    .end local v0           #asuLevel:I
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 714
    .local v1, cdmaAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v3

    .line 715
    .local v3, evdoAsuLevel:I
    if-nez v3, :cond_5

    .line 717
    move v0, v1

    .restart local v0       #asuLevel:I
    goto :goto_1

    .line 718
    .end local v0           #asuLevel:I
    :cond_5
    if-nez v1, :cond_6

    .line 720
    move v0, v3

    .restart local v0       #asuLevel:I
    goto :goto_1

    .line 723
    .end local v0           #asuLevel:I
    :cond_6
    if-ge v1, v3, :cond_7

    move v0, v1

    .restart local v0       #asuLevel:I
    :goto_2
    goto :goto_1

    .end local v0           #asuLevel:I
    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 905
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 906
    .local v1, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 910
    .local v2, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 918
    .local v0, cdmaAsuLevel:I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 925
    .local v3, ecioAsuLevel:I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 926
    .local v4, level:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 927
    return v4

    .line 911
    .end local v0           #cdmaAsuLevel:I
    .end local v3           #ecioAsuLevel:I
    .end local v4           #level:I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 912
    .end local v0           #cdmaAsuLevel:I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 913
    .end local v0           #cdmaAsuLevel:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 914
    .end local v0           #cdmaAsuLevel:I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 915
    .end local v0           #cdmaAsuLevel:I
    :cond_4
    const/16 v0, 0x63

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 919
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 920
    .end local v3           #ecioAsuLevel:I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 921
    .end local v3           #ecioAsuLevel:I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 922
    .end local v3           #ecioAsuLevel:I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 923
    .end local v3           #ecioAsuLevel:I
    :cond_9
    const/16 v3, 0x63

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 925
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 3

    .prologue
    .line 858
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 863
    .local v0, level:I
    and-int/lit16 v1, v0, 0xf00

    shr-int/lit8 v0, v1, 0x8

    .line 866
    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    .line 868
    const/4 v0, 0x0

    .line 870
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCdmaLevel ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 871
    return v0
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, 0x63

    .line 736
    sget v1, Landroid/telephony/SignalStrength;->INVALID:I

    .line 741
    .local v1, dBm:I
    const-string v2, "1"

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 742
    const-string v2, "gsm.current.phone-type"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 743
    .local v0, currentPhone:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 744
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v2

    .line 780
    .end local v0           #currentPhone:I
    :goto_0
    return v2

    .line 746
    .restart local v0       #currentPhone:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    goto :goto_0

    .line 749
    .end local v0           #currentPhone:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 752
    const-string v2, "getDbm 1"

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 753
    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-eq v2, v4, :cond_2

    .line 755
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 779
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDbm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v2, v1

    .line 780
    goto :goto_0

    .line 757
    :cond_2
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-eq v2, v4, :cond_3

    .line 759
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    goto :goto_1

    .line 763
    :cond_3
    const/16 v1, -0x71

    goto :goto_1

    .line 777
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 7

    .prologue
    .line 984
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 985
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 989
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 996
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1003
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1004
    .local v2, level:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1005
    return v2

    .line 990
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 991
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 992
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 993
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 994
    .end local v3           #levelEvdoDbm:I
    :cond_4
    const/16 v3, 0x63

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 997
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 998
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 999
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1000
    .end local v4           #levelEvdoSnr:I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1001
    .end local v4           #levelEvdoSnr:I
    :cond_9
    const/16 v4, 0x63

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 1003
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 3

    .prologue
    .line 938
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 943
    .local v0, level:I
    const v1, 0xf000

    and-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0xc

    .line 946
    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    .line 948
    const/4 v0, 0x0

    .line 950
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEvdoLevel ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 951
    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 3

    .prologue
    .line 845
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 846
    .local v0, level:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGsmAsuLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 847
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 791
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 792
    .local v2, gsmSignalStrength:I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 793
    .local v0, asu:I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 794
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 798
    .local v1, dBm:I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 799
    return v1

    .end local v0           #asu:I
    .end local v1           #dBm:I
    :cond_0
    move v0, v2

    .line 792
    goto :goto_0

    .line 796
    .restart local v0       #asu:I
    :cond_1
    const/4 v1, -0x1

    .restart local v1       #dBm:I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 3

    .prologue
    .line 811
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 812
    .local v0, level:I
    and-int/lit16 v0, v0, 0xff

    .line 813
    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    .line 815
    const/4 v0, 0x0

    .line 831
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGsmLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 832
    return v0
.end method

.method public getGsmSignalBar()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 2

    .prologue
    const/16 v0, 0x63

    .line 468
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-eq v1, v0, :cond_1

    .line 470
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 478
    :cond_0
    :goto_0
    return v0

    .line 472
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-eq v1, v0, :cond_0

    .line 474
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    goto :goto_0
.end method

.method public getLevel()I
    .locals 7

    .prologue
    const/16 v6, 0x63

    .line 606
    const-string v4, "1"

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 607
    const-string v4, "gsm.current.phone-type"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 608
    .local v1, currentPhone:I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 609
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v3

    .line 664
    .end local v1           #currentPhone:I
    :goto_0
    return v3

    .line 611
    .restart local v1       #currentPhone:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v3

    goto :goto_0

    .line 614
    .end local v1           #currentPhone:I
    :cond_1
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_5

    .line 617
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-eq v4, v6, :cond_3

    .line 619
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v3

    .line 663
    .local v3, level:I
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 621
    .end local v3           #level:I
    :cond_3
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-eq v4, v6, :cond_4

    .line 623
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    .restart local v3       #level:I
    goto :goto_1

    .line 627
    .end local v3           #level:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #level:I
    goto :goto_1

    .line 641
    .end local v3           #level:I
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 642
    .local v0, cdmaLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v2

    .line 643
    .local v2, evdoLevel:I
    if-nez v2, :cond_6

    .line 645
    move v3, v0

    .restart local v3       #level:I
    goto :goto_1

    .line 646
    .end local v3           #level:I
    :cond_6
    if-nez v0, :cond_7

    .line 648
    move v3, v2

    .restart local v3       #level:I
    goto :goto_1

    .line 651
    .end local v3           #level:I
    :cond_7
    if-ge v0, v2, :cond_8

    move v3, v0

    .line 655
    .restart local v3       #level:I
    :goto_2
    const-string v4, "1"

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 656
    move v3, v2

    goto :goto_1

    .end local v3           #level:I
    :cond_8
    move v3, v2

    .line 651
    goto :goto_2
.end method

.method public getLteAsuLevel()I
    .locals 4

    .prologue
    .line 1102
    const/16 v0, 0x63

    .line 1103
    .local v0, lteAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1117
    .local v1, lteDbm:I
    sget v2, Landroid/telephony/SignalStrength;->INVALID:I

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1119
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lte Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1120
    return v0

    .line 1118
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 3

    .prologue
    .line 1014
    const-string v0, "SignalStrength"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLteDbm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 3

    .prologue
    .line 1032
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    .line 1034
    .local v0, level:I
    and-int/lit16 v0, v0, 0xff

    .line 1035
    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    .line 1037
    const/4 v0, 0x0

    .line 1039
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLteLevel ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1040
    return v0
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssi()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getLteSnr()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 4

    .prologue
    .line 1169
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1172
    .local v1, tdScdmaDbm:I
    sget v2, Landroid/telephony/SignalStrength;->INVALID:I

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1174
    .local v0, tdScdmaAsuLevel:I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TD-SCDMA Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1175
    return v0

    .line 1173
    .end local v0           #tdScdmaAsuLevel:I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    .restart local v0       #tdScdmaAsuLevel:I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 1136
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 4

    .prologue
    .line 1148
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1151
    .local v1, tdScdmaDbm:I
    const/16 v2, -0x19

    if-gt v1, v2, :cond_0

    sget v2, Landroid/telephony/SignalStrength;->INVALID:I

    if-ne v1, v2, :cond_1

    .line 1152
    :cond_0
    const/4 v0, 0x0

    .line 1159
    .local v0, level:I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTdScdmaLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1160
    return v0

    .line 1153
    .end local v0           #level:I
    :cond_1
    const/16 v2, -0x31

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    .restart local v0       #level:I
    goto :goto_0

    .line 1154
    .end local v0           #level:I
    :cond_2
    const/16 v2, -0x49

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    .restart local v0       #level:I
    goto :goto_0

    .line 1155
    .end local v0           #level:I
    :cond_3
    const/16 v2, -0x61

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    .restart local v0       #level:I
    goto :goto_0

    .line 1156
    .end local v0           #level:I
    :cond_4
    const/16 v2, -0x78

    if-lt v1, v2, :cond_5

    const/4 v0, 0x1

    .restart local v0       #level:I
    goto :goto_0

    .line 1157
    .end local v0           #level:I
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #level:I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1183
    const/16 v0, 0x1f

    .line 1196
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDataSignalMarginal()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->weakRSSI:Z

    return v0
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1127
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .parameter "gsmFlag"

    .prologue
    .line 462
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 463
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 390
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalBar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    return-void

    .line 403
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
