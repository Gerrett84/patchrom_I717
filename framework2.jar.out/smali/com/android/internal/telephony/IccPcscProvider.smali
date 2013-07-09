.class public Lcom/android/internal/telephony/IccPcscProvider;
.super Ljava/lang/Object;
.source "IccPcscProvider.java"


# static fields
.field public static final CONNECT:I = 0x4

.field public static final DISCONNECT:I = 0x5

.field public static final INIT:I = 0x1

.field private static final OEM_AUTH_ATR:I = 0xd

.field private static final OEM_AUTH_OPEN_CHANNEL:I = 0x9

.field private static final OEM_AUTH_SEND_APDU:I = 0x8

.field private static final OEM_DOMESTIC_GET_ATR:I = 0x26

.field private static final OEM_DOMESTIC_GSIM_ACCESS:I = 0x27

.field private static final OEM_DOMESTIC_PCSC_POWERDOWN:I = 0x28

.field private static final OEM_DOMESTIC_PCSC_POWERUP:I = 0x26

.field private static final OEM_DOMESTIC_PCSC_TRANSMIT:I = 0x27

.field private static final OEM_FUNCTION_ID_AUTH:I = 0x15

.field private static final OEM_FUNCTION_ID_DOMESTIC:I = 0x12

.field public static final POWERDOWN:I = 0x3

.field public static final POWERUP:I = 0x2

.field public static final RESPONSE_MAX_SIZE:I = 0x106

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field public static final SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final SMARTCARD_IO_SUCCESS:I = 0x0

.field public static final TRANSMIT:I = 0x6

.field private static final USE_IPC_GSIM:Z = true

.field static final mLogTag:Ljava/lang/String; = "RIL_IccPcscProvider"

.field private static scInstance:Lcom/android/internal/telephony/IccPcscProvider;


# instance fields
.field private NUM_OF_CHANNEL:I

