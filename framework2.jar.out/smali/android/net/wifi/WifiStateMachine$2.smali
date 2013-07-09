.class Landroid/net/wifi/WifiStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1239
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0x12

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "edm.intent.action.disable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1243
    const-string v4, "netId"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1244
    .local v2, netId:I
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(I)Z

    .line 1268
    .end local v2           #netId:I
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "edm.intent.action.enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1246
    const-string v4, "netId"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1247
    .restart local v2       #netId:I
    const-string v4, "enableOthers"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1248
    .local v0, enableOthers:Z
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    goto :goto_0

    .line 1249
    .end local v0           #enableOthers:Z
    .end local v2           #netId:I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1251
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "wifi_p2p_state"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pState:I
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$702(Landroid/net/wifi/WifiStateMachine;I)I

    goto :goto_0

    .line 1252
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1254
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1255
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_5

    .line 1256
    const-string v4, "wifiP2pGroupInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1257
    .local v1, mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v1, :cond_4

    .line 1258
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v5

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pFreq:I
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$802(Landroid/net/wifi/WifiStateMachine;I)I

    .line 1260
    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mAllowToConnect:Z
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$902(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 1261
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4, v9, v6}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    goto :goto_0

    .line 1263
    .end local v1           #mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pFreq:I
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$802(Landroid/net/wifi/WifiStateMachine;I)I

    .line 1264
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mAllowToConnect:Z
    invoke-static {v4, v7}, Landroid/net/wifi/WifiStateMachine;->access$902(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 1265
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4, v9, v7}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    goto/16 :goto_0
.end method
