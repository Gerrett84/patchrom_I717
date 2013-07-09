.class Lcom/android/server/FmcStateMachine$FmcStateBearerDown;
.super Lcom/android/server/FmcStateMachine$FmcState;
.source "FmcStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FmcStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FmcStateBearerDown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FmcStateMachine;


# direct methods
.method protected constructor <init>(Lcom/android/server/FmcStateMachine;)V
    .locals 2
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/server/FmcStateMachine$FmcStateBearerDown;->this$0:Lcom/android/server/FmcStateMachine;

    .line 748
    invoke-direct {p0, p1}, Lcom/android/server/FmcStateMachine$FmcState;-><init>(Lcom/android/server/FmcStateMachine;)V

    .line 749
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateBearerDown;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateBearerDown;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-string v0, "fmc.data.disable.timeout"

    const/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FmcStateMachine$FmcStateBearerDown;->startStateTimer(Ljava/lang/String;I)V

    .line 757
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateBearerDown;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessage message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 771
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateBearerDown;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processMessage not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 765
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateBearerDown;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateInactive:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$1000(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateBearerDown;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 768
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateBearerDown;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateInactive:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$1000(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateBearerDown;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 763
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
