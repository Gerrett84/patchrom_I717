.class Lcom/android/internal/telephony/SMSDispatcher$1;
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
    .line 3156
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 3159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.action.SIM_REFRESH_INIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3160
    sput-object v4, Lcom/android/internal/telephony/SMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    .line 3161
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 3186
    :goto_0
    return-void

    .line 3165
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$1;->getResultCode()I

    move-result v0

    .line 3166
    .local v0, rc:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_2

    .line 3183
    .local v1, success:Z
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2, v1, v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 3166
    .end local v1           #success:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
