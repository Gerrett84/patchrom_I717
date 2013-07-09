.class final Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
.super Lcom/android/internal/util/State;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartConnectivityState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V
    .locals 0
    .parameter

    .prologue
    .line 4712
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4713
    return-void
.end method

.method private isNetworkSimultaneitySupported(Landroid/net/NetworkInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    .line 4734
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 4735
    .local v1, type:I
    const/4 v0, 0x0

    .line 4736
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v2, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4737
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->add(I)Z

    .line 4738
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 4739
    const/4 v0, 0x1

    .line 4742
    :cond_0
    return v0
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4717
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$7800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4719
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$7900(Lcom/android/server/ConnectivityService;)[Lcom/android/server/ConnectivityService$RouteAttributes;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/android/server/ConnectivityService$RouteAttributes;->setMetric(I)V

    .line 4720
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$7900(Lcom/android/server/ConnectivityService;)[Lcom/android/server/ConnectivityService$RouteAttributes;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/android/server/ConnectivityService$RouteAttributes;->setMetric(I)V

    .line 4722
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #setter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v0, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8002(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;I)I

    .line 4723
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 4727
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4728
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 4747
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".processMessage what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4748
    const/4 v0, 0x0

    .line 4749
    .local v0, info:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 4750
    .local v1, ret:Z
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 4772
    const/4 v1, 0x0

    .line 4774
    :cond_0
    :goto_0
    return v1

    .line 4753
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #info:Landroid/net/NetworkInfo;
    check-cast v0, Landroid/net/NetworkInfo;

    .line 4754
    .restart local v0       #info:Landroid/net/NetworkInfo;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->isNetworkSimultaneitySupported(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4755
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "Dual Connectivity Mode detected"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4756
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 4757
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4758
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mWifiDefaultState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    invoke-static {v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    move-result-object v3

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 4762
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 4760
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mMobileDefaultState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    invoke-static {v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    move-result-object v3

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4768
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #info:Landroid/net/NetworkInfo;
    check-cast v0, Landroid/net/NetworkInfo;

    .line 4769
    .restart local v0       #info:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    goto :goto_0

    .line 4750
    nop

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
