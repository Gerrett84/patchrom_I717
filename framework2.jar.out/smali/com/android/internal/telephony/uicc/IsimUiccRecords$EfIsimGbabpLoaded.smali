.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;
.super Ljava/lang/Object;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimGbabpLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    const-string v0, "EF_ISIM_GBABP"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v9, 0x0

    .line 290
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v1, v6

    check-cast v1, [B

    .line 293
    .local v1, data:[B
    :try_start_0
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0

    .line 294
    const/4 v3, 0x0

    .line 295
    .local v3, i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    aget-byte v5, v1, v3

    .line 297
    .local v5, l:I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-array v7, v5, [B

    #setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRand:[B
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$902(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[B)[B

    .line 298
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #getter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRand:[B
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$900(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1, v4, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    add-int/lit8 v3, v5, 0x1

    .line 301
    .end local v4           #i:I
    .restart local v3       #i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    aget-byte v5, v1, v3

    .line 302
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v1, v4, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mBtid:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1002(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    add-int v3, v4, v5

    .line 305
    .end local v4           #i:I
    .restart local v3       #i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    aget-byte v5, v1, v3

    .line 306
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v1, v4, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mKeyLifetime:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1102(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v4           #i:I
    .end local v5           #l:I
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v2

    .line 314
    .local v2, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse GBABP contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 315
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRand:[B
    invoke-static {v6, v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$902(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[B)[B

    .line 316
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mBtid:Ljava/lang/String;
    invoke-static {v6, v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1002(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    #setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mKeyLifetime:Ljava/lang/String;
    invoke-static {v6, v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1102(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
