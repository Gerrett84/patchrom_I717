.class public Lcom/android/internal/telephony/KddiJudgeSmsType;
.super Ljava/lang/Object;
.source "KddiJudgeSmsType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;,
        Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;,
        Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;
    }
.end annotation


# static fields
.field private static final KDDI_CUT_WORD:Ljava/lang/String; = ","

.field private static final KDDI_NEW_SMS_TYPE:[B = null

.field private static final KDDI_SMS_ARRAY_COUNT:I = 0x2

.field private static final KDDI_TAG:Ljava/lang/String; = "KDDI_SMS"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mResourceId:I

.field protected mSmsTypeRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/KddiJudgeSmsType;->KDDI_NEW_SMS_TYPE:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x70t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/KddiJudgeSmsType;->mResourceId:I

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/KddiJudgeSmsType;->mContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/android/internal/telephony/KddiJudgeSmsType;->mResourceId:I

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/telephony/KddiJudgeSmsType;->kddiReadSmsTypeTable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const-string v0, "KDDI_SMS"

    const-string v1, "KDDIreadSmsTypeTable() failed to read target resource"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return-void
.end method

.method private kddiAsByteArray(Ljava/lang/String;I)[B
    .locals 5
    .parameter "hex"
    .parameter "count"

    .prologue
    const/4 v4, 0x2

    .line 364
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 369
    :cond_0
    new-array v0, p2, [B

    .line 372
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 374
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_1
    return-object v0
.end method

.method private kddiCheckNullWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "word"

    .prologue
    .line 349
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    const/4 p1, 0x0

    .line 352
    :cond_0
    return-object p1
.end method

.method private kddiSetRecord([Ljava/lang/String;)Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;
    .locals 18
    .parameter "splitList"

    .prologue
    .line 263
    const-string v4, ""

    .line 264
    .local v4, sendAction:Ljava/lang/String;
    const-string v5, ""

    .line 265
    .local v5, sendPermission:Ljava/lang/String;
    const/4 v6, 0x0

    .line 266
    .local v6, responseType:I
    const/4 v7, 0x0

    .line 267
    .local v7, smsType:[B
    const/4 v8, 0x0

    .line 268
    .local v8, addCondition:B
    const/4 v11, 0x0

    .line 269
    .local v11, conditionOffset:I
    const/4 v10, 0x0

    .line 270
    .local v10, conditionLen:I
    const/4 v9, 0x0

    .line 273
    .local v9, conditionFree:[B
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v12, v3, :cond_1

    .line 274
    packed-switch v12, :pswitch_data_0

    .line 273
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 276
    :pswitch_0
    aget-object v3, p1, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/KddiJudgeSmsType;->kddiCheckNullWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 277
    goto :goto_1

    .line 279
    :pswitch_1
    aget-object v3, p1, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/KddiJudgeSmsType;->kddiCheckNullWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 280
    goto :goto_1

    .line 282
    :pswitch_2
    aget-object v3, p1, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 283
    goto :goto_1

    .line 285
    :pswitch_3
    aget-object v3, p1, v12

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/KddiJudgeSmsType;->kddiAsByteArray(Ljava/lang/String;I)[B

    move-result-object v7

    .line 286
    goto :goto_1

    .line 289
    :pswitch_4
    const-string v16, ""

    .line 290
    .local v16, str:Ljava/lang/String;
    aget-object v16, p1, v12

    .line 291
    const/4 v3, 0x0

    const/16 v17, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v17, "0x"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 294
    :cond_0
    const/16 v3, 0x10

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v8, v3

    .line 295
    goto :goto_1

    .line 302
    .end local v16           #str:Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;-><init>(Lcom/android/internal/telephony/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I[BB)V

    .line 304
    .local v2, smsTypeRecord:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    .line 307
    if-eqz v8, :cond_3

    .line 310
    const/4 v3, -0x1

    if-ne v8, v3, :cond_2

    .line 311
    const/4 v14, 0x2

    .line 318
    .local v14, loopCnt:I
    :goto_2
    const/4 v12, 0x5

    .line 319
    const/4 v13, 0x0

    .local v13, j:I
    :goto_3
    if-ge v13, v14, :cond_3

    .line 321
    aget-object v3, p1, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 322
    add-int/lit8 v12, v12, 0x1

    .line 325
    aget-object v3, p1, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 326
    add-int/lit8 v12, v12, 0x1

    .line 329
    aget-object v3, p1, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/android/internal/telephony/KddiJudgeSmsType;->kddiAsByteArray(Ljava/lang/String;I)[B

    move-result-object v9

    .line 330
    add-int/lit8 v12, v12, 0x1

    .line 333
    new-instance v15, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11, v10, v9}, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;-><init>(Lcom/android/internal/telephony/KddiJudgeSmsType;II[B)V

    .line 335
    .local v15, smsTypeAddCondition:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    iget-object v3, v2, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 314
    .end local v13           #j:I
    .end local v14           #loopCnt:I
    .end local v15           #smsTypeAddCondition:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    :cond_2
    move v14, v8

    .restart local v14       #loopCnt:I
    goto :goto_2

    .line 339
    .end local v14           #loopCnt:I
    :cond_3
    return-object v2

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public kddiJudgeType([B)Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;
    .locals 7
    .parameter "userdata"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    const/4 v2, 0x0

    .line 61
    .local v2, offset:I
    iget-object v3, p0, Lcom/android/internal/telephony/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/telephony/KddiJudgeSmsType;->kddiReadSmsTypeTable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    const-string v3, "KDDI_SMS"

    const-string v4, "KDDIreadSmsTypeTable() failed to read target resource"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .local v0, accessory:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;
    move-object v1, v0

    .line 79
    .end local v0           #accessory:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;
    .local v1, accessory:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 71
    .end local v1           #accessory:Ljava/lang/Object;
    :cond_0
    array-length v3, p1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 72
    sget-object v3, Lcom/android/internal/telephony/KddiJudgeSmsType;->KDDI_NEW_SMS_TYPE:[B

    aget-byte v3, v3, v5

    aget-byte v4, p1, v5

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/android/internal/telephony/KddiJudgeSmsType;->KDDI_NEW_SMS_TYPE:[B

    aget-byte v3, v3, v6

    aget-byte v4, p1, v6

    if-ne v3, v4, :cond_1

    .line 74
    const/4 v2, 0x2

    .line 78
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/KddiJudgeSmsType;->kddiUserdataJudgment([BI)Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;

    move-result-object v0

    .restart local v0       #accessory:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;
    move-object v1, v0

    .line 79
    .restart local v1       #accessory:Ljava/lang/Object;
    goto :goto_0
.end method

.method protected kddiReadSmsTypeTable()Z
    .locals 12

    .prologue
    .line 198
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v4, filelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 203
    .local v6, in:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 205
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 209
    .local v7, result:Z
    const/4 v3, 0x0

    .line 211
    .local v3, fileline:I
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/KddiJudgeSmsType;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/KddiJudgeSmsType;->mResourceId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 212
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 214
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 215
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/internal/telephony/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    .line 223
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 225
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, splitStr:[Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/KddiJudgeSmsType;->kddiSetRecord([Ljava/lang/String;)Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;

    move-result-object v8

    .line 231
    .local v8, smsTypeRecord:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;
    iget-object v10, p0, Lcom/android/internal/telephony/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 223
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 234
    .end local v8           #smsTypeRecord:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;
    .end local v9           #splitStr:[Ljava/lang/String;
    :cond_1
    const/4 v7, 0x1

    move-object v0, v1

    .line 248
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v5           #i:I
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_2
    return v7

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, e:Ljava/lang/NumberFormatException;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 238
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 239
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    :goto_4
    const-string v10, "KDDI_SMS"

    const-string v11, "readSmsTypeTable() Target resource is not found"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_2

    .line 241
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v2

    .line 242
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_5
    const-string v10, "KDDI_SMS"

    const-string v11, "readSmsTypeTable() Reading failure of target resource"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2

    .line 244
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v2

    .line 245
    .local v2, e:Ljava/io/IOException;
    :goto_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 244
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_6

    .line 241
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 238
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 236
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method protected kddiUserdataJudgment([BI)Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;
    .locals 14
    .parameter "userdata"
    .parameter "offset"

    .prologue
    .line 85
    const/4 v6, 0x0

    .line 86
    .local v6, listNum:I
    const/4 v5, 0x0

    .line 91
    .local v5, judgeSms:Z
    array-length v10, p1

    .line 94
    .local v10, userdataLen:I
    :goto_0
    iget-object v11, p0, Lcom/android/internal/telephony/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_7

    .line 96
    move/from16 v8, p2

    .line 98
    .local v8, pos:I
    iget-object v11, p0, Lcom/android/internal/telephony/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;

    .line 102
    .local v9, smsTypeRecord:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;
    iget-object v11, v9, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    iget-object v11, v9, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    const/4 v12, 0x1

    aget-byte v11, v11, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 104
    :cond_0
    sub-int v11, v10, v8

    const/4 v12, 0x2

    if-lt v11, v12, :cond_1

    .line 105
    aget-byte v11, p1, v8

    iget-object v12, v9, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    if-ne v11, v12, :cond_1

    add-int/lit8 v11, v8, 0x1

    aget-byte v11, p1, v11

    iget-object v12, v9, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    if-eq v11, v12, :cond_2

    .line 94
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 110
    :cond_2
    const/4 v5, 0x1

    .line 119
    :cond_3
    iget-byte v11, v9, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddCondition:B

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    .line 121
    iget-byte v2, v9, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddCondition:B

    .line 123
    .local v2, conditionNum:I
    if-lez v2, :cond_6

    .line 124
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 126
    iget-object v11, v9, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;

    .line 128
    .local v1, addCondition:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    iget v11, v1, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionOffset:I

    add-int/2addr v8, v11

    .line 131
    sub-int v11, v10, v8

    iget v12, v1, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    if-lt v11, v12, :cond_5

    .line 132
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    iget v11, v1, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    if-ge v4, v11, :cond_5

    .line 133
    aget-byte v11, p1, v8

    iget-object v12, v1, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_4

    .line 134
    const/4 v5, 0x1

    .line 135
    add-int/lit8 v8, v8, 0x1

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 137
    :cond_4
    const/4 v5, 0x0

    .line 142
    .end local v4           #j:I
    :cond_5
    const/4 v11, 0x1

    if-eq v5, v11, :cond_8

    .line 174
    .end local v1           #addCondition:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .end local v2           #conditionNum:I
    .end local v3           #i:I
    :cond_6
    :goto_3
    const/4 v11, 0x1

    if-ne v5, v11, :cond_1

    .line 180
    .end local v8           #pos:I
    .end local v9           #smsTypeRecord:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;
    :cond_7
    const/4 v11, 0x1

    if-ne v5, v11, :cond_b

    .line 181
    iget-object v11, p0, Lcom/android/internal/telephony/KddiJudgeSmsType;->mSmsTypeRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;

    iget-object v0, v11, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mKddiSmsAccessory:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;

    .line 186
    .local v0, accessory:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;
    :goto_4
    return-object v0

    .line 124
    .end local v0           #accessory:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;
    .restart local v1       #addCondition:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .restart local v2       #conditionNum:I
    .restart local v3       #i:I
    .restart local v8       #pos:I
    .restart local v9       #smsTypeRecord:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 151
    .end local v1           #addCondition:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .end local v2           #conditionNum:I
    .end local v3           #i:I
    :cond_9
    iget-object v11, v9, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;

    .line 153
    .restart local v1       #addCondition:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    iget-object v11, v9, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddConditionList:Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;

    .line 155
    .local v7, nextRecord:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    iget v11, v1, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionOffset:I

    add-int/2addr v8, v11

    .line 158
    sub-int v11, v10, v8

    iget v12, v1, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    if-lt v11, v12, :cond_6

    .line 159
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    iget v11, v1, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    if-ge v3, v11, :cond_6

    .line 160
    aget-byte v11, p1, v8

    and-int/lit16 v11, v11, 0xff

    iget-object v12, v1, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v12, v12, v3

    and-int/lit16 v12, v12, 0xff

    if-lt v11, v12, :cond_6

    aget-byte v11, p1, v8

    and-int/lit16 v11, v11, 0xff

    iget-object v12, v7, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v12, v12, v3

    and-int/lit16 v12, v12, 0xff

    if-gt v11, v12, :cond_6

    .line 162
    iget-object v11, v1, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v11, v11, v3

    iget-object v12, v7, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    aget-byte v12, v12, v3

    if-eq v11, v12, :cond_a

    .line 163
    const/4 v5, 0x1

    .line 164
    goto :goto_3

    .line 166
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 184
    .end local v1           #addCondition:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .end local v3           #i:I
    .end local v7           #nextRecord:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;
    .end local v8           #pos:I
    .end local v9           #smsTypeRecord:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;
    :cond_b
    new-instance v0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;

    const-string v11, "android.provider.Telephony.SMS_RECEIVED"

    const-string v12, "android.permission.RECEIVE_SMS"

    const/4 v13, 0x0

    invoke-direct {v0, p0, v11, v12, v13}, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v0       #accessory:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;
    goto :goto_4
.end method
