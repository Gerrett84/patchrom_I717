.class Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;
.super Lcom/android/internal/util/State;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService$WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$600(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v1, "Enter InactiveState"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$600(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 487
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$600(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 488
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 546
    :pswitch_0
    const/4 v0, 0x0

    .line 548
    :goto_0
    :pswitch_1
    return v0

    .line 490
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v2, "Enable Wi-Fi Display"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$600(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->enableWiFiP2P()V
    invoke-static {v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$1100(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    .line 495
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$100(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 496
    const-string v1, "WfdService"

    const-string v2, "send wfd start msg"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v1

    const v2, 0x2206b

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$200(Lcom/samsung/wfd/WfdService;I)V

    goto :goto_0

    .line 504
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v2, "Enable Wi-Fi Display dialog"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$600(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->enableWiFiP2P()V
    invoke-static {v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$1100(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    .line 508
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v1, v4}, Lcom/samsung/wfd/WfdService;->access$200(Lcom/samsung/wfd/WfdService;I)V

    .line 509
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendWfdPickerStartBroadCast()V
    invoke-static {v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$1200(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    goto :goto_0

    .line 513
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v2, "Disble Wi-Fi Display"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$600(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v1, v0}, Lcom/samsung/wfd/WfdService;->access$200(Lcom/samsung/wfd/WfdService;I)V

    .line 517
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.wfd.WFDSourceService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 518
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V
    invoke-static {v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$1300(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    goto :goto_0

    .line 525
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v2, "recv wfd start msg"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$600(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.wfd.WFDSourceService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 536
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v2, "Resume RTSP session"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$600(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v2, "Pause RTSP session"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$600(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x22065
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method
