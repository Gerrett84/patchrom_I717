.class Landroid/net/wifi/WifiStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 5654
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 14

    .prologue
    .line 5657
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5660
    :cond_0
    :try_start_0
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5667
    :goto_0
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$10100(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 5668
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v10

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 5669
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$13600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5672
    const v9, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5682
    sget v9, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 5683
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$WifiMobility;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->checkNetworkIsMobile(Ljava/lang/String;Ljava/lang/Long;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 5684
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5685
    const-string v9, "WifiMobility"

    const-string v10, "network if fine, adding it"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5687
    :cond_1
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$WifiMobility;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->addNetwork(Ljava/lang/String;Ljava/lang/Long;I)V

    .line 5699
    :cond_2
    :goto_1
    const-string v0, "home_ap_mac"

    .line 5700
    .local v0, HOME_AP_MAC:Ljava/lang/String;
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "home_ap_mac"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5702
    .local v4, homeAps:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 5703
    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5705
    .local v3, homeApMacs:[Ljava/lang/String;
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v6, :cond_3

    aget-object v7, v1, v5

    .line 5706
    .local v7, mac:Ljava/lang/String;
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_7

    .line 5710
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.net.wifi.RUN_KIES"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #calls: Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$15600(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 5717
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #homeApMacs:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #mac:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    const/16 v10, -0xc8

    if-ne v9, v10, :cond_4

    .line 5718
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "re-initialize mWifiInfo rssi. enabled:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5719
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$14008(Landroid/net/wifi/WifiStateMachine;)I

    .line 5720
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 5721
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v11, 0x20053

    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$14000(Landroid/net/wifi/WifiStateMachine;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 5724
    :cond_4
    return-void

    .line 5661
    .end local v0           #HOME_AP_MAC:Ljava/lang/String;
    .end local v4           #homeAps:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 5662
    .local v8, re:Landroid/os/RemoteException;
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to enable IPv6: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5663
    .end local v8           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 5664
    .local v2, e:Ljava/lang/IllegalStateException;
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to enable IPv6: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5689
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :cond_5
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 5690
    const-string v9, "WifiMobility"

    const-string v10, "cant add network, it was highly mobile or blocked"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5692
    :cond_6
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    const/4 v11, 0x6

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 5693
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    goto/16 :goto_1

    .line 5705
    .restart local v0       #HOME_AP_MAC:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #homeApMacs:[Ljava/lang/String;
    .restart local v4       #homeAps:Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #mac:Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5775
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$16500(Landroid/net/wifi/WifiStateMachine;)V

    .line 5776
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 5778
    .local v0, airplaneModeOn:Z
    :goto_0
    if-nez v0, :cond_1

    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-nez v1, :cond_1

    .line 5779
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$16600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const-string v2, "WifiStateMachine"

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->requestNetworkTransitionWakelock(Ljava/lang/String;)Z

    .line 5783
    :goto_1
    return-void

    .end local v0           #airplaneModeOn:Z
    :cond_0
    move v0, v1

    .line 5776
    goto :goto_0

    .line 5781
    .restart local v0       #airplaneModeOn:Z
    :cond_1
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore requestNetworkTransitionWakelock airplane:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 5727
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5728
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 5768
    const/4 v1, 0x0

    .line 5770
    :goto_0
    return v1

    .line 5730
    :sswitch_0
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Watchdog reports poor link"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5770
    :cond_1
    :goto_1
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 5750
    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$14100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5751
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$14100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v1

    const v2, 0x30007

    invoke-virtual {v1, v2}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 5753
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x5

    #calls: Landroid/net/wifi/WifiStateMachine;->waitForDhcpRelease(I)I
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$16400(Landroid/net/wifi/WifiStateMachine;I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 5754
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "waitForDhcpRelease error"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 5756
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "waitForDhcpRelease() Success"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 5760
    :sswitch_3
    sget-boolean v1, Landroid/net/wifi/WifiMonitor;->WIFI_ERRORCODE:Z

    if-eqz v1, :cond_1

    .line 5761
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$WifiMobility;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->handleEAP(Ljava/lang/String;)V

    .line 5762
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_EAP_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5763
    .local v0, eapIntent:Landroid/content/Intent;
    const-string v2, "message"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5764
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Landroid/net/wifi/WifiStateMachine;->access$15600(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto :goto_1

    .line 5728
    :sswitch_data_0
    .sparse-switch
        0x2007c -> :sswitch_3
        0x2007d -> :sswitch_1
        0x200a1 -> :sswitch_2
        0x21015 -> :sswitch_0
    .end sparse-switch
.end method
