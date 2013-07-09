.class final Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;
.super Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V
    .locals 1
    .parameter

    .prologue
    .line 4812
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;-><init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/server/ConnectivityService$1;)V

    .line 4813
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    .line 4814
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    .line 4815
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 4819
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$9400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4820
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->runOnEnter()V

    .line 4821
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 4825
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$9500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4826
    return-void
.end method

.method protected transitionToOther()V
    .locals 3

    .prologue
    .line 4830
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$9600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transitionToOther"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4831
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mMobileDefaultState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    invoke-static {v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$9700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 4832
    return-void
.end method
