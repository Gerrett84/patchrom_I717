.class Lcom/android/internal/telephony/DataConnectionTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 456
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 458
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v4, v3, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 460
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->stopNetStatPoll()V

    .line 461
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->startNetStatPoll()V

    .line 462
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->restartDataStallAlarm()V

    .line 465
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string/jumbo v5, "onScreenStateChanged Called"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 466
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->onScreenStateChanged(Z)V

    .line 580
    :cond_0
    :goto_0
    const-string v3, "LGT"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 581
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    #calls: Lcom/android/internal/telephony/DataConnectionTracker;->getAirplaneMode()Z
    invoke-static {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->access$000(Lcom/android/internal/telephony/DataConnectionTracker;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v3, v3, Lcom/android/internal/telephony/DataConnectionTracker;->mWaitingForUserSelection:Z

    if-nez v3, :cond_1

    .line 583
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v5, "DATA : air plane mode is disabled "

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 584
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v4, v3, Lcom/android/internal/telephony/DataConnectionTracker;->mNeedRoamingDataSelctionPopup:Z

    .line 588
    :cond_1
    return-void

    .line 468
    :cond_2
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 469
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v3, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 470
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->stopNetStatPoll()V

    .line 471
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->startNetStatPoll()V

    .line 472
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->restartDataStallAlarm()V

    goto :goto_0

    .line 473
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentReconnectAlarm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 474
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reconnect alarm. Previous state was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 475
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 476
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentDataStallAlarm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 477
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 478
    :cond_5
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 479
    const-string/jumbo v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 481
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    :cond_6
    iput-boolean v3, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    goto/16 :goto_0

    .line 482
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    :cond_7
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 483
    const-string/jumbo v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    move v1, v4

    .line 486
    .local v1, enabled:Z
    :goto_1
    if-nez v1, :cond_0

    .line 489
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v3, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    goto/16 :goto_0

    .end local v1           #enabled:Z
    :cond_8
    move v1, v3

    .line 483
    goto :goto_1

    .line 491
    :cond_9
    const-string v3, "com.android.internal.telephony.dataconnectiontracker.intent_set_fail_data_setup_counter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 492
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v5, "fail_data_setup_counter"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    .line 493
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v5, "fail_data_setup_fail_cause"

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 496
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set mFailDataSetupCounter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v6, v6, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mFailDataSetupFailCause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 500
    :cond_a
    const-string v3, "android.intent.action.FD_SETTING_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 501
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v5, "FD_PREF_CHANGED - cleanUpAllConnections()"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 502
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v5, "fdSettingChanged"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