.field private _atr:[B

.field private cardStatus:I

.field private channel:[I

.field private isInitiated:Z

.field private lastChannel:I

.field private final scLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->NUM_OF_CHANNEL:I

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->scLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->lastChannel:I

    .line 82
    const-string v0, "RIL_IccPcscProvider"

    const-string v1, "IccPcscProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    .line 84
    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 408
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 420
    :goto_0
    return-object v3

    .line 410
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 412
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 414
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 415
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 417
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 420
    .end local v0           #b:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private connectToRIL()I
    .locals 10

    .prologue
    const/4 v6, -0x1

    .line 195
    const-string v7, "RIL_IccPcscProvider"

    const-string v8, "connectToRIL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v5, 0x0

    .line 199
    .local v5, val:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 200
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 203
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x9

    .line 204
    .local v3, fileSize:I
    const/16 v7, 0x15

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 205
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 206
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 207
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 208
    const/16 v7, 0x70

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 209
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 216
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 217
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v7, 0x1

    :try_start_1
    new-array v4, v7, [B

    .line 226
    .local v4, response:[B
    const-string v7, "phoneext"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x4

    invoke-interface {v7, v8, v4, v9}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I

    move-result v5

    .line 228
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 229
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    const/4 v1, 0x0

    .line 231
    const/4 v0, 0x0

    move v6, v5

    .line 243
    .end local v4           #response:[B
    :cond_0
    :goto_0
    return v6

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, e:Ljava/io/IOException;
    const-string v7, "RIL_IccPcscProvider"

    const-string v8, "IOException - connect"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 237
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "RIL_IccPcscProvider"

    const-string v8, "Exception - connect"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 240
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 241
    :catch_2
    move-exception v7

    goto :goto_0
.end method

.method private disconnectFromRIL(I)I
    .locals 10
    .parameter "channel"

    .prologue
    const/4 v6, -0x1

    .line 329
    const-string v7, "RIL_IccPcscProvider"

    const-string v8, "disconnectFromRIL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v5, 0x0

    .line 331
    .local v5, val:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 332
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 335
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x9

    .line 337
    .local v3, fileSize:I
    const/16 v3, 0x8

    .line 338
    const/16 v7, 0x15

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 339
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 340
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 341
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 342
    const/16 v7, 0x70

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 343
    const/16 v7, 0x80

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 344
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    const/4 v7, 0x1

    :try_start_1
    new-array v4, v7, [B

    .line 356
    .local v4, response:[B
    const-string v7, "phoneext"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v7, v8, v4, v9}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I

    move-result v5

    .line 358
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 359
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    const/4 v1, 0x0

    .line 361
    const/4 v0, 0x0

    move v6, v5

    .line 370
    .end local v4           #response:[B
    :goto_0
    return v6

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, e:Ljava/io/IOException;
    const-string v7, "RIL_IccPcscProvider"

    const-string v8, "IO Exception - Disconnect"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 365
    .local v2, e:Ljava/lang/Exception;
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 366
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 369
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 367
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 395
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 396
    .local v0, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 397
    const-string v1, "RIL_IccPcscProvider"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    return-object v0
.end method

.method private pcscPowerdown()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "RIL_IccPcscProvider"

    const-string v1, "pcscPowerdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method private pscsPowerup()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, atrLength:I
    const-string v7, "RIL_IccPcscProvider"

    const-string v8, "pscsPowerup"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v5, 0x4

    .line 95
    .local v5, fileSize:I
    const/16 v7, 0x15

    :try_start_0
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 96
    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 97
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/16 v7, 0x106

    :try_start_1
    new-array v6, v7, [B

    .line 105
    .local v6, response:[B
    const-string v7, "phoneext"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v7, v8, v6, v9}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I

    .line 106
    const/4 v7, 0x0

    aget-byte v0, v6, v7

    .line 107
    const-string v7, "RIL_IccPcscProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pscsPowerup ATR:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/android/internal/telephony/IccPcscProvider;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v7, "RIL_IccPcscProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pscsPowerup atrLength:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-array v7, v0, [B

    iput-object v7, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    .line 110
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .end local v6           #response:[B
    :goto_0
    if-eqz v2, :cond_0

    .line 120
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 121
    :cond_0
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 126
    :cond_1
    :goto_1
    return-void

    .line 98
    :catch_0
    move-exception v3

    .line 99
    .local v3, e:Ljava/io/IOException;
    goto :goto_1

    .line 112
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 113
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    iput-boolean v10, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    goto :goto_0

    .line 123
    .end local v3           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 124
    .local v4, ex:Ljava/io/IOException;
    const-string v7, "pscsPowerup"

    const-string v8, "close fail!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private transmitToRIL(I[B[B)I
    .locals 10
    .parameter "channel"
    .parameter "command"
    .parameter "response"

    .prologue
    const/4 v6, -0x1

    .line 275
    const-string v7, "RIL_IccPcscProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "transmitToRIL cmd : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/android/internal/telephony/IccPcscProvider;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v5, 0x0

    .line 278
    .local v5, val:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 279
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 282
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_0
    array-length v7, p2

    add-int/lit8 v3, v7, 0x4

    .line 283
    .local v3, fileSize:I
    const/16 v7, 0x15

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 284
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 285
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 287
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, p2

    if-ge v4, v7, :cond_0

    .line 288
    aget-byte v7, p2, v4

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 290
    .end local v3           #fileSize:I
    .end local v4           #i:I
    :catch_0
    move-exception v2

    .line 291
    .local v2, e:Ljava/io/IOException;
    const-string v7, "RIL_IccPcscProvider"

    const-string v8, "IOException - transmit"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 296
    .restart local v3       #fileSize:I
    .restart local v4       #i:I
    :cond_0
    :try_start_1
    const-string v7, "phoneext"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v7, v8, p3, v9}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I

    move-result v5

    .line 298
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 299
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    const/4 v1, 0x0

    .line 301
    const/4 v0, 0x0

    move v6, v5

    .line 302
    goto :goto_1

    .line 303
    :catch_1
    move-exception v2

    .line 305
    .local v2, e:Ljava/lang/Exception;
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 306
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 309
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 307
    :catch_2
    move-exception v7

    goto :goto_2
.end method


# virtual methods
.method public connect()I
    .locals 3

    .prologue
    .line 175
    const/4 v0, -0x1

    .line 177
    .local v0, logiCh:I
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    if-nez v1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    .line 182
    :cond_0
    const-string v1, "RIL_IccPcscProvider"

    const-string v2, "connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->connectToRIL()I

    move-result v1

    return v1
.end method

.method public disconnect(I)I
    .locals 2
    .parameter "channel"

    .prologue
    .line 324
    const-string v0, "RIL_IccPcscProvider"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPcscProvider;->disconnectFromRIL(I)I

    move-result v0

    return v0
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pcscPowerdown()V

    .line 130
    return-void
.end method

.method public getATR([B)I
    .locals 3
    .parameter "atr"

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    array-length v0, v1

    .line 384
    .local v0, size:I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 385
    :cond_0
    const-string v1, "RIL_IccPcscProvider"

    const-string v2, "getATR SMARTCARD_IO_ERROR_ATR_BUFFER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, -0x6

    .line 391
    .end local v0           #size:I
    :goto_0
    return v0

    .line 390
    .restart local v0       #size:I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public transmit(I[B[B)I
    .locals 1
    .parameter "channel"
    .parameter "command"
    .parameter "response"

    .prologue
    .line 261
    if-nez p2, :cond_0

    .line 262
    const/4 v0, -0x4

    .line 271
    :goto_0
    return v0

    .line 264
    :cond_0
    if-nez p3, :cond_1

    .line 265
    const/4 v0, -0x5

    goto :goto_0

    .line 271
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPcscProvider;->transmitToRIL(I[B[B)I

    move-result v0

    goto :goto_0
.end method
