.class public final Lcom/android/internal/telephony/uicc/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final EVENT_ADD_ADN_DONE:I = 0x3

.field static final EVENT_DELETE_ADN_DONE:I = 0x4

.field static final EVENT_LOAD_ALL_ADN_LIKE_AGAIN_DONE:I = 0x5

.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field protected static final ICC_TYPE:Ljava/lang/String; = "ril.ICC_TYPE"

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final SECURED_LOG:Z


# instance fields
.field adnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field adnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .parameter "fh"

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 77
    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 105
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 109
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 94
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 95
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 96
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 97
    .local v3, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 98
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 101
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 579
    :cond_0
    return-void

    .line 573
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 574
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 576
    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 577
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private secureLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "msg"
    .parameter "securedMsg"

    .prologue
    .line 742
    const-string v0, "GSM"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 149
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 151
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public extensionEfForEf(I)I
    .locals 5
    .parameter "efid"

    .prologue
    const/16 v1, 0x6f4a

    .line 128
    sparse-switch p1, :sswitch_data_0

    .line 141
    const/4 v1, -0x1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 129
    :sswitch_1
    const/16 v1, 0x6fc8

    goto :goto_0

    .line 131
    :sswitch_2
    const/16 v1, 0x6f4c

    goto :goto_0

    .line 132
    :sswitch_3
    const/16 v1, 0x6f4b

    goto :goto_0

    .line 134
    :sswitch_4
    const-string v2, "ril.ICC_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, iccType:Ljava/lang/String;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccType ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const/16 v1, 0x6f4e

    goto :goto_0

    .line 140
    .end local v0           #iccType:Ljava/lang/String;
    :cond_1
    :sswitch_5
    const/4 v1, 0x0

    goto :goto_0

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_5
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_4
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "GSM"

    const-string v1, "getRecordsIfLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 590
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 593
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 594
    .local v1, ar:Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 597
    .local v4, efid:I
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 598
    .local v8, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 600
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_1

    .line 601
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v10, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 603
    :cond_1
    invoke-direct {p0, v8, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 606
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v4           #efid:I
    .end local v8           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 607
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 608
    .restart local v4       #efid:I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 609
    .local v6, index:I
    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 611
    .local v0, adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_2

    .line 612
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    .line 613
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adnLikeFiles.get(efid) null fail, reinit framework member value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLikeAgain(I)V

    .line 622
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 623
    .local v7, response:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 625
    if-eqz v7, :cond_0

    .line 628
    :try_start_0
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v0, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 629
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 630
    :catch_0
    move-exception v5

    .line 631
    .local v5, ex:Ljava/lang/RuntimeException;
    const-string v9, "GSM"

    const-string v10, "AsyncResult.forMessage"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 617
    .end local v5           #ex:Ljava/lang/RuntimeException;
    .end local v7           #response:Landroid/os/Message;
    :cond_3
    iget v9, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    if-lez v9, :cond_2

    add-int/lit8 v9, v6, -0x1

    if-ltz v9, :cond_2

    .line 618
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v9, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 639
    .end local v0           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v4           #efid:I
    .end local v6           #index:I
    :pswitch_2
    const-string v9, "GSM"

    const-string v10, "EVENT_ADD_ADN_DONE"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 641
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 642
    .restart local v4       #efid:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 643
    .local v2, cnt:I
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cnt is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 647
    .restart local v0       #adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adn-alpha is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "adn-alpha is *"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adn-number is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "adn-number is *"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adn-record index is  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_4

    .line 652
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    .line 653
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adnLikeFiles.get(efid) null fail, reinit framework member value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLikeAgain(I)V

    .line 661
    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 662
    .restart local v7       #response:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 664
    if-eqz v7, :cond_0

    .line 667
    :try_start_1
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v0, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 668
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 669
    :catch_1
    move-exception v5

    .line 670
    .restart local v5       #ex:Ljava/lang/RuntimeException;
    const-string v9, "GSM"

    const-string v10, "AsyncResult.forMessage"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 656
    .end local v5           #ex:Ljava/lang/RuntimeException;
    .end local v7           #response:Landroid/os/Message;
    :cond_5
    iget v9, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    if-lez v9, :cond_4

    .line 657
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 677
    .end local v0           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #cnt:I
    .end local v4           #efid:I
    :pswitch_3
    const-string v9, "GSM"

    const-string v10, "EVENT_DELETE_ADN_DONE"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 679
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 680
    .restart local v4       #efid:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 681
    .restart local v2       #cnt:I
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cnt is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 685
    .restart local v0       #adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adn-alpha is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "adn-alpha is *"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adn-number is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "adn-number is *"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->secureLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adn-record index is  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :try_start_2
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_6

    .line 691
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7

    .line 692
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adnLikeFiles.get(efid) null fail, reinit framework member value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLikeAgain(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 703
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 704
    .restart local v7       #response:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 706
    if-eqz v7, :cond_0

    .line 709
    :try_start_3
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v0, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 710
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 711
    :catch_2
    move-exception v5

    .line 712
    .restart local v5       #ex:Ljava/lang/RuntimeException;
    const-string v9, "GSM"

    const-string v10, "AsyncResult.forMessage"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 695
    .end local v5           #ex:Ljava/lang/RuntimeException;
    .end local v7           #response:Landroid/os/Message;
    :cond_7
    :try_start_4
    iget v9, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    if-lez v9, :cond_6

    .line 696
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 699
    :catch_3
    move-exception v3

    .line 700
    .local v3, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v9, "GSM"

    const-string v10, "ArrayIndexOutOfBoundsException Caught"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 719
    .end local v0           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #cnt:I
    .end local v3           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v4           #efid:I
    :pswitch_4
    const-string v9, "GSM"

    const-string v10, "EVENT_LOAD_ALL_ADN_LIKE_AGAIN_DONE"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 722
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 724
    .restart local v4       #efid:I
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_8

    .line 725
    const-string v9, "GSM"

    const-string v10, "ar.exception == null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v10, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 729
    :cond_8
    const-string v9, "GSM"

    const-string v10, "EVENT_LOAD_ALL_ADN_LIKE_DONE - end"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 590
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "extensionEf"
    .parameter "response"

    .prologue
    .line 411
    const/16 v2, 0x4f30

    if-ne p1, v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .line 418
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 419
    if-eqz p3, :cond_0

    .line 420
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 421
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 461
    :cond_0
    :goto_1
    return-void

    .line 414
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    goto :goto_0

    .line 429
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 431
    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_3

    .line 435
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 441
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    if-gez p2, :cond_4

    .line 450
    if-eqz p3, :cond_0

    .line 451
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 453
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 459
    :cond_4
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method public requestLoadAllAdnLike(ILandroid/os/Message;)V
    .locals 5
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 476
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    if-eqz p2, :cond_0

    .line 478
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 479
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 488
    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_2

    .line 492
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromPBEntry(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public requestLoadAllAdnLikeAgain(I)V
    .locals 4
    .parameter "efid"

    .prologue
    .line 513
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 516
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-eqz v0, :cond_0

    .line 517
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLoadAllAdnLikeAgain - already loaded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromPBEntry(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public requestLoadAllAdnLikeInit(ILandroid/os/Message;)V
    .locals 5
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 536
    const-string v2, "GSM"

    const-string v3, "requestLoadAllAdnLikeInit"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 544
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 545
    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    :goto_0
    return-void

    .line 554
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 557
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromPBEntry(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearWaiters()V

    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearUserWriters()V

    .line 91
    return-void
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 14
    .parameter "efid"
    .parameter "adn"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 170
    .local v11, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const-string v1, "GSM"

    const-string v2, "updateAdnByIndex enter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v7, ""

    .line 174
    .local v7, checkEmpty:Ljava/lang/String;
    const/4 v9, -0x1

    .line 175
    .local v9, index:I
    const/4 v8, 0x0

    .line 177
    .local v8, count:I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 179
    .local v12, pendingResponse:Landroid/os/Message;
    if-eqz v12, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have pending update for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 186
    :cond_0
    const v1, 0xffff

    move/from16 v0, p3

    if-ne v0, v1, :cond_1

    .line 188
    const-string v1, "GSM"

    const-string v2, "updateAdnByIndex - add"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-virtual {p0, v2, p1, v8, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v2, p2

    move v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->addPBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 196
    :cond_1
    const-string v1, "GSM"

    const-string v2, "updateAdnByIndex - update or delete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target index  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-nez v11, :cond_2

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADNlike list is not init for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/AdnRecord;

    .line 205
    .local v13, tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    iget v1, v13, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    move/from16 v0, p3

    if-ne v0, v1, :cond_4

    .line 206
    iget v9, v13, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 207
    add-int/lit8 v8, v8, 0x1

    .line 215
    .end local v13           #tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_3
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-virtual {p0, v2, p1, v8, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v2, p2

    move v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->deletePBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 211
    .restart local v13       #tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 212
    goto :goto_1

    .line 225
    .end local v13           #tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {p0, v2, p1, v8, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v2, p2

    move v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->editPBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 13
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 270
    const-string v1, "GSM"

    const-string v2, "updateAdnBySearch enter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v7, ""

    .line 274
    .local v7, checkEmpty:Ljava/lang/String;
    const/4 v4, -0x1

    .line 275
    .local v4, index:I
    const/4 v8, 0x0

    .line 278
    .local v8, count:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 280
    .local v10, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Message;

    .line 282
    .local v11, pendingResponse:Landroid/os/Message;
    if-eqz v11, :cond_0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have pending update for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 400
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    const-string v1, "GSM"

    const-string v2, "updateAdnBySearch - add"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-virtual {p0, v2, p1, v8, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v2, p3

    move v3, p1

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->addPBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 299
    :cond_1
    if-nez v10, :cond_2

    .line 300
    const-string v1, "GSM"

    const-string v2, "updateAdnBySearch oldAdnList == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adn list not exist for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_2
    const-string v1, "GSM"

    const-string v2, "updateAdnBySearch - update or delete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldAdn.recordNumber is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 309
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/AdnRecord;

    .line 310
    .local v12, tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {p2, v12}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 311
    iget v4, v12, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 312
    add-int/lit8 v8, v8, 0x1

    .line 318
    .end local v12           #tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_3
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnBySearch: index  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v1, -0x1

    if-ne v4, v1, :cond_5

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adn record don\'t exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 315
    .restart local v12       #tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 316
    goto :goto_1

    .line 326
    .end local v12           #tmpAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_5
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 329
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-virtual {p0, v2, p1, v8, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v2, p3

    move v3, p1

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->deletePBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 334
    :cond_6
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-virtual {p0, v2, p1, v8, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v2, p3

    move v3, p1

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->editPBEntry(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method
