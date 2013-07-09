.class public Lcom/movial/ipphone/IPSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "IPSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;
    }
.end annotation


# static fields
.field private static final EVENT_NEW_BROADCAST_SMS:I = 0x65

.field private static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x64

.field private static final EVENT_WRITE_SMS_COMPLETE:I = 0x66

.field public static final MSG_IP_NEW_SMS:I = 0x1

.field public static final MSG_IP_SMS_SENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IPSMSDispatcher"


# instance fields
.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mIPManager:Lcom/movial/ipphone/IPManager;

.field private mIPPhone:Lcom/movial/ipphone/IPPhone;

.field private mIPService:Lcom/movial/ipphone/IIPService;

.field private mIPSmsTrackerHandler:Landroid/os/Handler;

.field protected mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTrackerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private useIPPhone:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 5
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->useIPPhone:Z

    .line 159
    iput-object v4, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 160
    iput-object v4, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 161
    iput-object v4, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mTrackerList:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Lcom/movial/ipphone/IPSMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPSMSDispatcher$1;-><init>(Lcom/movial/ipphone/IPSMSDispatcher;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 275
    new-instance v0, Lcom/movial/ipphone/IPSMSDispatcher$2;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPSMSDispatcher$2;-><init>(Lcom/movial/ipphone/IPSMSDispatcher;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIPSmsTrackerHandler:Landroid/os/Handler;

    .line 195
    const-string v0, "IPSMSDispatcher"

    const-string v1, "IPSMSDispatcher initialization"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    check-cast p1, Lcom/movial/ipphone/IPPhone;

    .end local p1
    iput-object p1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    .line 197
    iget-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 198
    iget-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "IMS_REGISTRATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 201
    iget-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/IPSMSDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->useIPPhone:Z

    return v0
.end method

.method static synthetic access$002(Lcom/movial/ipphone/IPSMSDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->useIPPhone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/movial/ipphone/IPSMSDispatcher;)Lcom/movial/ipphone/IIPService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIPService:Lcom/movial/ipphone/IIPService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/movial/ipphone/IPSMSDispatcher;Lcom/movial/ipphone/IIPService;)Lcom/movial/ipphone/IIPService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIPService:Lcom/movial/ipphone/IIPService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/movial/ipphone/IPSMSDispatcher;)Lcom/movial/ipphone/IPPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/movial/ipphone/IPSMSDispatcher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIPSmsTrackerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/movial/ipphone/IPSMSDispatcher;I)Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPSMSDispatcher;->findAndRemoveTrackerWithSerial(I)Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;

    move-result-object v0

    return-object v0
.end method

