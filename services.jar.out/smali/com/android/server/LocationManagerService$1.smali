.class Lcom/android/server/LocationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2238
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2241
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2242
    .local v3, action:Ljava/lang/String;
    const-string v20, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 2243
    .local v14, queryRestart:Z
    if-nez v14, :cond_0

    const-string v20, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string v20, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string v20, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 2247
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 2248
    const/16 v17, 0x0

    .line 2249
    .local v17, uidList:[I
    :try_start_0
    const-string v20, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 2250
    const-string v20, "android.intent.extra.changed_uid_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v17

    .line 2254
    :goto_0
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 2255
    :cond_1
    monitor-exit v21

    .line 2312
    .end local v17           #uidList:[I
    :cond_2
    :goto_1
    return-void

    .line 2252
    .restart local v17       #uidList:[I
    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const-string v22, "android.intent.extra.UID"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    aput v22, v18, v20

    .end local v17           #uidList:[I
    .local v18, uidList:[I
    move-object/from16 v17, v18

    .end local v18           #uidList:[I
    .restart local v17       #uidList:[I
    goto :goto_0

    .line 2257
    :cond_4
    move-object/from16 v4, v17

    .local v4, arr$:[I
    array-length v11, v4

    .local v11, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v7           #i$:I
    .local v8, i$:I
    :goto_2
    if-ge v8, v11, :cond_c

    aget v16, v4, v8

    .line 2258
    .local v16, uid:I
    if-ltz v16, :cond_b

    .line 2259
    const/4 v15, 0x0

    .line 2260
    .local v15, removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v8           #i$:I
    .local v7, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2261
    .local v6, i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v10, v20, -0x1

    .local v10, j:I
    :goto_3
    if-ltz v10, :cond_5

    .line 2262
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2263
    .local v19, ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/LocationManagerService$Receiver;->isPendingIntent()Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 2264
    if-eqz v14, :cond_6

    .line 2265
    const/16 v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$1;->setResultCode(I)V

    .line 2266
    monitor-exit v21

    goto :goto_1

    .line 2290
    .end local v4           #arr$:[I
    .end local v6           #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #j:I
    .end local v11           #len$:I
    .end local v15           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v16           #uid:I
    .end local v19           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 2268
    .restart local v4       #arr$:[I
    .restart local v6       #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #j:I
    .restart local v11       #len$:I
    .restart local v15       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v16       #uid:I
    .restart local v19       #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_6
    if-nez v15, :cond_7

    .line 2269
    :try_start_1
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2271
    .restart local v15       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_7
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 2272
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2261
    :cond_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 2277
    .end local v6           #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v10           #j:I
    .end local v19           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_9
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;
    invoke-static/range {v20 .. v20}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeoFencerBase;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/location/GeoFencerBase;->hasCaller(I)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 2278
    const/16 v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$1;->setResultCode(I)V

    .line 2279
    monitor-exit v21

    goto/16 :goto_1

    .line 2281
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/LocationManagerService;->mGeoFencer:Lcom/android/server/location/GeoFencerBase;
    invoke-static/range {v20 .. v20}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeoFencerBase;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/location/GeoFencerBase;->removeCaller(I)V

    .line 2283
    if-eqz v15, :cond_b

    .line 2284
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v5, v20, -0x1

    .local v5, i:I
    :goto_4
    if-ltz v5, :cond_b

    .line 2285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    #calls: Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2284
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 2257
    .end local v5           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v15           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_b
    add-int/lit8 v7, v8, 0x1

    .local v7, i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto/16 :goto_2

    .line 2290
    .end local v16           #uid:I
    :cond_c
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2291
    .end local v4           #arr$:[I
    .end local v8           #i$:I
    .end local v11           #len$:I
    .end local v17           #uidList:[I
    :cond_d
    const-string v20, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 2292
    const-string v20, "noConnectivity"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 2294
    .local v12, noConnectivity:Z
    if-nez v12, :cond_f

    .line 2295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/LocationManagerService;->access$2602(Lcom/android/server/LocationManagerService;I)I

    .line 2299
    :goto_5
    const-string v20, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkInfo;

    .line 2303
    .local v9, info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 2304
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v5, v20, -0x1

    .restart local v5       #i:I
    :goto_6
    if-ltz v5, :cond_10

    .line 2305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/LocationProviderInterface;

    .line 2306
    .local v13, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v13}, Lcom/android/server/location/LocationProviderInterface;->requiresNetwork()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 2307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v13, v0, v9}, Lcom/android/server/location/LocationProviderInterface;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2304
    :cond_e
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 2297
    .end local v5           #i:I
    .end local v9           #info:Landroid/net/NetworkInfo;
    .end local v13           #provider:Lcom/android/server/location/LocationProviderInterface;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/LocationManagerService;->access$2602(Lcom/android/server/LocationManagerService;I)I

    goto :goto_5

    .line 2310
    .restart local v5       #i:I
    .restart local v9       #info:Landroid/net/NetworkInfo;
    :cond_10
    :try_start_3
    monitor-exit v21

    goto/16 :goto_1

    .end local v5           #i:I
    :catchall_1
    move-exception v20

    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v20
.end method
