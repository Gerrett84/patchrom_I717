.class abstract Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
.super Lcom/android/internal/util/State;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DualConnectivityState"
.end annotation


# instance fields
.field protected mOtherDefaultConnectionSequence:I

.field protected mOtherDefaultInetCondition:I

.field protected mOtherDefaultInetConditionPublished:I

.field protected mOtherInetConditionChangeInFlight:Z

.field protected myDefaultNet:I

.field protected otherDefaultNet:I

.field final synthetic this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4841
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4844
    iput v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    iput v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    iput v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    .line 4848
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4841
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;-><init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V

    return-void
.end method

.method private handleConnectivityChange(IZ)V
    .locals 13
    .parameter "netType"
    .parameter "doReset"

    .prologue
    .line 5481
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$12700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " handleConnectivityChange"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5482
    if-eqz p2, :cond_3

    const/4 v9, 0x3

    .line 5485
    .local v9, resetMask:I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsConfigurationChange(I)V

    .line 5487
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v10

    aget-object v1, v10, p1

    .line 5488
    .local v1, curLp:Landroid/net/LinkProperties;
    const/4 v7, 0x0

    .line 5490
    .local v7, newLp:Landroid/net/LinkProperties;
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v10

    aget-object v10, v10, p1

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 5491
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v10

    aget-object v10, v10, p1

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 5500
    if-eqz v1, :cond_5

    .line 5501
    invoke-virtual {v1, v7}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 5502
    invoke-virtual {v1, v7}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v0

    .line 5503
    .local v0, car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    iget-object v10, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-eqz v10, :cond_b

    .line 5504
    :cond_0
    iget-object v10, v0, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 5505
    .local v5, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/Inet4Address;

    if-eqz v10, :cond_2

    .line 5506
    or-int/lit8 v9, v9, 0x1

    .line 5508
    :cond_2
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    instance-of v10, v10, Ljava/net/Inet6Address;

    if-eqz v10, :cond_1

    .line 5509
    or-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 5482
    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v1           #curLp:Landroid/net/LinkProperties;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #linkAddr:Landroid/net/LinkAddress;
    .end local v7           #newLp:Landroid/net/LinkProperties;
    .end local v9           #resetMask:I
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 5513
    .restart local v0       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .restart local v1       #curLp:Landroid/net/LinkProperties;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v7       #newLp:Landroid/net/LinkProperties;
    .restart local v9       #resetMask:I
    :cond_4
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: addresses changed linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n   car="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5532
    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, v10, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 5533
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v11

    #calls: Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    invoke-static {v10, v11}, Lcom/android/server/ConnectivityService;->access$12800(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V

    .line 5543
    :cond_6
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v10

    aput-object v7, v10, p1

    .line 5544
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, v10, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v10

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$7900(Lcom/android/server/ConnectivityService;)[Lcom/android/server/ConnectivityService$RouteAttributes;

    move-result-object v11

    aget-object v11, v11, p1

    invoke-virtual {p0, v7, v1, v10, v11}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZLcom/android/server/ConnectivityService$RouteAttributes;)Z

    move-result v8

    .line 5549
    .local v8, resetDns:Z
    if-nez v9, :cond_7

    if-eqz v8, :cond_9

    .line 5550
    :cond_7
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v10

    aget-object v10, v10, p1

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    .line 5551
    .local v6, linkProperties:Landroid/net/LinkProperties;
    if-eqz v6, :cond_9

    .line 5552
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 5553
    .local v4, iface:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 5554
    if-eqz v9, :cond_8

    .line 5555
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetConnections("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5556
    invoke-static {v4, v9}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 5560
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_8

    .line 5561
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mVpn:Lcom/android/server/connectivity/Vpn;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$12900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Vpn;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 5564
    :cond_8
    if-eqz v8, :cond_9

    .line 5567
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v10

    invoke-interface {v10, v4}, Landroid/os/INetworkManagementService;->flushInterfaceDnsCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5580
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #linkProperties:Landroid/net/LinkProperties;
    :cond_9
    :goto_3
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v10

    aget-object v10, v10, p1

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    const-string v11, "linkPropertiesChanged"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5582
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5583
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$13000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v11

    aget-object v11, v11, p1

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/connectivity/Tethering;->handleTetherIfaceChange(Landroid/net/NetworkInfo;)V

    .line 5586
    :cond_a
    return-void

    .line 5519
    .end local v8           #resetDns:Z
    .restart local v0       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_b
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: address are the  same reset per doReset linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5525
    .end local v0           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_c
    const/4 v9, 0x3

    .line 5527
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConnectivityChange: interface not equivalent reset both linkProperty["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: resetMask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5568
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #linkProperties:Landroid/net/LinkProperties;
    .restart local v8       #resetDns:Z
    :catch_0
    move-exception v2

    .line 5570
    .local v2, e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception resetting dns cache: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private updateDns(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 14
    .parameter "iface"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5058
    .local p2, netDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v13}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$11100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " updateDns"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5059
    const/4 v0, 0x0

    .line 5060
    .local v0, changed:Z
    const/4 v7, 0x0

    .line 5061
    .local v7, last:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5063
    .local v3, dnses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v11

    iget v12, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v11, v11, v12

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v8

    .line 5064
    .local v8, mlp:Landroid/net/LinkProperties;
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v11

    iget v12, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v11, v11, v12

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 5066
    .local v9, olp:Landroid/net/LinkProperties;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5067
    :cond_0
    if-eqz v9, :cond_1

    .line 5068
    iget v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    iget-object v12, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v12}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I

    move-result v12

    if-ne v11, v12, :cond_3

    .line 5069
    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v3, v11, v12}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 5075
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$11200(Lcom/android/server/ConnectivityService;)Ljava/net/InetAddress;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 5076
    add-int/lit8 v7, v7, 0x1

    .line 5077
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$11200(Lcom/android/server/ConnectivityService;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 5078
    .local v10, value:Ljava/lang/String;
    const-string v11, "net.dns1"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 5080
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no dns provided - using "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5082
    const/4 v0, 0x1

    .line 5083
    const-string v11, "net.dns1"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5100
    .end local v10           #value:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v7, 0x1

    .local v4, i:I
    :goto_1
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNumDnsEntries:I
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$11300(Lcom/android/server/ConnectivityService;)I

    move-result v11

    if-gt v4, v11, :cond_7

    .line 5101
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5103
    .local v6, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 5104
    const-string v11, ""

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5100
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5071
    .end local v4           #i:I
    .end local v6           #key:Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5086
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 5087
    .local v2, dns:Ljava/net/InetAddress;
    add-int/lit8 v7, v7, 0x1

    .line 5088
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5089
    .restart local v6       #key:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 5090
    .restart local v10       #value:Ljava/lang/String;
    if-nez v0, :cond_6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 5096
    :cond_6
    const/4 v0, 0x1

    .line 5097
    invoke-static {v6, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5106
    .end local v2           #dns:Ljava/net/InetAddress;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #key:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    .restart local v4       #i:I
    :cond_7
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #setter for: Lcom/android/server/ConnectivityService;->mNumDnsEntries:I
    invoke-static {v11, v7}, Lcom/android/server/ConnectivityService;->access$11302(Lcom/android/server/ConnectivityService;I)I

    .line 5108
    if-eqz v0, :cond_a

    .line 5110
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 5112
    :try_start_0
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, p1, v12}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5116
    :cond_8
    const/4 v1, 0x0

    .line 5117
    .local v1, defDnsIface:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v11}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I

    move-result v11

    iget v12, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v11, v12, :cond_b

    if-eqz v8, :cond_b

    .line 5118
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 5122
    :cond_9
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 5123
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v11

    invoke-interface {v11, v1}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    .line 5129
    .end local v1           #defDnsIface:Ljava/lang/String;
    :cond_a
    :goto_4
    return v0

    .line 5119
    .restart local v1       #defDnsIface:Ljava/lang/String;
    :cond_b
    if-eqz v9, :cond_9

    .line 5120
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3

    .line 5125
    .end local v1           #defDnsIface:Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_4
