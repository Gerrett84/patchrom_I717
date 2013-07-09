.class Lcom/samsung/wfd/WfdService$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WfdService;


# direct methods
.method private constructor <init>(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WifiStateReceiver;-><init>(Lcom/samsung/wfd/WfdService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, action:Ljava/lang/String;
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent recieved "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    const-string v3, "wifi_p2p_state"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const-string v3, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$100(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 257
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v3, v7}, Lcom/samsung/wfd/WfdService;->access$200(Lcom/samsung/wfd/WfdService;I)V

    goto :goto_0

    .line 259
    :cond_2
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recvd WFD session established intent in wrong state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$100(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_3
    const-string v3, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 262
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$100(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 263
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v3, v6}, Lcom/samsung/wfd/WfdService;->access$200(Lcom/samsung/wfd/WfdService;I)V

    goto :goto_0

    .line 265
    :cond_4
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recvd WFD session terminated intent in wrong state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$100(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_5
    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 268
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 269
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 271
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 272
    const-string v3, "WfdService"

    const-string v4, "wifi P2P Connected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$100(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, v8, :cond_6

    .line 278
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v3, v6}, Lcom/samsung/wfd/WfdService;->access$200(Lcom/samsung/wfd/WfdService;I)V

    .line 280
    const-string v3, "WfdService"

    const-string v4, "send wfd start msg"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v3

    const v4, 0x2206b

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 283
    :cond_6
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recvd Wifi P2P connected intent in wrong state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$100(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 287
    :cond_7
    const-string v3, "WfdService"

    const-string v4, "wifi P2P Disconnected"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$100(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v6, :cond_8

    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$100(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 291
    :cond_8
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v3, v8}, Lcom/samsung/wfd/WfdService;->access$200(Lcom/samsung/wfd/WfdService;I)V

    goto/16 :goto_0

    .line 293
    :cond_9
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recvd Wifi P2P disconnected intent in wrong state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$100(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 296
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_a
    const-string v3, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    const-string v3, "res"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 298
    .local v2, resolution:I
    const-string v3, "WfdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolution is being set by the application. value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mResolutionBitMask:I
    invoke-static {v3, v2}, Lcom/samsung/wfd/WfdService;->access$502(Lcom/samsung/wfd/WfdService;I)I

    goto/16 :goto_0
.end method
