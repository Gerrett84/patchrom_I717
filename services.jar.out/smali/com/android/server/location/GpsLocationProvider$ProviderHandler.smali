.class final Lcom/android/server/location/GpsLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 2522
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2522
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2525
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2526
    .local v0, message:I
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gps MessageHandler. msg.what "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msg.arg1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msg.arg2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    packed-switch v0, :pswitch_data_0

    .line 2602
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3400(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    monitor-enter v3

    .line 2603
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    shl-int/2addr v2, v0

    xor-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$3572(Lcom/android/server/location/GpsLocationProvider;I)I

    .line 2604
    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 2605
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3610(Lcom/android/server/location/GpsLocationProvider;)I

    .line 2607
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3600(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-nez v1, :cond_3

    .line 2608
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$3400(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2610
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2611
    return-void

    .line 2530
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_4

    .line 2531
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleEnable(I)V
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;I)V

    goto :goto_0

    .line 2533
    :cond_4
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleDisable(I)V
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider;->access$1500(Lcom/android/server/location/GpsLocationProvider;I)V

    goto :goto_0

    .line 2537
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_6

    .line 2538
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_5

    move v1, v2

    :cond_5
    #calls: Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingGps(Z)V
    invoke-static {v3, v1}, Lcom/android/server/location/GpsLocationProvider;->access$1600(Lcom/android/server/location/GpsLocationProvider;Z)V

    goto :goto_0

    .line 2540
    :cond_6
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_7

    move v1, v2

    :cond_7
    #calls: Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingHybrid(Z)V
    invoke-static {v3, v1}, Lcom/android/server/location/GpsLocationProvider;->access$1700(Lcom/android/server/location/GpsLocationProvider;Z)V

    goto :goto_0

    .line 2544
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_8

    .line 2545
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShotGps()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1800(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2547
    :cond_8
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShotHybrid()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1900(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2551
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    invoke-static {v3, v4, v1}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V

    goto :goto_0

    .line 2554
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2100(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    move-result-object v1

    sget-object v3, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Downloading:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    if-eq v1, v3, :cond_0

    .line 2555
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/location/GpsLocationProvider$ProviderHandler$1;

    invoke-direct {v3, p0}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler$1;-><init>(Lcom/android/server/location/GpsLocationProvider$ProviderHandler;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2563
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    move-result-object v1

    sget-object v3, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Downloading:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    if-eq v1, v3, :cond_0

    .line 2564
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2565
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/location/GpsLocationProvider$ProviderHandler$2;

    invoke-direct {v3, p0}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler$2;-><init>(Lcom/android/server/location/GpsLocationProvider$ProviderHandler;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2574
    :pswitch_6
    const-string v1, "LGT"

    const-string v3, "ATT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2575
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x10406f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2579
    :pswitch_7
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V
    invoke-static {v3, v1}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V

    goto/16 :goto_0

    .line 2582
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleAddListener(I)V
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider;->access$2800(Lcom/android/server/location/GpsLocationProvider;I)V

    goto/16 :goto_0

    .line 2585
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleRemoveListener(I)V
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;I)V

    goto/16 :goto_0

    .line 2588
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextRequest(II)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;II)V

    goto/16 :goto_0

    .line 2591
    :pswitch_b
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextUpdate(ILandroid/os/Bundle;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$3100(Lcom/android/server/location/GpsLocationProvider;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2594
    :pswitch_c
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleNativeNetworkLocationRequest(II)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;II)V

    goto/16 :goto_0

    .line 2597
    :pswitch_d
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    #calls: Lcom/android/server/location/GpsLocationProvider;->handleNetworkLocationUpdate(Landroid/location/Location;)V
    invoke-static {v3, v1}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V

    goto/16 :goto_0

    .line 2610
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2528
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_6
    .end packed-switch
.end method
