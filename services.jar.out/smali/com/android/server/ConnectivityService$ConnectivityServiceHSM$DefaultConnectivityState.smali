.class final Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;
.super Lcom/android/internal/util/State;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultConnectivityState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V
    .locals 0
    .parameter

    .prologue
    .line 4323
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4324
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 4328
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$3800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4329
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 4333
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$3900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4334
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 22
    .parameter "msg"

    .prologue
    .line 4339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Actual State: DefaultConnectivityState, Current State: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v19, v0

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$4000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".processMessage what="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4343
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 4525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v19, v0

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$5000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ignoring unhandled message"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4529
    :cond_0
    :goto_0
    const/16 v17, 0x1

    return v17

    .line 4346
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/NetworkInfo;

    .line 4347
    .local v7, info:Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v15

    .line 4348
    .local v15, type:I
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v14

    .line 4350
    .local v14, state:Landroid/net/NetworkInfo$State;
    sget-object v17, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_1

    sget-object v17, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_2

    .line 4352
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ConnectivityChange for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4364
    :cond_2
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v17

    and-int/lit8 v17, v17, 0x7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v18

    and-int/lit8 v18, v18, 0x3f

    shl-int/lit8 v18, v18, 0x3

    or-int v17, v17, v18

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v18

    shl-int/lit8 v18, v18, 0x9

    or-int v6, v17, v18

    .line 4367
    .local v6, eventLogParam:I
    const v17, 0xc364

    move/from16 v0, v17

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4370
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 4372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    const/16 v18, 0x138d

    move-object/from16 v0, v17

    move/from16 v1, v18

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v7}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$4100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4373
    :cond_3
    sget-object v17, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_4

    .line 4374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    const/16 v18, 0x138a

    move-object/from16 v0, v17

    move/from16 v1, v18

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v7}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$4200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4375
    :cond_4
    sget-object v17, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_5

    .line 4383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    const/16 v18, 0x138a

    move-object/from16 v0, v17

    move/from16 v1, v18

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v7}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$4300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4384
    :cond_5
    sget-object v17, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_0

    .line 4385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    const/16 v18, 0x1389

    move-object/from16 v0, v17

    move/from16 v1, v18

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v7}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$4400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4391
    .end local v6           #eventLogParam:I
    .end local v7           #info:Landroid/net/NetworkInfo;
    .end local v14           #state:Landroid/net/NetworkInfo$State;
    .end local v15           #type:I
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/NetworkInfo;

    .line 4395
    .restart local v7       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    const/16 v19, 0x138b

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$4500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4402
    .end local v7           #info:Landroid/net/NetworkInfo;
    :sswitch_2
    const/4 v2, 0x0

    .line 4403
    .local v2, causedBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 4404
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 4406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v2

    .line 4409
    :cond_6
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4410
    if-eqz v2, :cond_0

    .line 4411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NetTransition Wakelock for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " released by timeout"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4409
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 4417
    .end local v2           #causedBy:Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 4418
    .local v16, u:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto/16 :goto_0

    .line 4423
    .end local v16           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    const/16 v19, 0x138e

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$4600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4429
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    const/16 v19, 0x138f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$4700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4435
    :sswitch_6
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 4436
    .local v12, preference:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v0, v12}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 4441
    .end local v12           #preference:I
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/4 v5, 0x1

    .line 4442
    .local v5, enabled:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v0, v5}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_0

    .line 4441
    .end local v5           #enabled:Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 4447
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 4452
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/4 v9, 0x1

    .line 4453
    .local v9, met:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    #calls: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v0, v1, v9}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 4452
    .end local v9           #met:Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    .line 4458
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    const/16 v18, 0x1391

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$4800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;I)V

    goto/16 :goto_0

    .line 4463
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/content/Intent;

    .line 4464
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4468
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_c
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 4469
    .local v11, networkType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/4 v5, 0x1

    .line 4470
    .restart local v5       #enabled:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v0, v11, v5}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 4469
    .end local v5           #enabled:Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    .line 4479
    .end local v11           #networkType:I
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/NetworkInfo;

    .line 4480
    .restart local v7       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v7}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 4483
    .end local v7           #info:Landroid/net/NetworkInfo;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/NetworkInfo;

    .line 4484
    .restart local v7       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v7}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 4488
    .end local v7           #info:Landroid/net/NetworkInfo;
    :sswitch_f
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 4489
    .restart local v15       #type:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/4 v4, 0x1

    .line 4490
    .local v4, doReset:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V
    invoke-static {v0, v15, v4}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 4489
    .end local v4           #doReset:Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_4

    .line 4494
    .end local v15           #type:I
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    #calls: Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 4497
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/NetworkInfo;

    .line 4498
    .restart local v7       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v7}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 4502
    .end local v7           #info:Landroid/net/NetworkInfo;
    :sswitch_12
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 4503
    .local v10, netType:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 4504
    .local v3, condition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v0, v10, v3}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 4509
    .end local v3           #condition:I
    .end local v10           #netType:I
    :sswitch_13
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 4510
    .restart local v10       #netType:I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 4511
    .local v13, sequence:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v0, v10, v13}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 4515
    .end local v10           #netType:I
    .end local v13           #sequence:I
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService;->enforcePreference()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 4519
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 4520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)I

    move-result v18

    #calls: Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 4343
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x65 -> :sswitch_3
        0x67 -> :sswitch_6
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6b -> :sswitch_7
        0x6c -> :sswitch_2
        0x6d -> :sswitch_8
        0x6e -> :sswitch_9
        0x6f -> :sswitch_a
        0x70 -> :sswitch_b
        0x71 -> :sswitch_c
        0x1389 -> :sswitch_d
        0x138a -> :sswitch_e
        0x138b -> :sswitch_f
        0x138c -> :sswitch_10
        0x138d -> :sswitch_11
        0x138e -> :sswitch_12
        0x138f -> :sswitch_13
        0x1390 -> :sswitch_14
        0x1391 -> :sswitch_15
    .end sparse-switch
.end method
