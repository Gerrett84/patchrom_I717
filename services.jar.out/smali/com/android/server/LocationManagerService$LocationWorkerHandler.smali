.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2183
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2183
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 2189
    :try_start_0
    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_0

    .line 2190
    iget-object v9, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/LocationManagerService;->mSendLocationBroadcast:Z

    .line 2193
    :cond_0
    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v9, v6, :cond_6

    .line 2196
    iget-object v9, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2197
    :try_start_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    .line 2198
    .local v2, location:Landroid/location/Location;
    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    .line 2199
    .local v7, provider:Ljava/lang/String;
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v6, :cond_2

    .line 2201
    .local v6, passive:Z
    :goto_0
    if-nez v6, :cond_3

    .line 2203
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 2204
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 2206
    .local v3, p:Lcom/android/server/location/LocationProviderInterface;
    const-string v8, "hybrid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2208
    invoke-interface {v3, v2}, Lcom/android/server/location/LocationProviderInterface;->updateLocation(Landroid/location/Location;)V

    .line 2203
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v3           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v6           #passive:Z
    :cond_2
    move v6, v8

    .line 2199
    goto :goto_0

    .line 2213
    .restart local v6       #passive:Z
    :cond_3
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z
    invoke-static {v8, v7}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2214
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Z)V
    invoke-static {v8, v2, v6}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    .line 2216
    :cond_4
    monitor-exit v9

    .line 2235
    .end local v2           #location:Landroid/location/Location;
    .end local v6           #passive:Z
    .end local v7           #provider:Ljava/lang/String;
    :cond_5
    :goto_2
    return-void

    .line 2216
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2231
    :catch_0
    move-exception v0

    .line 2233
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "LocationManagerService"

    const-string v9, "Exception in LocationWorkerHandler.handleMessage:"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2217
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_3
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 2218
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 2219
    .local v5, packageName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2222
    .local v4, packageDot:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v8, v8, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2224
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v8, v8, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v8}, Lcom/android/server/location/LocationProviderProxy;->reconnect()V

    .line 2226
    :cond_7
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2500(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2228
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/location/GeocoderProxy;->reconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
