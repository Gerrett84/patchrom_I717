.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSTBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 3240
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3240
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3243
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3244
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3245
    const-string v2, "gsm.current.phone-type"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3246
    .local v1, currentPhone:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3248
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 3251
    .end local v1           #currentPhone:I
    :cond_0
    return-void
.end method
