.class final Lcom/android/internal/telephony/ims/IMSSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "IMSSMSDispatcher.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "phone"
    .parameter "ci"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 51
    return-void
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method protected clearDuplicatedCbMessages()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .parameter "sms"

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 213
    return-void
.end method

.method protected handleGetIccSmsDone(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 230
    return-void
.end method

.method protected handleSmsOnIcc(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 227
    return-void
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "ar"

    .prologue
    .line 92
    return-void
.end method

.method protected isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 1
    .parameter "sms"

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public isIms()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method protected kddiDispatchPdus([[BLcom/android/internal/telephony/SmsMessageBase;)V
    .locals 0
    .parameter "pdus"
    .parameter "smsb"

    .prologue
    .line 280
    return-void
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 178
    return-void
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 101
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
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
    .line 123
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
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
    .line 187
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    .line 239
    return-void
.end method

.method protected sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"

    .prologue
    .line 161
    return-void
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 234
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 153
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 200
    return-void
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
    .line 144
    return-void
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
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
    .parameter "confirmID"

    .prologue
    .line 248
    return-void
.end method

.method protected sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "destAddr"
    .parameter "noOfOccur"
    .parameter "scptCategory"
    .parameter "scptLanguage"
    .parameter "scptCategoryResult"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 133
    return-void
.end method

.method public updateIccAvailability()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method
