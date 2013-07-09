.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# static fields
.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_IMS:I = 0x3

.field private static final DBG:Z = true

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x1

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_UiccController"

.field private static final MODEM_SIM_STATUS:Ljava/lang/String; = "ril.modem_sim_status"

.field private static mInstance:Lcom/android/internal/telephony/uicc/UiccController;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v3, 0x1

    .line 194
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/internal/telephony/uicc/UiccCard;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    .line 56
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 195
    const-string v2, "Creating UiccController"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 196
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 199
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 200
    .local v1, index:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v1           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private declared-synchronized disposeCard(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    const-string v0, "Disposing card"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .parameter "msg"

    .prologue
    .line 208
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 215
    .local v1, index:Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 216
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 217
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #index:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 225
    .restart local v1       #index:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    .line 218
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 219
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 220
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 221
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1           #index:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1       #index:Ljava/lang/Integer;
    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3

    .prologue
    .line 77
    const-class v1, Lcom/android/internal/telephony/uicc/UiccController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 80
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 251
    const-string v0, "RIL_UiccController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method public static declared-synchronized make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 4
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 67
    const-class v2, Lcom/android/internal/telephony/uicc/UiccController;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "UiccController.make() should only be called once"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 70
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    new-array v0, v1, [Lcom/android/internal/telephony/CommandsInterface;

    .line 71
    .local v0, arrayCi:[Lcom/android/internal/telephony/CommandsInterface;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 72
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    .line 73
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1
.end method

.method public static declared-synchronized make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 59
    const-class v1, Lcom/android/internal/telephony/uicc/UiccController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 62
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    .line 63
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 7
    .parameter "ar"
    .parameter "index"

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 230
    const-string v1, "RIL_UiccController"

    const-string v2, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 238
    .local v0, status:Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 239
    const-string v1, "Creating a new card"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    aput-object v3, v1, v2

    .line 246
    :goto_1
    const-string v1, "Notifying IccChangedRegistrants"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    .end local v0           #status:Lcom/android/internal/telephony/uicc/IccCardStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 242
    .restart local v0       #status:Lcom/android/internal/telephony/uicc/IccCardStatus;
    :cond_1
    :try_start_2
    const-string v1, "Update already existing card"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getIccFileHandler(I)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1
    .parameter "family"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2
    .parameter "slotId"
    .parameter "family"

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 135
    .local v0, app:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1
    .parameter "family"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2
    .parameter "slotId"
    .parameter "family"

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 122
    .local v0, app:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 88
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .parameter "family"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .parameter "slotId"
    .parameter "family"

    .prologue
    .line 106
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v1, p1

    .line 108
    .local v0, c:Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 112
    .end local v0           #c:Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getUiccCards()[Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/UiccCard;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/UiccCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v1

    .line 157
    .local v1, index:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 158
    :cond_0
    const-string v2, "RIL_UiccController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " received with event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 180
    const-string v2, "RIL_UiccController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unknown Event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatuson index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 169
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received EVENT_GET_ICC_STATUS_DONE on index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 170
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 171
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v2, "1"

    const-string/jumbo v3, "ril.modem_sim_status"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_0

    .line 176
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v2, "EVENT_RADIO_UNAVAILABLE "

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->disposeCard(I)V

    goto/16 :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 143
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 147
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 148
    return-void
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 151
    return-void
.end method
