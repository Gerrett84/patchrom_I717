.class Lcom/samsung/wfd/WfdService$WfdStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;,
        Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;,
        Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

.field private mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

.field private mWfdNotSupportedState:Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

.field final synthetic this$0:Lcom/samsung/wfd/WfdService;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "wfdSupported"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    .line 385
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 380
    new-instance v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    .line 381
    new-instance v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mWfdNotSupportedState:Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

    .line 382
    new-instance v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    .line 387
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 388
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 390
    if-eqz p3, :cond_0

    .line 391
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mWfdNotSupportedState:Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/samsung/wfd/WfdService$WfdStateMachine;Landroid/os/Message;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 378
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->enableWiFiP2P()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendWfdPickerStartBroadCast()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 622
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 624
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 626
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdService;->access$1502(Lcom/samsung/wfd/WfdService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 628
    :cond_0
    return-void
.end method

.method private disableWiFiP2P()V
    .locals 1

    .prologue
    .line 665
    const-string v0, "disabling WiFi P2P connection"

    invoke-direct {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    :cond_0
    return-void
.end method

.method private enableWiFiP2P()V
    .locals 1

    .prologue
    .line 658
    const-string v0, "disabling WiFi P2P connection"

    invoke-direct {p0, v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    :cond_0
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 586
    const-string v0, "WfdService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 590
    const-string v0, "WfdService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .parameter "srcMsg"

    .prologue
    .line 580
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 581
    .local v0, msg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 582
    return-object v0
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .parameter "msg"
    .parameter "what"

    .prologue
    .line 555
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 559
    :goto_0
    return-void

    .line 556
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 557
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 558
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 562
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 567
    :goto_0
    return-void

    .line 563
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 564
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 565
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 566
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 570
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 575
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 572
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 573
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 574
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendWfdPickerStartBroadCast()V
    .locals 2

    .prologue
    .line 649
    const-string v1, "sendWfdPickerStartBroadCast: "

    invoke-direct {p0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 653
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 654
    return-void
.end method

.method private sendWfdSessionEstablishedBroadcast()V
    .locals 3

    .prologue
    .line 631
    const-string v1, "wlan.wfd.status"

    const-string v2, "connected"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 634
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 635
    return-void
.end method

.method private sendWfdSessionTerminatedBroadcast()V
    .locals 3

    .prologue
    .line 638
    const-string v1, "wlan.wfd.status"

    const-string v2, "disconnected"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 641
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 642
    return-void
.end method

.method private showNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 594
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 596
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, intent:Landroid/content/Intent;
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 603
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 605
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 606
    .local v4, r:Landroid/content/res/Resources;
    const v6, 0x1040521

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 607
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x1040522

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 609
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    #setter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6, v7}, Lcom/samsung/wfd/WfdService;->access$1502(Lcom/samsung/wfd/WfdService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 610
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 612
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    const v7, 0x1080723

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 613
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 614
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 615
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 616
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 618
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v7}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public syncGetWfdState()I
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$100(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