.end method


# virtual methods
.method protected addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z
    .locals 8
    .parameter "lp"
    .parameter "r"
    .parameter "cycleCount"
    .parameter "defaultRouteMetric"

    .prologue
    const/4 v4, 0x0

    .line 5643
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " addRoute"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5645
    const/4 v3, 0x0

    .line 5646
    .local v3, metric:I
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 5648
    .local v2, ifaceName:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5691
    :cond_0
    :goto_0
    return v4

    .line 5652
    :cond_1
    const/16 v5, 0xa

    if-le p3, v5, :cond_2

    .line 5653
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    const-string v6, "Error adding route - too much recursion"

    #calls: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto :goto_0

    .line 5657
    :cond_2
    invoke-virtual {p2}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v5

    if-nez v5, :cond_3

    .line 5659
    move v3, p4

    .line 5660
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 5662
    .local v0, bestRoute:Landroid/net/RouteInfo;
    if-eqz v0, :cond_3

    .line 5663
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5665
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v5}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 5672
    :goto_1
    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p0, p1, v0, v5, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    .line 5682
    .end local v0           #bestRoute:Landroid/net/RouteInfo;
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$13400(Lcom/android/server/ConnectivityService;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 5683
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$13400(Lcom/android/server/ConnectivityService;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5685
    :cond_4
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v5

    invoke-interface {v5, v2, v3, p2}, Landroid/os/INetworkManagementService;->addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5691
    const/4 v4, 0x1

    goto :goto_0

    .line 5669
    .restart local v0       #bestRoute:Landroid/net/RouteInfo;
    :cond_5
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_1

    .line 5686
    .end local v0           #bestRoute:Landroid/net/RouteInfo;
    :catch_0
    move-exception v1

    .line 5689
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected handleConnect(Landroid/net/NetworkInfo;)I
    .locals 8
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 5333
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$12200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " handleConnect"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5334
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 5335
    .local v3, type:I
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v5

    aget-object v2, v5, v3

    .line 5338
    .local v2, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, v5, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5339
    const/4 v4, -0x1

    .line 5387
    :cond_0
    :goto_0
    return v4

    .line 5344
    :cond_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5345
    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->isHigherPriorityNet(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, -0x2

    goto :goto_0

    .line 5351
    :cond_2
    const/4 v0, 0x0

    .line 5352
    .local v0, causedBy:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v5

    .line 5353
    :try_start_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v6, v6, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5354
    iget-object v6, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v6, v6, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5355
    iget-object v6, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v6, v6, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v0

    .line 5357
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5358
    if-eqz v0, :cond_4

    .line 5359
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetTransition Wakelock for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " released because of connect"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5362
    :cond_4
    iget v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v3, v5, :cond_6

    .line 5363
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #setter for: Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->access$6702(Lcom/android/server/ConnectivityService;I)I

    .line 5364
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$6808(Lcom/android/server/ConnectivityService;)I

    .line 5365
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #setter for: Lcom/android/server/ConnectivityService;->mInetConditionChangeInFlight:Z
    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->access$6902(Lcom/android/server/ConnectivityService;Z)Z

    .line 5371
    :goto_1
    invoke-interface {v2, v4}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 5372
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v5, v2}, Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 5373
    invoke-direct {p0, v3, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivityChange(IZ)V

    .line 5374
    iget v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    if-eq v3, v5, :cond_5

    .line 5375
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v6, v6, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$7000(Lcom/android/server/ConnectivityService;)I

    move-result v6

    #calls: Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    invoke-static {v5, p1, v6}, Lcom/android/server/ConnectivityService;->access$7100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;I)V

    .line 5379
    :cond_5
    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 5380
    .local v1, iface:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 5382
    :try_start_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, v1, v3}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 5383
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 5357
    .end local v1           #iface:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 5367
    :cond_6
    iput v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    .line 5368
    iget v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    .line 5369
    iput-boolean v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    goto :goto_1
.end method

.method protected handleConnectivitySwitch(ILjava/lang/String;)Z
    .locals 5
    .parameter "netType"
    .parameter "reason"

    .prologue
    .line 5025
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$11000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handleConnectivitySwitch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5026
    const/4 v0, 0x1

    .line 5028
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5029
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not supported for default connectivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/ConnectivityService;->logw(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$10600(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    move v1, v0

    .line 5047
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_0
    return v1

    .line 5033
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 5034
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Network"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/ConnectivityService;->logw(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$10600(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    move v1, v0

    .line 5035
    .restart local v1       #ret:I
    goto :goto_0

    .line 5037
    .end local v1           #ret:I
    :cond_1
    iget v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v2, p1, :cond_2

    .line 5039
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    #setter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$902(Lcom/android/server/ConnectivityService;I)I

    .line 5040
    iget v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDefaultRouteMetric(I)V

    .line 5041
    invoke-virtual {p0, p2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->sendConnectivitySwitchBroadcast(Ljava/lang/String;)V

    :goto_1
    move v1, v0

    .line 5047
    .restart local v1       #ret:I
    goto :goto_0

    .line 5044
    .end local v1           #ret:I
    :cond_2
    iget v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->removeDefaultRoutes(I)V

    .line 5045
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected handleDisconnect(Landroid/net/NetworkInfo;)I
    .locals 18
    .parameter "info"

    .prologue
    .line 5207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$11800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " handleDisconnect"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5208
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v14

    .line 5211
    .local v14, type:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v15, v15, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v15, v15, v14

    invoke-virtual {v15}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v15}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v15

    if-nez v15, :cond_1

    .line 5212
    :cond_0
    const/4 v15, 0x0

    .line 5296
    :goto_0
    return v15

    .line 5215
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v14, v15, :cond_3

    .line 5216
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v15}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I

    move-result v15

    if-ne v15, v14, :cond_2

    .line 5217
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsReprioritization(I)V

    .line 5219
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v15}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    .line 5221
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    move/from16 v16, v0

    #setter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v15 .. v16}, Lcom/android/server/ConnectivityService;->access$902(Lcom/android/server/ConnectivityService;I)I

    .line 5222
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 5223
    .local v13, otherInfo:Landroid/net/NetworkInfo;
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 5224
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    invoke-static {v15, v13}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    .line 5225
    const/4 v15, -0x1

    goto :goto_0

    .line 5230
    .end local v13           #otherInfo:Landroid/net/NetworkInfo;
    :cond_3
    const/4 v2, 0x0

    .line 5231
    .local v2, causedBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 5232
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 5233
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5234
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v2

    .line 5236
    :cond_4
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5237
    if-eqz v2, :cond_5

    .line 5238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NetTransition Wakelock for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " released because of disconnect"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5242
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v15

    aget-object v15, v15, v14

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 5244
    new-instance v6, Landroid/content/Intent;

    const-string v15, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v6, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5245
    .local v6, intent:Landroid/content/Intent;
    const-string v15, "networkInfo"

    move-object/from16 v0, p1

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5246
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 5247
    const-string v15, "isFailover"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5248
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 5250
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 5251
    const-string v15, "reason"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5253
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 5254
    const-string v15, "extraInfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5257
    :cond_8
    const-string v15, "otherNetwork"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5259
    const-string v15, "inetCondition"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->access$6700(Lcom/android/server/ConnectivityService;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5263
    const/4 v3, 0x1

    .line 5264
    .local v3, doReset:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v15

    aget-object v15, v15, v14

    invoke-interface {v15}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 5265
    .local v9, linkProperties:Landroid/net/LinkProperties;
    if-eqz v9, :cond_b

    .line 5266
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    .line 5267
    .local v12, oldIface:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 5268
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    .local v1, arr$:[Landroid/net/NetworkStateTracker;
    array-length v8, v1

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v8, :cond_b

    aget-object v11, v1, v4

    .line 5269
    .local v11, networkStateTracker:Landroid/net/NetworkStateTracker;
    if-nez v11, :cond_a

    .line 5268
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5236
    .end local v1           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v3           #doReset:Z
    .end local v4           #i$:I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #len$:I
    .end local v9           #linkProperties:Landroid/net/LinkProperties;
    .end local v11           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v12           #oldIface:Ljava/lang/String;
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 5270
    .restart local v1       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v3       #doReset:Z
    .restart local v4       #i$:I
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v8       #len$:I
    .restart local v9       #linkProperties:Landroid/net/LinkProperties;
    .restart local v11       #networkStateTracker:Landroid/net/NetworkStateTracker;
    .restart local v12       #oldIface:Ljava/lang/String;
    :cond_a
    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 5271
    .local v10, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v15

    if-eq v15, v14, :cond_9

    .line 5272
    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 5273
    .local v7, l:Landroid/net/LinkProperties;
    if-eqz v7, :cond_9

    .line 5274
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 5275
    const/4 v3, 0x0

    .line 5283
    .end local v1           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v4           #i$:I
    .end local v7           #l:Landroid/net/LinkProperties;
    .end local v8           #len$:I
    .end local v10           #networkInfo:Landroid/net/NetworkInfo;
    .end local v11           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v12           #oldIface:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivityChange(IZ)V

    .line 5285
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5286
    .local v5, immediateIntent:Landroid/content/Intent;
    const-string v15, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v15, v5}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    .line 5288
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v15, v15, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I
    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->access$7000(Lcom/android/server/ConnectivityService;)I

    move-result v16

    move/from16 v0, v16

    #calls: Lcom/android/server/ConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V
    invoke-static {v15, v6, v0}, Lcom/android/server/ConnectivityService;->access$11900(Lcom/android/server/ConnectivityService;Landroid/content/Intent;I)V

    .line 5291
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v15}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I

    move-result v15

    if-ne v15, v14, :cond_c

    .line 5292
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsReprioritization(I)V

    .line 5295
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v15}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    .line 5296
    const/4 v15, -0x2

    goto/16 :goto_0
.end method

.method protected handleDnsConfigurationChange(I)V
    .locals 11
    .parameter "netType"

    .prologue
    .line 5160
    iget-object v8, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v10}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$11500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " handleDnsConfigurationChange"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5162
    iget-object v8, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v8

    aget-object v3, v8, p1

    .line 5163
    .local v3, nt:Landroid/net/NetworkStateTracker;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v8

    if-nez v8, :cond_0

    .line 5164
    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 5165
    .local v4, p:Landroid/net/LinkProperties;
    if-nez v4, :cond_1

    .line 5191
    .end local v4           #p:Landroid/net/LinkProperties;
    :cond_0
    :goto_0
    return-void

    .line 5166
    .restart local v4       #p:Landroid/net/LinkProperties;
    :cond_1
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    .line 5167
    .local v1, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .line 5168
    .local v0, changed:Z
    iget-object v8, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, v8, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 5169
    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 5170
    .local v2, network:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 5171
    :try_start_0
    iget-object v8, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDnsOverridden:Z
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 5172
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDns(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    .line 5174
    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5189
    .end local v2           #network:Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->bumpDns()V
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)V

    goto :goto_0

    .line 5174
    .restart local v2       #network:Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 5177
    .end local v2           #network:Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v8, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 5183
    :goto_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetRequestersPids:[Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$11600(Lcom/android/server/ConnectivityService;)[Ljava/util/List;

    move-result-object v8

    aget-object v6, v8, p1

    .line 5184
    .local v6, pids:Ljava/util/List;
    const/4 v7, 0x0

    .local v7, y:I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 5185
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 5186
    .local v5, pid:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    #calls: Lcom/android/server/ConnectivityService;->writePidDns(Ljava/util/Collection;I)Z
    invoke-static {v8, v1, v9}, Lcom/android/server/ConnectivityService;->access$11700(Lcom/android/server/ConnectivityService;Ljava/util/Collection;I)Z

    move-result v0

    .line 5184
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5179
    .end local v5           #pid:Ljava/lang/Integer;
    .end local v6           #pids:Ljava/util/List;
    .end local v7           #y:I
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method protected handleDnsReprioritization(I)V
    .locals 3
    .parameter "netType"

    .prologue
    .line 5137
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$11400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handleDnsReprioritization"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5139
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5140
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot prioritize dns for unsupported type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->logw(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$10600(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5152
    :goto_0
    return-void

    .line 5144
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prioritizing Dns for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5146
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5147
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #setter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8002(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;I)I

    .line 5148
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDnsOverridden:Z
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5149
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDns(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->bumpDns()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)V

    .line 5151
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handleInetConditionChange(II)Z
    .locals 7
    .parameter "netType"
    .parameter "condition"

    .prologue
    const/4 v1, 0x1

    .line 5396
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$12300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handleInetConditionChange"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5397
    iget v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    if-eq p1, v2, :cond_1

    .line 5398
    const/4 v1, 0x0

    .line 5429
    :cond_0
    :goto_0
    return v1

    .line 5407
    :cond_1
    iput p2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    .line 5409
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    if-nez v2, :cond_0

    .line 5412
    iget v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_2

    .line 5413
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$12400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "inet_condition_debounce_up_delay"

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5419
    .local v0, delay:I
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    .line 5420
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    const/16 v4, 0x69

    iget v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    iget v6, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 5416
    .end local v0           #delay:I
    :cond_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$12400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "inet_condition_debounce_down_delay"

    const/16 v4, 0xbb8

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delay:I
    goto :goto_1
.end method

.method protected handleInetConditionHoldEnd(II)Z
    .locals 6
    .parameter "netType"
    .parameter "sequence"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5438
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$12500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handleInetConditionHoldEnd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5439
    iget v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    if-eq p1, v3, :cond_0

    .line 5466
    :goto_0
    return v1

    .line 5444
    :cond_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleInetConditionHoldEnd: net="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", condition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", published condition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5448
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    .line 5450
    iget v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    .line 5452
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "handleInetConditionHoldEnd: event hold for obsolete network - ignoring"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    move v1, v2

    .line 5455
    goto :goto_0

    .line 5458
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    iget v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v1, v1, v3

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5459
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5460
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInetConditionHoldEnd: default network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not connected - ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    move v1, v2

    .line 5462
    goto :goto_0

    .line 5464
    :cond_2
    iget v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    .line 5465
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$12600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    move v1, v2

    .line 5466
    goto/16 :goto_0
.end method

.method protected isHigherPriorityNet(I)Z
    .locals 4
    .parameter "type"

    .prologue
    .line 5307
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$12000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isHigherPriorityNet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5308
    const/4 v0, 0x0

    .line 5309
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->isHigherPriorityNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5312
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v2, v2, v3

    #calls: Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$12100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)Z

    .line 5313
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    .line 5314
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v2, v2, v3

    #calls: Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$12100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)Z

    .line 5315
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    .line 5316
    const/4 v0, 0x1

    .line 5320
    :goto_0
    return v0

    .line 5318
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v2, v2, p1

    #calls: Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$12100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)Z

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v12, -0x1

    .line 4852
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v9, v9, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v11}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$9800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".processMessage what="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4854
    const/4 v6, 0x0

    .line 4855
    .local v6, ret:Z
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 4957
    const/4 v6, 0x0

    .line 4959
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v9, v9, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v11}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": no handler for message="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4963
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 4858
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .line 4859
    .local v2, info:Landroid/net/NetworkInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnect(Landroid/net/NetworkInfo;)I

    move-result v4

    .line 4860
    .local v4, r:I
    if-nez v4, :cond_1

    .line 4861
    const/4 v6, 0x1

    goto :goto_0

    .line 4862
    :cond_1
    if-ne v4, v12, :cond_2

    .line 4863
    const/4 v6, 0x0

    goto :goto_0

    .line 4865
    :cond_2
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v9, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$9900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 4866
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    invoke-static {v10}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    move-result-object v10

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 4867
    const/4 v6, 0x1

    .line 4869
    goto :goto_0

    .line 4873
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v4           #r:I
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .line 4874
    .restart local v2       #info:Landroid/net/NetworkInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDisconnect(Landroid/net/NetworkInfo;)I

    move-result v4

    .line 4875
    .restart local v4       #r:I
    if-nez v4, :cond_3

    .line 4876
    const/4 v6, 0x0

    goto :goto_0

    .line 4877
    :cond_3
    if-ne v4, v12, :cond_4

    .line 4878
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v9, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 4879
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    invoke-static {v10}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    move-result-object v10

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 4880
    const/4 v6, 0x1

    goto :goto_0

    .line 4882
    :cond_4
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v10, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    invoke-static {v10}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    move-result-object v10

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 4883
    const/4 v6, 0x1

    .line 4885
    goto :goto_0

    .line 4889
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v4           #r:I
    :pswitch_3
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 4890
    .local v8, type:I
    iget v9, p1, Landroid/os/Message;->arg2:I

    if-ne v9, v1, :cond_5

    .line 4891
    .local v1, doReset:Z
    :goto_1
    invoke-direct {p0, v8, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivityChange(IZ)V

    .line 4892
    const/4 v6, 0x1

    .line 4893
    goto :goto_0

    .line 4890
    .end local v1           #doReset:Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 4897
    .end local v8           #type:I
    :pswitch_4
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 4898
    .restart local v8       #type:I
    invoke-virtual {p0, v8}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsConfigurationChange(I)V

    .line 4899
    const/4 v6, 0x1

    .line 4900
    goto :goto_0

    .line 4906
    .end local v8           #type:I
    :pswitch_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 4907
    .local v3, netType:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 4908
    .local v0, condition:I
    invoke-virtual {p0, v3, v0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleInetConditionChange(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4909
    const/4 v6, 0x1

    goto :goto_0

    .line 4915
    .end local v0           #condition:I
    .end local v3           #netType:I
    :pswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 4916
    .restart local v3       #netType:I
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 4917
    .local v7, sequence:I
    invoke-virtual {p0, v3, v7}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleInetConditionHoldEnd(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4918
    const/4 v6, 0x1

    goto :goto_0

    .line 4924
    .end local v3           #netType:I
    .end local v7           #sequence:I
    :pswitch_7
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v9, v9, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    const-string v10, "enforcing network preference not allowed in dual connectivity state"

    #calls: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4925
    const/4 v6, 0x1

    .line 4926
    goto/16 :goto_0

    .line 4930
    :pswitch_8
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v9}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsConfigurationChange(I)V

    .line 4931
    const/4 v6, 0x1

    .line 4932
    goto/16 :goto_0

    .line 4936
    :pswitch_9
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 4937
    .local v5, reason:Ljava/lang/String;
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 4938
    .restart local v8       #type:I
    invoke-virtual {p0, v8, v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivitySwitch(ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 4939
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v9, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 4940
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->transitionToOther()V

    .line 4942
    :cond_6
    const/4 v6, 0x1

    .line 4943
    goto/16 :goto_0

    .line 4947
    .end local v5           #reason:Ljava/lang/String;
    .end local v8           #type:I
    :pswitch_a
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 4948
    .restart local v8       #type:I
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v9}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I

    move-result v9

    if-eq v8, v9, :cond_7

    .line 4949
    invoke-virtual {p0, v8}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsReprioritization(I)V

    .line 4953
    :goto_2
    const/4 v6, 0x1

    .line 4954
    goto/16 :goto_0

    .line 4951
    :cond_7
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v9, v9, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dns is already prioritized for network "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/server/ConnectivityService;->logw(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/ConnectivityService;->access$10600(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto :goto_2

    .line 4855
    nop

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method protected removeDefaultRoutes(I)V
    .locals 9
    .parameter "netType"

    .prologue
    const/4 v8, 0x1

    .line 5610
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " removeDefaultRoutes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5611
    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    .line 5612
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    const-string v6, "removing default routes for all networks"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5613
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->getActiveDefaults()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5614
    .local v4, type:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v2, v5, v6

    .line 5615
    .local v2, p:Landroid/net/LinkProperties;
    if-eqz v2, :cond_0

    .line 5616
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 5617
    .local v3, r:Landroid/net/RouteInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5618
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v5, v2, v3, v8}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_0

    .line 5622
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Landroid/net/LinkProperties;
    .end local v3           #r:Landroid/net/RouteInfo;
    .end local v4           #type:Ljava/lang/Integer;
    :cond_2
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5623
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removing default routes for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5624
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v5

    aget-object v2, v5, p1

    .line 5625
    .restart local v2       #p:Landroid/net/LinkProperties;
    if-nez v2, :cond_4

    .line 5632
    .end local v2           #p:Landroid/net/LinkProperties;
    :cond_3
    return-void

    .line 5626
    .restart local v2       #p:Landroid/net/LinkProperties;
    :cond_4
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 5627
    .restart local v3       #r:Landroid/net/RouteInfo;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5628
    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v5, v2, v3, v8}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_1
.end method

.method protected runOnEnter()V
    .locals 3

    .prologue
    .line 4971
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " runOnEnter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4973
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$7900(Lcom/android/server/ConnectivityService;)[Lcom/android/server/ConnectivityService$RouteAttributes;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$RouteAttributes;->setMetric(I)V

    .line 4974
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$7900(Lcom/android/server/ConnectivityService;)[Lcom/android/server/ConnectivityService$RouteAttributes;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v0, v0, v1

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$RouteAttributes;->setMetric(I)V

    .line 4975
    iget v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDefaultRouteMetric(I)V

    .line 4976
    return-void
.end method

.method protected sendConnectivitySwitchBroadcast(Ljava/lang/String;)V
    .locals 6
    .parameter "reason"

    .prologue
    .line 4994
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$10900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sendConnectivitySwitchBroadcast"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4996
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    iget v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 4998
    .local v2, newNetInfo:Landroid/net/NetworkInfo;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4999
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "networkInfo"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5000
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 5001
    const-string v3, "reason"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5003
    :cond_0
    const-string v3, "isFailover"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5004
    const-string v3, "inetCondition"

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$6700(Lcom/android/server/ConnectivityService;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5007
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5008
    .local v0, immediateIntent:Landroid/content/Intent;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5009
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    .line 5010
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    .line 5011
    return-void
.end method

.method protected abstract transitionToOther()V
.end method

.method protected updateDefaultRouteMetric(I)V
    .locals 6
    .parameter "type"

    .prologue
    .line 5594
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " updateDefaultRouteMetric"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5595
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v3

    aget-object v1, v3, p1

    .line 5596
    .local v1, lp:Landroid/net/LinkProperties;
    if-nez v1, :cond_1

    .line 5602
    :cond_0
    return-void

    .line 5598
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 5599
    .local v2, r:Landroid/net/RouteInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5600
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mRouteAttributes:[Lcom/android/server/ConnectivityService$RouteAttributes;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$7900(Lcom/android/server/ConnectivityService;)[Lcom/android/server/ConnectivityService$RouteAttributes;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getMetric()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_0
.end method

.method protected updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZLcom/android/server/ConnectivityService$RouteAttributes;)Z
    .locals 22
    .parameter "newLp"
    .parameter "curLp"
    .parameter "isLinkDefault"
    .parameter "ra"

    .prologue
    .line 5705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    #calls: Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v20 .. v20}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->access$13500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " updateRoutes"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 5707
    const/16 v17, 0x0

    .line 5708
    .local v17, routesToAdd:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    new-instance v4, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v4}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 5709
    .local v4, dnsDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v15, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v15}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 5710
    .local v15, routeDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    new-instance v11, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v11}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 5711
    .local v11, localAddrDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    if-eqz p2, :cond_5

    .line 5713
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v15

    .line 5714
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v4

    .line 5715
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v11

    .line 5722
    :cond_0
    :goto_0
    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-nez v18, :cond_1

    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-eqz v18, :cond_6

    :cond_1
    const/16 v16, 0x1

    .line 5725
    .local v16, routesChanged:Z
    :goto_1
    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 5726
    .local v14, r:Landroid/net/RouteInfo;
    if-nez p3, :cond_3

    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-nez v18, :cond_4

    .line 5727
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    #calls: Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v0, v1, v14, v2}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 5729
    :cond_4
    if-nez p3, :cond_2

    .line 5731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    #calls: Lcom/android/server/ConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v0, v1, v14, v2}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_2

    .line 5716
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v14           #r:Landroid/net/RouteInfo;
    .end local v16           #routesChanged:Z
    :cond_5
    if-eqz p1, :cond_0

    .line 5717
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 5718
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 5719
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_0

    .line 5722
    :cond_6
    const/16 v16, 0x0

    goto :goto_1

    .line 5735
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v16       #routesChanged:Z
    :cond_7
    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 5736
    .restart local v14       #r:Landroid/net/RouteInfo;
    if-nez p3, :cond_9

    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-nez v18, :cond_a

    .line 5738
    :cond_9
    const/16 v18, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getMetric()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_3

    .line 5741
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    #calls: Lcom/android/server/ConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v0, v1, v14, v2}, Lcom/android/server/ConnectivityService;->access$6500(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 5745
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    .line 5746
    .local v9, ifaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/ConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$13400(Lcom/android/server/ConnectivityService;)Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 5749
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v9, v14}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 5750
    :catch_0
    move-exception v18

    goto :goto_3

    .line 5758
    .end local v9           #ifaceName:Ljava/lang/String;
    .end local v14           #r:Landroid/net/RouteInfo;
    :cond_b
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-eqz v18, :cond_c

    .line 5759
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/LinkAddress;

    .line 5762
    .local v10, la:Landroid/net/LinkAddress;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v18

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v19

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v20

    invoke-interface/range {v18 .. v20}, Landroid/os/INetworkManagementService;->delSrcRoute([BI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 5763
    :catch_1
    move-exception v5

    .line 5764
    .local v5, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception while trying to remove src route: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto :goto_4

    .line 5769
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #la:Landroid/net/LinkAddress;
    :cond_c
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-eqz v18, :cond_11

    .line 5770
    const/4 v6, 0x0

    .local v6, gw4Addr:Ljava/net/InetAddress;
    const/4 v7, 0x0

    .line 5771
    .local v7, gw6Addr:Ljava/net/InetAddress;
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    .line 5772
    .restart local v9       #ifaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_11

    .line 5773
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 5774
    .restart local v14       #r:Landroid/net/RouteInfo;
    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 5775
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 5776
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_5

    .line 5778
    :cond_e
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    goto :goto_5

    .line 5781
    .end local v14           #r:Landroid/net/RouteInfo;
    :cond_f
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/LinkAddress;

    .line 5783
    .restart local v10       #la:Landroid/net/LinkAddress;
    :try_start_2
    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 5784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v18

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v19

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v9, v1, v2, v3}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 5790
    :catch_2
    move-exception v5

    .line 5792
    .restart local v5       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception while trying to add src route: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto :goto_6

    .line 5787
    .end local v5           #e:Ljava/lang/Exception;
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v18

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v19

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/ConnectivityService$RouteAttributes;->getTableId()I

    move-result v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v9, v1, v2, v3}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    .line 5799
    .end local v6           #gw4Addr:Ljava/net/InetAddress;
    .end local v7           #gw6Addr:Ljava/net/InetAddress;
    .end local v9           #ifaceName:Ljava/lang/String;
    .end local v10           #la:Landroid/net/LinkAddress;
    :cond_11
    if-eqz v16, :cond_13

    .line 5801
    if-eqz p2, :cond_12

    .line 5802
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 5803
    .local v13, oldDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    invoke-static {v0, v1, v13}, Lcom/android/server/ConnectivityService;->access$13600(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_7

    .line 5806
    .end local v13           #oldDns:Ljava/net/InetAddress;
    :cond_12
    if-eqz p1, :cond_15

    .line 5807
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/InetAddress;

    .line 5808
    .local v12, newDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    #calls: Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    invoke-static {v0, v1, v12}, Lcom/android/server/ConnectivityService;->access$13700(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_8

    .line 5813
    .end local v12           #newDns:Ljava/net/InetAddress;
    :cond_13
    iget-object v0, v4, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 5814
    .restart local v13       #oldDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/server/ConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    invoke-static {v0, v1, v13}, Lcom/android/server/ConnectivityService;->access$13600(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_9

    .line 5816
    .end local v13           #oldDns:Ljava/net/InetAddress;
    :cond_14
    iget-object v0, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/InetAddress;

    .line 5817
    .restart local v12       #newDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    #calls: Lcom/android/server/ConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    invoke-static {v0, v1, v12}, Lcom/android/server/ConnectivityService;->access$13700(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_a

    .line 5820
    .end local v12           #newDns:Ljava/net/InetAddress;
    :cond_15
    return v16
.end method
