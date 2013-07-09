.class final Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;
.super Lcom/android/internal/util/StateMachine;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectivityServiceHSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;,
        Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;,
        Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$MobileDefaultState;,
        Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;,
        Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcActiveState;,
        Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;,
        Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;,
        Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    }
.end annotation


# static fields
.field static final HSM_EVENT_CONNECTIVITY_SWITCH:I = 0x1393

.field static final HSM_EVENT_ENFORCE_PREFERENCE:I = 0x1390

.field static final HSM_EVENT_REPRIORITIZE_DNS:I = 0x1392

.field static final HSM_EVENT_RESTORE_DNS:I = 0x1391

.field static final HSM_HANDLE_CONNECT:I = 0x1389

.field static final HSM_HANDLE_CONNECTION_FAILURE:I = 0x138d

.field static final HSM_HANDLE_CONNECTIVITY_CHANGE:I = 0x138b

.field static final HSM_HANDLE_DISCONNECT:I = 0x138a

.field static final HSM_HANDLE_DNS_CONFIGURATION_CHANGE:I = 0x138c

.field static final HSM_HANDLE_INET_CONDITION_CHANGE:I = 0x138e

.field static final HSM_HANDLE_INET_CONDITION_HOLD_END:I = 0x138f

.field static final HSM_MSG_MIN:I = 0x1388


# instance fields
.field private mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

.field private mDefaultConnectivityState:Lcom/android/internal/util/State;

.field private mFmcActiveState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcActiveState;

.field private mFmcInitialState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;

.field private mMobileDefaultState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

.field private mSmartConnectivityState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

.field private mWifiDefaultState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

.field private myDefaultDnsNet:I

.field private myInitialState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "looper"

    .prologue
    const/4 v2, 0x0

    .line 4292
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/ConnectivityService;

    .line 4293
    invoke-direct {p0, p3, p4}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 4295
    new-instance v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;-><init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    .line 4297
    new-instance v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;-><init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mDefaultConnectivityState:Lcom/android/internal/util/State;

    .line 4298
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mDefaultConnectivityState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->addState(Lcom/android/internal/util/State;)V

    .line 4299
    sget v0, Landroid/net/FeatureConfig;->FMC:I

    invoke-static {v0}, Landroid/net/FeatureConfig;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4300
    new-instance v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;-><init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/server/ConnectivityService$1;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mFmcInitialState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;

    .line 4301
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mFmcInitialState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mDefaultConnectivityState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 4302
    new-instance v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcActiveState;

    invoke-direct {v0, p0, v2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcActiveState;-><init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/server/ConnectivityService$1;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mFmcActiveState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcActiveState;

    .line 4303
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mFmcActiveState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcActiveState;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mFmcInitialState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 4304
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mFmcInitialState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;

    iput-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myInitialState:Lcom/android/internal/util/State;

    .line 4319
    :goto_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 4320
    return-void

    .line 4305
    :cond_0
    sget v0, Landroid/net/FeatureConfig;->WQE:I

    invoke-static {v0}, Landroid/net/FeatureConfig;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4307
    new-instance v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;-><init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    .line 4308
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mDefaultConnectivityState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 4309
    new-instance v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$WifiDefaultState;-><init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mWifiDefaultState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    .line 4310
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mWifiDefaultState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 4311
    new-instance v0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$MobileDefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$MobileDefaultState;-><init>(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mMobileDefaultState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    .line 4312
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mMobileDefaultState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 4313
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    iput-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myInitialState:Lcom/android/internal/util/State;

    goto :goto_0

    .line 4316
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mDefaultConnectivityState:Lcom/android/internal/util/State;

    iput-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myInitialState:Lcom/android/internal/util/State;

    goto :goto_0
.end method

.method static synthetic access$10000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 4180
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 4180
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 4180
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 4180
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcActiveState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mFmcActiveState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcActiveState;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mFmcInitialState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$FmcInitialState;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    iget v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I

    return v0
.end method

.method static synthetic access$8002(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    iput p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I

    return p1
.end method

.method static synthetic access$8100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mWifiDefaultState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->mMobileDefaultState:Lcom/android/server/ConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4180
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4180
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public sendMessageImmediate(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 4214
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    .line 4215
    return-void
.end method