.method private findAndRemoveTrackerWithSerial(I)Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;
    .locals 3
    .parameter "serial"

    .prologue
    .line 262
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;

    iget v2, v2, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->Serial:I

    if-ne v2, p1, :cond_0

    .line 264
    iget-object v2, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;

    .line 265
    .local v1, tracker:Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;
    iget-object v2, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 269
    .end local v1           #tracker:Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;
    :goto_1
    return-object v1

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "ar"

    .prologue
    const/4 v12, 0x1

    .line 328
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 329
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 331
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_2

    .line 332
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 333
    .local v7, tpStatus:I
    iget v4, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 334
    .local v4, messageRef:I
    const-string v9, "IPSMSDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received SMS StatusReport with MR = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v2, 0x0

    .local v2, i:I
    sget-object v9, Lcom/movial/ipphone/IPSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 336
    sget-object v9, Lcom/movial/ipphone/IPSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 337
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    .line 339
    const/16 v9, 0x40

    if-ge v7, v9, :cond_0

    const/16 v9, 0x20

    if-ge v7, v9, :cond_1

    .line 340
    :cond_0
    sget-object v9, Lcom/movial/ipphone/IPSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 342
    :cond_1
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 343
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 344
    .local v1, fillIn:Landroid/content/Intent;
    const-string v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 345
    const-string v9, "format"

    const-string v10, "3gpp"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    :try_start_0
    iget-object v9, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v7           #tpStatus:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {p0, v12, v12, v9}, Lcom/movial/ipphone/IPSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 356
    return-void

    .line 335
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v7       #tpStatus:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 648
    packed-switch p0, :pswitch_data_0

    .line 660
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 652
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 654
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 657
    :pswitch_3
    const/16 v0, 0x91

    goto :goto_0

    .line 648
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 631
    const-string v1, "IPSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending ack success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-boolean v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->useIPPhone:Z

    if-eqz v1, :cond_1

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-static {p2}, Lcom/movial/ipphone/IPSMSDispatcher;->resultToCause(I)I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/movial/ipphone/IIPService;->acknowledgeLastIncomingIpSms(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "IPSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acknowledgeLastIncomingSms failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 641
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/movial/ipphone/IPSMSDispatcher;->resultToCause(I)I

    move-result v2

    invoke-interface {v1, p1, v2, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 581
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method protected clearDuplicatedCbMessages()V
    .locals 0

    .prologue
    .line 943
    return-void
.end method

.method protected dispatchBroadcastPdus([[BZ)V
    .locals 4
    .parameter "pdus"
    .parameter "isEmergencyMessage"

    .prologue
    .line 819
    if-eqz p2, :cond_0

    .line 820
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    .local v0, broadcastIntent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 822
    const-string v1, "IPSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " emergency SMS CB pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/movial/ipphone/IPSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 830
    :goto_0
    return-void

    .line 825
    .end local v0           #broadcastIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    .restart local v0       #broadcastIntent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 827
    const-string v1, "IPSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SMS CB pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/movial/ipphone/IPSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 5
    .parameter "smsb"

    .prologue
    const/4 v2, 0x1

    .line 363
    if-nez p1, :cond_1

    .line 364
    const-string v2, "IPSMSDispatcher"

    const-string v3, "dispatchMessage: message is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v2, 0x2

    .line 441
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 369
    check-cast v1, Lcom/movial/ipphone/IPSmsMessage;

    .line 372
    .local v1, sms:Lcom/movial/ipphone/IPSmsMessage;
    invoke-virtual {v1}, Lcom/movial/ipphone/IPSmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v3

    sget-object v4, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v3, v4, :cond_2

    .line 373
    const-string v2, "IPSMSDispatcher"

    const-string v3, "CLASS2 SMS not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v2, 0x4

    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {v1}, Lcom/movial/ipphone/IPSmsMessage;->isTypeZero()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 379
    const-string v3, "IPSMSDispatcher"

    const-string v4, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    :cond_3
    iget-boolean v3, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mSmsReceiveDisabled:Z

    if-eqz v3, :cond_4

    .line 409
    const-string v3, "IPSMSDispatcher"

    const-string v4, "Received short message on device which doesn\'t support SMS service. Ignored."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    :cond_4
    const/4 v0, 0x0

    .line 416
    .local v0, handled:Z
    invoke-virtual {v1}, Lcom/movial/ipphone/IPSmsMessage;->isMWISetMessage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 417
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/movial/ipphone/IPSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 418
    invoke-virtual {v1}, Lcom/movial/ipphone/IPSmsMessage;->isMwiDontStore()Z

    move-result v0

    .line 430
    :cond_5
    :goto_1
    if-nez v0, :cond_0

    .line 434
    iget-object v2, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/movial/ipphone/IPSmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v2

    sget-object v3, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v2, v3, :cond_7

    .line 438
    const/4 v2, 0x3

    goto :goto_0

    .line 422
    :cond_6
    invoke-virtual {v1}, Lcom/movial/ipphone/IPSmsMessage;->isMWIClearMessage()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 423
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/movial/ipphone/IPSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 424
    invoke-virtual {v1}, Lcom/movial/ipphone/IPSmsMessage;->isMwiDontStore()Z

    move-result v0

    goto :goto_1

    .line 441
    :cond_7
    invoke-virtual {p0, p1}, Lcom/movial/ipphone/IPSMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 219
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-string v0, "3gpp"

    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 928
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method protected handleGetIccSmsDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 918
    const-string v0, "IPSMSDispatcher"

    const-string v1, "handleGetIccSmsDone function is not applicable for IP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 234
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 257
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 259
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPSMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 241
    :pswitch_1
    const-string v1, "IPSMSDispatcher"

    const-string v2, "CB SMS not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 246
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 247
    const-string v1, "IPSMSDispatcher"

    const-string v2, "Successfully wrote SMS-PP message to UICC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 250
    :cond_0
    const-string v1, "IPSMSDispatcher"

    const-string v2, "Failed to write SMS-PP message to UICC"

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xff

    invoke-interface {v1, v4, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected handleSmsOnIcc(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 914
    const-string v0, "IPSMSDispatcher"

    const-string v1, "handleSmsOnIcc function is not applicable for IP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-void
.end method

.method protected isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 2
    .parameter "sms"

    .prologue
    .line 908
    const-string v0, "IPSMSDispatcher"

    const-string v1, "isDuplicatedSms function is not applicable for IP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v0, 0x0

    return v0
.end method

.method public isIms()Z
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x0

    return v0
.end method

.method protected kddiDispatchPdus([[BLcom/android/internal/telephony/SmsMessageBase;)V
    .locals 0
    .parameter "pdus"
    .parameter "smsb"

    .prologue
    .line 940
    return-void
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 448
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v0}, Lcom/movial/ipphone/IPSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v5

    .line 450
    .local v5, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v5, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 451
    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 452
    .local v6, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/movial/ipphone/IPSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, p5, p6, v0}, Lcom/movial/ipphone/IPSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .line 454
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/movial/ipphone/IPSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 459
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_1
    return-void

    .line 448
    .end local v5           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 457
    .restart local v5       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const-string v0, "IPSMSDispatcher"

    const-string v1, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 24
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "callbackNumber"
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/movial/ipphone/IPSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v20, v0

    .line 516
    .local v20, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 517
    .local v18, msgCount:I
    const/4 v9, 0x0

    .line 519
    .local v9, encoding:I
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/movial/ipphone/IPSMSDispatcher;->mRemainingMessages:I

    .line 521
    move/from16 v0, v18

    new-array v15, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .line 522
    .local v15, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 523
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v14

    .line 524
    .local v14, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v4, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v4, :cond_1

    if-eqz v9, :cond_0

    const/4 v4, 0x1

    if-ne v9, v4, :cond_1

    .line 527
    :cond_0
    iget v9, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 529
    :cond_1
    aput-object v14, v15, v16

    .line 522
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 532
    .end local v14           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 533
    new-instance v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 534
    .local v12, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v20

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 535
    add-int/lit8 v4, v16, 0x1

    iput v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 536
    move/from16 v0, v18

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 537
    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 538
    new-instance v22, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 539
    .local v22, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v22

    iput-object v12, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 541
    const/4 v4, 0x1

    if-ne v9, v4, :cond_3

    .line 542
    aget-object v4, v15, v16

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 543
    aget-object v4, v15, v16

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 546
    :cond_3
    const/16 v21, 0x0

    .line 547
    .local v21, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v16

    if-le v4, v0, :cond_4

    .line 548
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #sentIntent:Landroid/app/PendingIntent;
    check-cast v21, Landroid/app/PendingIntent;

    .line 551
    .restart local v21       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v13, 0x0

    .line 552
    .local v13, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v16

    if-le v4, v0, :cond_5

    .line 553
    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 556
    .restart local v13       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v13, :cond_6

    const/4 v7, 0x1

    :goto_2
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    move-object/from16 v0, v22

    iget v10, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v22

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v19

    .line 560
    .local v19, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/movial/ipphone/IPSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v17

    .line 562
    .local v17, map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/movial/ipphone/IPSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v13, v4}, Lcom/movial/ipphone/IPSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v23

    .line 564
    .local v23, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/movial/ipphone/IPSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 532
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 556
    .end local v17           #map:Ljava/util/HashMap;
    .end local v19           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v23           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 566
    .end local v12           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v13           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v21           #sentIntent:Landroid/app/PendingIntent;
    .end local v22           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_7
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .prologue
    .line 574
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p0 .. p5}, Lcom/movial/ipphone/IPSMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 575
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 13
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    .line 589
    if-eqz p7, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    move-object/from16 v0, p4

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, p4

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v7, p5

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 592
    .local v11, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v11, :cond_1

    .line 593
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v11}, Lcom/movial/ipphone/IPSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 595
    .local v10, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/movial/ipphone/IPSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v10, v0, v1, v2}, Lcom/movial/ipphone/IPSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v12

    .line 597
    .local v12, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v12}, Lcom/movial/ipphone/IPSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 601
    .end local v10           #map:Ljava/util/HashMap;
    .end local v12           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_1
    return-void

    .line 589
    .end local v11           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 599
    .restart local v11       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const-string v2, "IPSMSDispatcher"

    const-string v3, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"

    .prologue
    .line 896
    const-string v0, "IPSMSDispatcher"

    const-string v1, "sendOTADomestic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 625
    const-string v0, "IPSMSDispatcher"

    const-string v1, "Error, sendRetrySms, should not be here"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 12
    .parameter "tracker"

    .prologue
    const/4 v11, 0x2

    .line 606
    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 608
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "smsc"

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v8, v9

    check-cast v8, [B

    .line 609
    .local v8, smsc:[B
    const-string v9, "pdu"

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v5, v9

    check-cast v5, [B

    .line 610
    .local v5, pdu:[B
    const/4 v9, 0x3

    aget-byte v10, v5, v11

    add-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x2

    invoke-static {v5, v9, v10}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, destAddr:Ljava/lang/String;
    invoke-virtual {p0, v11, p1}, Lcom/movial/ipphone/IPSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 613
    .local v7, reply:Landroid/os/Message;
    new-instance v2, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;

    invoke-static {}, Lcom/movial/ipphone/IPSmsMessage;->getPreviousMessageReference()I

    move-result v9

    invoke-direct {v2, p0, p1, v7, v9}, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;-><init>(Lcom/movial/ipphone/IPSMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/os/Message;I)V

    .line 614
    .local v2, ipSmsTracker:Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;
    iget-object v9, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mTrackerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    new-instance v4, Landroid/os/Messenger;

    iget-object v9, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIPSmsTrackerHandler:Landroid/os/Handler;

    invoke-direct {v4, v9}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 617
    .local v4, messenger:Landroid/os/Messenger;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 619
    .local v6, pduText:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIPService:Lcom/movial/ipphone/IIPService;

    iget v10, v2, Lcom/movial/ipphone/IPSMSDispatcher$IPSmsTracker;->Serial:I

    invoke-interface {v9, v0, v6, v4, v10}, Lcom/movial/ipphone/IIPService;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    return-void

    .line 620
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v9, "IPSMSDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SendSMS failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 465
    if-eqz p5, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v3}, Lcom/movial/ipphone/IPSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 467
    .local v1, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v1, :cond_2

    .line 468
    if-nez p2, :cond_0

    .line 469
    sget-object p2, Lcom/movial/ipphone/IPSMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    .line 471
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/movial/ipphone/IPSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 472
    .local v0, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/movial/ipphone/IPSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, p4, p5, v3}, Lcom/movial/ipphone/IPSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 474
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IPSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 479
    .end local v0           #map:Ljava/util/HashMap;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_1
    return-void

    .line 465
    .end local v1           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 477
    .restart local v1       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v3, "IPSMSDispatcher"

    const-string v4, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "callbackNumber"
    .parameter "priority"

    .prologue
    .line 484
    invoke-virtual/range {p0 .. p5}, Lcom/movial/ipphone/IPSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 485
    return-void
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 491
    invoke-virtual/range {p0 .. p5}, Lcom/movial/ipphone/IPSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 492
    return-void
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "confirmID"

    .prologue
    .line 500
    invoke-virtual/range {p0 .. p5}, Lcom/movial/ipphone/IPSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 501
    return-void
.end method

.method protected sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "destAddr"
    .parameter "noOfOccur"
    .parameter "scptCategory"
    .parameter "scptLanguage"
    .parameter "scptCategoryResult"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 903
    const-string v0, "IPSMSDispatcher"

    const-string v1, "SCPT-submit pdu is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    return-void
.end method

.method protected updateIccAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 871
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    invoke-virtual {p0}, Lcom/movial/ipphone/IPSMSDispatcher;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 876
    .local v0, newUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 880
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 881
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_2

    .line 882
    const-string v1, "IPSMSDispatcher"

    const-string v2, "Removing stale icc objects."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iput-object v3, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 884
    iput-object v3, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 886
    :cond_2
    if-eqz v0, :cond_0

    .line 887
    const-string v1, "IPSMSDispatcher"

    const-string v2, "New Uicc application found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iput-object v0, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 889
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    goto :goto_0
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 3
    .parameter "mwi"

    .prologue
    .line 835
    if-gez p1, :cond_1

    .line 836
    const/4 p1, -0x1

    .line 843
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceMessageCount(I)V

    .line 845
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    .line 846
    const/16 v1, 0x16

    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IPSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 847
    .local v0, onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/movial/ipphone/IPSMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(IILandroid/os/Message;)V

    .line 851
    .end local v0           #onComplete:Landroid/os/Message;
    :goto_1
    return-void

    .line 837
    :cond_1
    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    .line 840
    const/16 p1, 0xff

    goto :goto_0

    .line 849
    :cond_2
    const-string v1, "IPSMSDispatcher"

    const-string v2, "SIM Records not found, MWI not updated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
