.class Lcom/android/internal/telephony/DataConnection$DcActiveState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActiveState"
.end annotation


# instance fields
.field private mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

.field private mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1129
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1130
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1131
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1129
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->access$600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1151
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1156
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1157
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 1158
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 1164
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1236
    const/4 v3, 0x0

    .line 1239
    .local v3, retVal:Z
    :goto_0
    return v3

    .line 1167
    .end local v3           #retVal:Z
    :sswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/internal/telephony/ApnContext;

    if-eqz v4, :cond_2

    .line 1168
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1169
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 1170
    .local v1, apnType:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState msg.what=EVENT_CONNECT apnType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1171
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefType:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$1100(Lcom/android/internal/telephony/DataConnection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefType:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$1100(Lcom/android/internal/telephony/DataConnection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefType:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$1100(Lcom/android/internal/telephony/DataConnection;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    .line 1177
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #apnType:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState msg.what=EVENT_CONNECT RefCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1178
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 1179
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    invoke-static {v5, v4, v6}, Lcom/android/internal/telephony/DataConnection;->access$600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1181
    :cond_1
    const/4 v3, 0x1

    .line 1182
    .restart local v3       #retVal:Z
    goto/16 :goto_0

    .line 1174
    .end local v3           #retVal:Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v5, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    goto :goto_1

    .line 1185
    :sswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState moving to DcQosActiveState msg.what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1187
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/internal/telephony/DataConnection;->access$2700(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V

    .line 1188
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$2800(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$2900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1189
    const/4 v3, 0x1

    .line 1190
    .restart local v3       #retVal:Z
    goto/16 :goto_0

    .line 1193
    .end local v3           #retVal:Z
    :sswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/internal/telephony/ApnContext;

    if-eqz v4, :cond_4

    .line 1194
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1195
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 1196
    .restart local v1       #apnType:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState msg.what=EVENT_DISCONNECT apnType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1197
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefType:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$1100(Lcom/android/internal/telephony/DataConnection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1198
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefType:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$1100(Lcom/android/internal/telephony/DataConnection;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    .line 1204
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #apnType:Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState msg.what=EVENT_DISCONNECT RefCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1205
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    if-nez v4, :cond_5

    .line 1207
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 1208
    .local v2, dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mTag:I

    iput v4, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->tag:I

    .line 1209
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V
    invoke-static {v4, v2}, Lcom/android/internal/telephony/DataConnection;->access$2000(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V

    .line 1210
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$3000(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$3100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1216
    .end local v2           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    :cond_3
    :goto_3
    const/4 v3, 0x1

    .line 1217
    .restart local v3       #retVal:Z
    goto/16 :goto_0

    .line 1201
    .end local v3           #retVal:Z
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v5, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    goto :goto_2

    .line 1212
    :cond_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 1213
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;Z)V
    invoke-static {v5, v4, v7}, Lcom/android/internal/telephony/DataConnection;->access$1000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;Z)V

    goto :goto_3

    .line 1221
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActiveState msg.what=EVENT_DISCONNECT_ALL RefCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v6, v6, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1223
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iput v7, v4, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    .line 1224
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 1225
    .restart local v2       #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mTag:I

    iput v4, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->tag:I

    .line 1226
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V
    invoke-static {v4, v2}, Lcom/android/internal/telephony/DataConnection;->access$2000(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V

    .line 1227
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection;->access$3000(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/DataConnection;->access$3200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1228
    const/4 v3, 0x1

    .line 1229
    .restart local v3       #retVal:Z
    goto/16 :goto_0

    .line 1164
    nop

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_0
        0x40004 -> :sswitch_2
        0x40006 -> :sswitch_3
        0x4001e -> :sswitch_1
        0x40028 -> :sswitch_1
    .end sparse-switch
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 0
    .parameter "cp"
    .parameter "cause"

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 1136
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 1137
    return-void
.end method
