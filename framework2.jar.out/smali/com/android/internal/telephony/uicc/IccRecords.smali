.class public abstract Lcom/android/internal/telephony/uicc/IccRecords;
.super Landroid/os/Handler;
.source "IccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field public static final EVENT_CFI:I = 0x1

.field public static final EVENT_EONS:I = 0x3

.field public static final EVENT_GET_ICC_RECORD_DONE:I = 0x64

.field public static final EVENT_MWI:I = 0x0

.field protected static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field public static final EVENT_SPN:I = 0x2

.field protected static final SPN_RULE_SHOW_PLMN:I = 0x2

.field protected static final SPN_RULE_SHOW_SPN:I = 0x1

.field protected static final UNINITIALIZED:I = -0x1

.field protected static final UNKNOWN:I


# instance fields
.field protected OnsExist:Z

.field protected adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field protected countVoiceMessages:I

.field public iccid:Ljava/lang/String;

.field protected imsi:Ljava/lang/String;

.field public isAvailableSMS:Z

.field public isAvailableSMSP:Z

.field protected isVoiceMailFixed:Z

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mEuimid:Ljava/lang/String;

.field protected mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field protected mImsiReadyRegistrants:Landroid/os/RegistrantList;

.field protected mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

.field protected mNewSmsRegistrants:Landroid/os/RegistrantList;

.field protected mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected mParseMccMncDone:Landroid/os/RegistrantList;

.field protected mRecordsEventsRegistrants:Landroid/os/RegistrantList;

.field protected mailboxIndex:I

.field protected mncLength:I

.field protected msisdn:Ljava/lang/String;

.field protected msisdnTag:Ljava/lang/String;

.field protected newVoiceMailNum:Ljava/lang/String;

.field protected newVoiceMailTag:Ljava/lang/String;

.field protected recordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected recordsRequested:Z

.field protected recordsToLoad:I

.field public spn:Ljava/lang/String;

.field protected spn_cphs:Ljava/lang/String;

.field protected voiceMailNum:Ljava/lang/String;

.field protected voiceMailTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "app"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 46
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    .line 47
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    .line 48
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    .line 49
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    .line 51
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParseMccMncDone:Landroid/os/RegistrantList;

    .line 59
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsRequested:Z

    .line 63
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->msisdn:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->isVoiceMailFixed:Z

    .line 70
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->countVoiceMessages:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mncLength:I

    .line 74
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mailboxIndex:I

    .line 78
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->OnsExist:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->isAvailableSMS:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->isAvailableSMSP:Z

    .line 121
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    .line 122
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 123
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 125
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 133
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 134
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 135
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    .line 136
    return-void
.end method

.method public getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    return-object v0
.end method

.method public abstract getDisplayRule(Ljava/lang/String;)I
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecordsLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 347
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsRequested:Z

    if-ne v1, v0, :cond_0

    .line 350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method public getSktIMSIM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSktIRM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSponImsi()[Ljava/lang/String;
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getVoiceMessageCount()I
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 357
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 379
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 381
    :goto_0
    return-void

    .line 360
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 361
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;

    .line 362
    .local v2, recordLoaded:Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;->getEfName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LOADED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 364
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record Load Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #recordLoaded:Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    goto :goto_0

    .line 367
    .restart local v0       #ar:Landroid/os/AsyncResult;
    .restart local v2       #recordLoaded:Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;
    :cond_0
    :try_start_1
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;->onRecordLoaded(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 369
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #recordLoaded:Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;
    :catch_0
    move-exception v1

    .line 371
    .local v1, exc:Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception parsing SIM record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 374
    .end local v1           #exc:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->onRecordLoaded()V

    throw v3

    .line 357
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public isCallForwardStatusStored()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected abstract onAllRecordsLoaded()V
.end method

.method protected abstract onReady()V
.end method

.method protected abstract onRecordLoaded()V
.end method

.method public abstract onRefresh(Z[I)V
.end method

.method public registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 170
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method public registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 195
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 197
    return-void
.end method

.method public registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 186
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 187
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 188
    return-void
.end method

.method public registerForParseMccMncDone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 204
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 205
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParseMccMncDone:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 206
    return-void
.end method

.method public registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 178
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 179
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 180
    return-void
.end method

.method public registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 151
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 153
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsToLoad:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsRequested:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 154
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method public setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "line"
    .parameter "voiceEnable"
    .parameter "videoEnable"

    .prologue
    .line 449
    return-void
.end method

.method public setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .parameter "line"
    .parameter "voiceEnable"
    .parameter "videoEnable"
    .parameter "dialingNumber"

    .prologue
    .line 452
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 1
    .parameter "imsi"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->imsi:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 229
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 263
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->msisdn:Ljava/lang/String;

    .line 264
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->log(Ljava/lang/String;)V

    .line 269
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 273
    return-void
.end method

.method public setVideoCallForwardingFlag(IZ)V
    .locals 0
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 443
    return-void
.end method

.method public setVideoCallForwardingFlag(IZLjava/lang/String;)V
    .locals 0
    .parameter "line"
    .parameter "enable"
    .parameter "dialingNumber"

    .prologue
    .line 446
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 0
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 437
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 0
    .parameter "line"
    .parameter "enable"
    .parameter "dialingNumber"

    .prologue
    .line 440
    return-void
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(IILandroid/os/Message;)V
.end method

.method public unregisterForImsiReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 175
    return-void
.end method

.method public unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 200
    return-void
.end method

.method public unregisterForNewSms(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 191
    return-void
.end method

.method public unregisterForParseMccMncDone(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mParseMccMncDone:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 209
    return-void
.end method

.method public unregisterForRecordsEvents(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 183
    return-void
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 159
    return-void
.end method
