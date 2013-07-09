.class public Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "RuimPhoneBookInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final SECURED_LOG:Z


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 43
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 62
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 66
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    const-string v1, "CDMA"

    const-string v2, "RuimPhoneBookInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "CDMA"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAdnLikesInfo(I)[I
    .locals 5
    .parameter "efid"

    .prologue
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnLikesInfo: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->checkThread()V

    .line 116
    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->recordInfo:[I

    .line 118
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 120
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getAdnLikesRecordInfo(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->recordInfo:[I

    return-object v2

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getAdnLikesSimStatusInfo(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 161
    const-string v2, "getAdnLikesSimStatusInfo"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->checkThread()V

    .line 165
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 167
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getAdnLikesSimStatusInfo(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnLikesSimStatusInfo result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mSimFileStatusInfo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 175
    iget v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mSimFileStatusInfo:I

    return v2

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getAdnRecordsInEfOnSubscription(II)Ljava/util/List;
    .locals 1
    .parameter "efid"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 6
    .parameter "efid"

    .prologue
    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdnRecordsSize: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 75
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->checkThread()V

    .line 77
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->recordSize:[I

    .line 80
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 81
    .local v2, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 83
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 85
    .local v0, fh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 89
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->recordSize:[I

    return-object v3

    .line 89
    .end local v0           #fh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v1           #response:Landroid/os/Message;
    .end local v2           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getUsimPBCapaInfo()Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    .locals 5

    .prologue
    .line 136
    const-string v2, "getUsimPBCapaInfo"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->checkThread()V

    .line 141
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    const-string v2, "IccFileHandler is not Null. get UsimPBCapa."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 144
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getUsimPBCapa(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mUsimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    .end local v1           #response:Landroid/os/Message;
    :goto_1
    return-object v2

    .line 146
    :cond_0
    :try_start_3
    const-string v2, "IccFileHandler is Null. return default CapaInfo."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->mUsimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    monitor-exit v3

    goto :goto_1

    .line 155
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 152
    .restart local v1       #response:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 184
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 188
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method protected secureLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "msg"
    .parameter "securedMsg"

    .prologue
    .line 195
    const-string v0, "CDMA"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public updateRuimRecords(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 1
    .parameter "ruimRecords"

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    goto :goto_0
.end method
