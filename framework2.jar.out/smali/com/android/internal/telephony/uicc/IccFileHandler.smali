.class public abstract Lcom/android/internal/telephony/uicc/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;,
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field private static final COMMAND_ISIM_AUTH:I = 0x88

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field private static final EVENT_GET_ITEM_SIZE_DONE:I = 0xb

.field private static final EVENT_GET_RECORD_INFO_DONE:I = 0x10

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_RECORD_SIZE_IMG_DONE:I = 0xd

.field protected static final EVENT_GET_SIM_FILE_STATUS_DONE:I = 0x11

.field protected static final EVENT_GET_USIM_PB_CAPA_DONE:I = 0xf

.field private static final EVENT_ISIM_AUTHENTICATION_DONE:I = 0x13

.field private static final EVENT_READ_ADN_DONE:I = 0xc

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_IMG_RECORD_DONE:I = 0xe

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final EVENT_UPDATE_ADN_DONE:I = 0x12

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected mAid:Ljava/lang/String;

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 189
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 190
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 191
    return-void
.end method

.method private processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z
    .locals 5
    .parameter "response"
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, flag:Z
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 468
    .local v2, result:Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 469
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 470
    const/4 v0, 0x1

    .line 478
    :cond_0
    :goto_0
    return v0

    .line 472
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v1

    .line 473
    .local v1, iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v1, :cond_0

    .line 474
    invoke-direct {p0, p1, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 475
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 460
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method dispose()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public getAdnLikesRecordInfo(ILandroid/os/Message;)V
    .locals 2
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 395
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 398
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 399
    return-void
.end method

.method public getAdnLikesSimStatusInfo(ILandroid/os/Message;)V
    .locals 10
    .parameter "efid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 417
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 420
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 422
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    .line 944
    sparse-switch p1, :sswitch_data_0

    .line 996
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 953
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 958
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 961
    :sswitch_2
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 968
    :sswitch_3
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 971
    :sswitch_4
    const-string v0, "3F007FFF5F1F"

    goto :goto_0

    .line 982
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIntType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 983
    const-string v0, "3F007F20"

    goto :goto_0

    .line 985
    :cond_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 993
    :sswitch_6
    const-string v0, "3F00"

    goto :goto_0

    .line 944
    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2f40 -> :sswitch_6
        0x2f41 -> :sswitch_6
        0x2f42 -> :sswitch_6
        0x2f43 -> :sswitch_6
        0x2f50 -> :sswitch_6
        0x2fe2 -> :sswitch_1
        0x2fe7 -> :sswitch_1
        0x4f01 -> :sswitch_3
        0x4f02 -> :sswitch_3
        0x4f03 -> :sswitch_3
        0x4f04 -> :sswitch_3
        0x4f05 -> :sswitch_3
        0x4f1c -> :sswitch_4
        0x4f20 -> :sswitch_3
        0x4f30 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6f4e -> :sswitch_0
        0x6f60 -> :sswitch_5
        0x6f61 -> :sswitch_5
        0x6f7b -> :sswitch_5
        0x6fb7 -> :sswitch_5
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 247
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 250
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 252
    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 2
    .parameter "onLoaded"

    .prologue
    .line 408
    const/16 v1, 0xf

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 411
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getUsimPBCapa(Landroid/os/Message;)V

    .line 412
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 40
    .parameter "msg"

    .prologue
    .line 490
    const/16 v35, 0x0

    .line 504
    .local v35, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 931
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 506
    :pswitch_1
    const-string v3, "IccFileHandler: get record size img done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 508
    .local v24, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 509
    .local v31, lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 510
    .local v36, result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v35, v0

    .line 512
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 515
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v26, v0

    .line 516
    .local v26, data:[B
    const/16 v3, 0xe

    aget-byte v3, v26, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 518
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v26, v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v26, v4

    if-eq v3, v4, :cond_2

    .line 520
    :cond_1
    const-string v3, "IccFileHandler: File type mismatch: Throw Exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 521
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v26           #data:[B
    .end local v31           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v36           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :catch_0
    move-exception v27

    .line 925
    .local v27, exc:Ljava/lang/Exception;
    if-eqz v35, :cond_1c

    .line 926
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 524
    .end local v27           #exc:Ljava/lang/Exception;
    .restart local v24       #ar:Landroid/os/AsyncResult;
    .restart local v26       #data:[B
    .restart local v31       #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .restart local v36       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_2
    :try_start_1
    const-string v3, "IccFileHandler: read EF IMG"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iget v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v31

    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v13, 0x9

    const/16 v14, 0x4f20

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v35

    invoke-virtual {v0, v13, v14, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 534
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v26           #data:[B
    .end local v31           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v36           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_2
    const-string v3, "IccFileHandler: read IMG done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 536
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v35, v0

    .line 537
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 539
    .restart local v36       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 542
    const-string v3, "IccFileHandler: read img success"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 544
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v30

    .line 545
    .local v30, iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v30, :cond_0

    .line 546
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 551
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v30           #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .end local v36           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_3
    const-string v3, "IccFileHandler: read icon done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 553
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v35, v0

    .line 554
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 556
    .restart local v36       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 559
    const-string v3, "IccFileHandler: read icon success"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 563
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v36           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 564
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 565
    .restart local v31       #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 566
    .restart local v36       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v35, v0

    .line 568
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 572
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v26, v0

    .line 574
    .restart local v26       #data:[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v26, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v26, v4

    if-eq v3, v4, :cond_4

    .line 576
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 579
    :cond_4
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v34, v0

    .line 580
    .local v34, recordSize:[I
    const/4 v3, 0x0

    const/16 v4, 0xe

    aget-byte v4, v26, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v34, v3

    .line 581
    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-byte v4, v26, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v6, 0x3

    aget-byte v6, v26, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    aput v4, v34, v3

    .line 583
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v34, v4

    const/4 v6, 0x0

    aget v6, v34, v6

    div-int/2addr v4, v6

    aput v4, v34, v3

    .line 585
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 588
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v26           #data:[B
    .end local v31           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v34           #recordSize:[I
    .end local v36           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 589
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 590
    .restart local v31       #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 591
    .restart local v36       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v35, v0

    .line 593
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 597
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v26, v0

    .line 598
    .restart local v26       #data:[B
    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 599
    .local v5, fileid:I
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v33, v0

    .line 601
    .local v33, recordNum:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v26, v4

    if-eq v3, v4, :cond_5

    .line 602
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 605
    :cond_5
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v26, v4

    if-eq v3, v4, :cond_6

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v26, v4

    if-eq v3, v4, :cond_6

    .line 606
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 609
    :cond_6
    const/16 v3, 0xe

    aget-byte v3, v26, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 611
    const/4 v3, 0x2

    aget-byte v3, v26, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v26, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 614
    .local v9, size:I
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 616
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_7

    .line 617
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    sparse-switch v3, :sswitch_data_0

    .line 633
    :goto_1
    :sswitch_0
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v31

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 636
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v5           #fileid:I
    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    iget v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v31

    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .end local v9           #size:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v13, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 619
    .restart local v5       #fileid:I
    .restart local v9       #size:I
    :sswitch_1
    const/4 v3, 0x3

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    goto :goto_1

    .line 643
    .end local v5           #fileid:I
    .end local v9           #size:I
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v26           #data:[B
    .end local v31           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v33           #recordNum:I
    .end local v36           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 644
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v35, v0

    .line 645
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 647
    .restart local v36       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 651
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v26, v0

    .line 653
    .restart local v26       #data:[B
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 655
    .restart local v5       #fileid:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v26, v4

    if-eq v3, v4, :cond_8

    .line 656
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 659
    :cond_8
    const/16 v3, 0xd

    aget-byte v3, v26, v3

    if-eqz v3, :cond_9

    .line 660
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 663
    :cond_9
    const/4 v3, 0x2

    aget-byte v3, v26, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v26, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 666
    .restart local v9       #size:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v13, 0x5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v13, v5, v14, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 674
    .end local v5           #fileid:I
    .end local v9           #size:I
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v26           #data:[B
    .end local v36           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 675
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 676
    .restart local v31       #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 677
    .restart local v36       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v35, v0

    .line 679
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 683
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v3, :cond_a

    .line 684
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 686
    :cond_a
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 690
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v3, v4, :cond_b

    .line 691
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 693
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v31

    iget v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v31

    iget v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 704
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v31           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v36           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 705
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v35, v0

    .line 706
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 708
    .restart local v36       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 711
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 716
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v36           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_9
    const-string v3, "EVENT_GET_ITEM_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 718
    const/16 v38, 0x0

    .line 719
    .local v38, total:I
    const/16 v39, 0x0

    .line 720
    .local v39, used:I
    const/16 v29, 0x0

    .line 722
    .local v29, firstIndex:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 725
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_c

    .line 726
    const-string v3, "Exception during GET_ITEM_SIZE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 737
    :goto_2
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    .line 738
    .local v32, pblc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v35, v0

    .line 741
    move/from16 v0, v39

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    .line 742
    move/from16 v0, v29

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 744
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 746
    if-nez v39, :cond_d

    .line 748
    const-string v3, "used == 0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 750
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v32

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 755
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 729
    .end local v32           #pblc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    :cond_c
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v38, v3, v4

    .line 730
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x1

    aget v39, v3, v4

    .line 731
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x2

    aget v29, v3, v4

    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting cnt successed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "firstIndex is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 759
    .restart local v32       #pblc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    :cond_d
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    if-eqz v3, :cond_e

    .line 760
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v32

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 763
    :cond_e
    move-object/from16 v0, v32

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v32

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 764
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v12, 0xb2

    move-object/from16 v0, v32

    iget v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->efid:I

    move-object/from16 v0, v32

    iget v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->recordNum:I

    const/4 v15, 0x0

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-interface/range {v10 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(Ljava/lang/String;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 770
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v29           #firstIndex:I
    .end local v32           #pblc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    .end local v38           #total:I
    .end local v39           #used:I
    :pswitch_a
    const-string v3, "EVENT_READ_ADN_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 772
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 773
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    .line 775
    .restart local v32       #pblc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/internal/telephony/SimPBEntryResult;

    .line 776
    .local v37, resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v35, v0

    .line 778
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_f

    .line 779
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 782
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pblc EFID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->efid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", record number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->recordNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", total record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->totalRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Used Record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 786
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->loadAll:Z

    if-nez v3, :cond_10

    .line 787
    const-string v3, "[NEO] is not loadAll"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 788
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    .line 789
    .local v15, emails:[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v15, v3

    .line 790
    new-instance v10, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v32

    iget v11, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->efid:I

    move-object/from16 v0, v37

    iget v12, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v13, v3, v4

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v14, v3, v4

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v16, v3, v4

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v17, v3, v4

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v18, v3, v4

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v19, v3, v4

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v20, v3, v4

    invoke-direct/range {v10 .. v20}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    .local v10, adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v10, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 796
    .end local v10           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v15           #emails:[Ljava/lang/String;
    :cond_10
    const-string v3, "[NEO] is loadAll"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 797
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    .line 798
    .restart local v15       #emails:[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v15, v3

    .line 799
    new-instance v10, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, v32

    iget v11, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->efid:I

    move-object/from16 v0, v37

    iget v12, v0, Lcom/android/internal/telephony/SimPBEntryResult;->recordIndex:I

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v13, v3, v4

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v14, v3, v4

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v16, v3, v4

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v17, v3, v4

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v18, v3, v4

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v19, v3, v4

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v20, v3, v4

    invoke-direct/range {v10 .. v20}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .restart local v10       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    move-object/from16 v0, v32

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->recordNum:I

    .line 806
    move-object/from16 v0, v32

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->usedRecords:I

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    if-eq v3, v4, :cond_11

    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/internal/telephony/SimPBEntryResult;->nextIndex:I

    const v4, 0xffff

    if-ne v3, v4, :cond_12

    .line 807
    :cond_11
    const-string v3, "[NEO] Load all DONE!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 808
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 810
    :cond_12
    const-string v3, "[NEO] Read More Record from SIM!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 811
    move-object/from16 v0, v32

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v32

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->countRecords:I

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0xb2

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->efid:I

    move/from16 v19, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->recordNum:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v16 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(Ljava/lang/String;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 822
    .end local v10           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v15           #emails:[Ljava/lang/String;
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v32           #pblc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    .end local v37           #resultPB:Lcom/android/internal/telephony/SimPBEntryResult;
    :pswitch_b
    const-string v3, "EVENT_GET_USIM_PB_CAPA_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 823
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 824
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v35, v0

    .line 825
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_13

    .line 826
    const-string v3, "exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 827
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 830
    :cond_13
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v25, v0

    .line 831
    .local v25, capaResult:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 836
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v25           #capaResult:[I
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 837
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v35, v0

    .line 838
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v28, v0

    .line 839
    .local v28, fileStatus:[I
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_14

    .line 840
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 844
    :cond_14
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 846
    .restart local v36       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_15

    .line 847
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 851
    :cond_15
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v30

    .line 853
    .restart local v30       #iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v30, :cond_16

    .line 854
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 858
    :cond_16
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v26, v0

    .line 860
    .restart local v26       #data:[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v26, v4

    if-eq v3, v4, :cond_17

    .line 861
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 864
    :cond_17
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v26, v4

    if-eq v3, v4, :cond_18

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v26, v4

    if-eq v3, v4, :cond_18

    .line 865
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 867
    :cond_18
    const/4 v3, 0x0

    const/16 v4, 0xb

    aget-byte v4, v26, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v28, v3

    .line 868
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 873
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v26           #data:[B
    .end local v28           #fileStatus:[I
    .end local v30           #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .end local v36           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 874
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v35, v0

    .line 876
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_19

    .line 877
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 881
    :cond_19
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v23, v0

    .line 882
    .local v23, RecordInfo:[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 888
    .end local v23           #RecordInfo:[I
    .end local v24           #ar:Landroid/os/AsyncResult;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 889
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 890
    .restart local v31       #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 891
    .restart local v36       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v35, v0

    .line 893
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1a

    .line 894
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 898
    :cond_1a
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v30

    .line 900
    .restart local v30       #iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v30, :cond_1b

    .line 901
    const-string v3, "getException not null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 903
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 907
    :cond_1b
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 912
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v30           #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .end local v31           #lc:Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v36           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    :pswitch_f
    const-string v3, "ISIM"

    const-string v4, "ISIM >>> [ICCFileHandler] Got EVENT_ISIM_AUTHENTICATION_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    .line 914
    .restart local v24       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v35, v0

    .line 915
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 916
    .restart local v36       #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    const-string v3, "ISIM"

    const-string v4, "ISIM >>> [ICCFileHandler] Got the ICCIOResult"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v30

    .line 918
    .restart local v30       #iccException:Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v30, :cond_0

    .line 919
    const-string v3, "ISIM"

    const-string v4, "ISIM >>> [ICCFileHandler] Sending to ICCRecords"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 928
    .end local v24           #ar:Landroid/os/AsyncResult;
    .end local v30           #iccException:Lcom/android/internal/telephony/uicc/IccException;
    .end local v36           #result:Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v27       #exc:Ljava/lang/Exception;
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 617
    :sswitch_data_0
    .sparse-switch
        0x6f04 -> :sswitch_1
        0x6f09 -> :sswitch_0
    .end sparse-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 227
    const/16 v0, 0xd

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 231
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 235
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    .line 319
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 322
    .local v11, response:Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccFileHandler: loadEFImgTransparent fileid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " highOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lowOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 334
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 209
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 213
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 215
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 264
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 267
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 269
    return-void
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "size"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 300
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, v4, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 303
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move v6, p2

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 305
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 282
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 285
    .local v10, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 287
    return-void
.end method

.method loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V
    .locals 3
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 377
    const-string v1, "loadItemInPhoneBookStorageAll"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 378
    const/16 v1, 0xb

    new-instance v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 381
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 382
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 437
    const-string v1, "ISIM"

    const-string v2, "ISIM >>> Inside SIMFileHandler->requestIsimAuthentication"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v1, "ISIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISIM >>> Inside SIMFileHandler data string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v1, "ISIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISIM >>> Inside SIMFileHandler data string length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/16 v1, 0x13

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 445
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x88

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->iccAUTH(ILjava/lang/String;Landroid/os/Message;)V

    .line 446
    return-void
.end method

.method protected setAid(Ljava/lang/String;)V
    .locals 0
    .parameter "aid"

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 1005
    return-void
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    array-length v6, p3

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v4, p2

    move-object v8, p4

    move-object/from16 v10, p5

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 350
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 361
    return-void
.end method
