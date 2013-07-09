.class Lcom/android/internal/telephony/SMSDispatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 3229
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3233
    const-string v2, "SMS"

    const-string v3, "BroadcastReceiver - mGcfResultReceiver "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3236
    const-string v2, "SMS"

    const-string v3, "ACTION_GCF_DEVICE_STORAGE_LOW "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3241
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 3242
    invoke-static {v5}, Lcom/android/internal/telephony/SMSDispatcher;->access$202(Z)Z

    .line 3245
    :cond_0
    invoke-static {v6}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z

    .line 3246
    sput-boolean v5, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 3249
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3250
    .local v1, sms_full_intent:Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3251
    const/4 v0, 0x3

    .line 3252
    .local v0, result:I
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3253
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3254
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3257
    .end local v0           #result:I
    .end local v1           #sms_full_intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3258
    const-string v2, "SMS"

    const-string v3, "ACTION_GCF_DEVICE_STORAGE_OK "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3263
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 3264
    invoke-static {v5}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z

    .line 3267
    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/SMSDispatcher;->access$202(Z)Z

    .line 3269
    sput-boolean v6, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 3272
    :cond_3
    return-void
.end method
