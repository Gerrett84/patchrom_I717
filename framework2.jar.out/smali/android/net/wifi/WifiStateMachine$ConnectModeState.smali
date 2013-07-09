.class Landroid/net/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 5110
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 5113
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5114
    :cond_0
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5115
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 16
    .parameter "message"

    .prologue
    .line 5118
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5120
    :cond_0
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 5348
    const/4 v11, 0x0

    .line 5350
    :goto_0
    return v11

    .line 5122
    :sswitch_0
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AUTHENTICATION_FAILURE_EVENT WpsInprogress : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$12500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5126
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$12500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 5127
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v12

    const v13, 0x24007

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/SupplicantStateTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 5350
    :cond_2
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 5135
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v11, v0}, Landroid/net/wifi/WifiStateMachine;->access$9200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v8

    .line 5138
    .local v8, state:Landroid/net/wifi/SupplicantState;
    invoke-static {v8}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 5139
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$7300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v11, v12, :cond_3

    .line 5140
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$7700(Landroid/net/wifi/WifiStateMachine;)V

    .line 5142
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v12, "Detected an interface down, restart driver"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5143
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$9400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5144
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x2000d

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 5153
    :cond_4
    sget-object v11, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne v8, v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$7300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v11, v12, :cond_6

    .line 5155
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v12, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5156
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$7700(Landroid/net/wifi/WifiStateMachine;)V

    .line 5157
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$10600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$12700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5162
    :cond_6
    sget-object v11, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-ne v8, v11, :cond_2

    .line 5163
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/StateChangeResult;

    .line 5164
    .local v9, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    iget v12, v9, Landroid/net/wifi/StateChangeResult;->networkId:I

    new-instance v13, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v13}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v13, v13, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5167
    .local v6, private_key:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 5168
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$12802(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 5177
    .end local v6           #private_key:Ljava/lang/String;
    .end local v8           #state:Landroid/net/wifi/SupplicantState;
    .end local v9           #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v11

    const v12, 0x2400e

    invoke-virtual {v11, v12}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto/16 :goto_1

    .line 5180
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 5183
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 5186
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    .line 5194
    :sswitch_6
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v12, "Connect network in connect Mode state WIFISTATEMACHINE"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5195
    :cond_7
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 5197
    .local v4, netId:I
    const/4 v1, 0x0

    .line 5199
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 5200
    .local v2, edmArgs:Landroid/os/Bundle;
    const-string v11, "config"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 5201
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    const-string v11, "pid"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 5202
    .local v5, pid:I
    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11, v1, v5}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-nez v1, :cond_8

    .line 5203
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x25002

    const/4 v13, 0x0

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v11, v0, v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 5212
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pFreq:I
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v11

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAllowToConnect:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-nez v11, :cond_a

    if-eqz v1, :cond_a

    .line 5213
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->getFreq(Landroid/net/wifi/WifiConfiguration;)I
    invoke-static {v11, v1}, Landroid/net/wifi/WifiStateMachine;->access$12900(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 5214
    .local v3, freq:I
    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pFreq:I
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v11

    if-eq v3, v11, :cond_a

    .line 5215
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v11

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[SCC DIFF FREQ] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pFreq:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5216
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x1

    #calls: Landroid/net/wifi/WifiStateMachine;->notifySccDiffFreq(Z)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$13000(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 5217
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v12, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v12, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #setter for: Landroid/net/wifi/WifiStateMachine;->tempConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$4902(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 5219
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x25003

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v11, v0, v12}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 5226
    .end local v3           #freq:I
    :cond_a
    if-eqz v1, :cond_b

    .line 5227
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v7

    .line 5228
    .local v7, result:Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v7}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v4

    .line 5239
    .end local v7           #result:Landroid/net/wifi/NetworkUpdateResult;
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiNative;->reconnect()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 5242
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v11

    const v12, 0x25001

    invoke-virtual {v11, v12}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 5243
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x25003

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v11, v0, v12}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 5245
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$13100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 5247
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to connect config: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " netId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5248
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x25002

    const/4 v13, 0x0

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v11, v0, v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 5254
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #edmArgs:Landroid/os/Bundle;
    .end local v4           #netId:I
    .end local v5           #pid:I
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WpsInfo;

    .line 5256
    .local v10, wpsInfo:Landroid/net/wifi/WpsInfo;
    iget v11, v10, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v11, :pswitch_data_0

    .line 5267
    new-instance v7, Landroid/net/wifi/WpsResult;

    sget-object v11, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct {v7, v11}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 5268
    .local v7, result:Landroid/net/wifi/WpsResult;
    const-string v11, "WifiStateMachine"

    const-string v12, "Invalid setup for WPS"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5271
    :goto_2
    iget-object v11, v7, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    sget-object v12, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    if-ne v11, v12, :cond_d

    .line 5272
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$12502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5273
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x2500b

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v11, v0, v12, v7}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 5274
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$13400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 5258
    .end local v7           #result:Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v7

    .line 5259
    .restart local v7       #result:Landroid/net/wifi/WpsResult;
    goto :goto_2

    .line 5261
    .end local v7           #result:Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v7

    .line 5262
    .restart local v7       #result:Landroid/net/wifi/WpsResult;
    goto :goto_2

    .line 5264
    .end local v7           #result:Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v7

    .line 5265
    .restart local v7       #result:Landroid/net/wifi/WpsResult;
    goto :goto_2

    .line 5276
    :cond_d
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to start WPS with config "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5277
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v12, 0x2500c

    const/4 v13, 0x0

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v11, v0, v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 5282
    .end local v7           #result:Landroid/net/wifi/WpsResult;
    .end local v10           #wpsInfo:Landroid/net/wifi/WpsInfo;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    .line 5284
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 5286
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$12500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$12502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5287
    :cond_e
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v11

    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v12, "Network connection established"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5288
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$6102(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5289
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v12, v11}, Landroid/net/wifi/WifiStateMachine;->access$6002(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 5291
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 5292
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 5294
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$13500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 5297
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$10100(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 5298
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$13600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5299
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$13700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$13800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5302
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->handleEapTlsFinish(Z)V

    goto/16 :goto_1

    .line 5307
    :sswitch_a
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v11

    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v12, "Network connection lost"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5308
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$7700(Landroid/net/wifi/WifiStateMachine;)V

    .line 5309
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$10600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Landroid/net/wifi/WifiStateMachine;->access$13900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5312
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiStateMachine;->handleEapTlsFinish(Z)V

    goto/16 :goto_1

    .line 5320
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$ConnectModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->handleEapTlsKeystoreRequired()V

    goto/16 :goto_1

    .line 5345
    :sswitch_c
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 5120
    :sswitch_data_0
    .sparse-switch
        0x2004a -> :sswitch_3
        0x2004b -> :sswitch_4
        0x2004c -> :sswitch_5
        0x20118 -> :sswitch_b
        0x24003 -> :sswitch_9
        0x24004 -> :sswitch_a
        0x24005 -> :sswitch_8
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_0
        0x2400e -> :sswitch_2
        0x2406f -> :sswitch_c
        0x25001 -> :sswitch_6
        0x2500a -> :sswitch_7
    .end sparse-switch

    .line 5256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
