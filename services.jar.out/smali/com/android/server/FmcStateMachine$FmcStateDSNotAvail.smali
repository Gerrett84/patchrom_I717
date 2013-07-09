.class Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;
.super Lcom/android/server/FmcStateMachine$FmcStateBearerDown;
.source "FmcStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FmcStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FmcStateDSNotAvail"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FmcStateMachine;


# direct methods
.method protected constructor <init>(Lcom/android/server/FmcStateMachine;)V
    .locals 2
    .parameter

    .prologue
    .line 812
    iput-object p1, p0, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;->this$0:Lcom/android/server/FmcStateMachine;

    .line 813
    invoke-direct {p0, p1}, Lcom/android/server/FmcStateMachine$FmcStateBearerDown;-><init>(Lcom/android/server/FmcStateMachine;)V

    .line 814
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 819
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    sget-object v0, Lcom/android/server/FmcStateMachine;->mConnSvc:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->setFmcDisabled()V

    .line 821
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;->setStatus(I)V

    .line 822
    invoke-static {v2}, Lcom/android/server/FmcStateMachine;->access$402(Z)Z

    .line 824
    invoke-static {}, Lcom/android/server/FmcStateMachine;->access$800()Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;->sendDisableFmc()V

    .line 829
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;->sendDisableData()V

    .line 830
    return-void

    .line 827
    :cond_0
    invoke-static {v2}, Lcom/android/server/FmcStateMachine;->access$802(Z)Z

    goto :goto_0
.end method
