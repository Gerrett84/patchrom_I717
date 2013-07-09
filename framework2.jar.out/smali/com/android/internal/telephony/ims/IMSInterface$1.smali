.class Lcom/android/internal/telephony/ims/IMSInterface$1;
.super Landroid/os/Handler;
.source "IMSInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/IMSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/IMSInterface;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/IMSInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 1209
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSInterface$1;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1210
    .local v1, message:Landroid/os/Message;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1277
    .local v0, ar:Landroid/os/AsyncResult;
    return-void
.end method
