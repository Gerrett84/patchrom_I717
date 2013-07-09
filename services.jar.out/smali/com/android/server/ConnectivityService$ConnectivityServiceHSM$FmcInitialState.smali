.class final Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;
.super Lcom/android/internal/util/State;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FmcInitialState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V
    .locals 0
    .parameter

    .prologue
    .line 4533
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4533
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;-><init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V

    return-void
.end method

.method private handleConnect(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 4562
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 4563
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->isFmcActiveState(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4564
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$5500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 4565
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mFmcActiveState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcActiveState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$5600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcActiveState;

    move-result-object v2

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$5700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 4566
    const/4 v1, 0x1

    .line 4568
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFmcActiveState(Landroid/net/NetworkInfo;)Z
    .locals 5
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    .line 4574
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 4575
    .local v0, netType:I
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4576
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mFmcEnabled:Z
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)I

    move-result v2

    if-ne v2, v1, :cond_0

    if-nez v0, :cond_0

    .line 4580
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 4536
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$5200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4537
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 4541
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$5300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4542
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 4546
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$5400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".processMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4547
    const/4 v0, 0x0

    .line 4548
    .local v0, ret:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 4556
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    const-string v2, "Unhandled in this state."

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4558
    :goto_0
    return v0

    .line 4551
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;->handleConnect(Landroid/os/Message;)Z

    move-result v0

    .line 4552
    goto :goto_0

    .line 4548
    nop

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_0
    .end packed-switch
.end method
