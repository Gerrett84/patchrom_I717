.class public Lcom/samsung/wfd/WfdManager;
.super Ljava/lang/Object;
.source "WfdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdManager$Channel;,
        Lcom/samsung/wfd/WfdManager$ActionListener;,
        Lcom/samsung/wfd/WfdManager$ChannelListener;
    }
.end annotation


# static fields
.field public static final ACTION_LAUNCH_WFD_PICKER_DLG:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

.field public static final ACTION_LAUNCH_WFD_POPUP:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_POPUP"

.field public static final ACTION_LAUNCH_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_UPDATE"

.field public static final ACTION_PICK_WFD_NETWORK:Ljava/lang/String; = "com.samsung.wfd.PICK_WFD_NETWORK"

.field public static final ACTION_RESULT_WFD_UPDATE:Ljava/lang/String; = "com.samsung.wfd.RESULT_WFD_UPDATE"

.field public static final ACTION_SECURE_END:Ljava/lang/String; = "android.intent.action.SECURE_END"

.field public static final ACTION_SECURE_END_DONE:Ljava/lang/String; = "android.intent.action.SECURE_END_DONE"

.field public static final ACTION_SECURE_START:Ljava/lang/String; = "android.intent.action.SECURE_START"

.field public static final ACTION_SECURE_START_DONE:Ljava/lang/String; = "android.intent.action.SECURE_START_DONE"

.field public static final ACTION_WIFI_DISPLAY_BITRATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_BITRATE"

.field public static final ACTION_WIFI_DISPLAY_BUFFERING_DO:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_BUFFERING_DO"

.field public static final ACTION_WIFI_DISPLAY_BUFFERING_DONE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_BUFFERING_DONE"

.field public static final ACTION_WIFI_DISPLAY_RESOLUTION:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RESOLUTION"

.field public static final ACTION_WIFI_DISPLAY_TCP_PLAYBACK_CONTROL:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_TCP_PLAYBACK_CONTROL"

.field public static final ACTION_WIFI_DISPLAY_TCP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

.field public static final ACTION_WIFI_DISPLAY_UDP_TRANSPORT:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

.field public static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_VIDEO"

.field private static final BASE:I = 0x22000

.field public static final BUSY:I = 0x2

.field public static final DISABLE_WFD:I = 0x22068

.field public static final DISABLE_WFD_FAILED:I = 0x22069

.field public static final DISABLE_WFD_SUCCEEDED:I = 0x2206a

.field public static final ENABLE_WFD:I = 0x22065

.field public static final ENABLE_WFD_DIALOG:I = 0x2206f

.field public static final ENABLE_WFD_FAILED:I = 0x22066

.field public static final ENABLE_WFD_SUCCEEDED:I = 0x22067

.field public static final ERROR:I = 0x0

.field public static final EXTRA_CAUSE_INFO:Ljava/lang/String; = "cause"

.field public static final EXTRA_CURRENT_RESOLUTION_INFO:Ljava/lang/String; = "curRes"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_RESOLUTION_INFO:Ljava/lang/String; = "resBitMask"

.field public static final EXTRA_RESULT_RET:Ljava/lang/String; = "result"

.field public static final EXTRA_SAMPLE_COUNT:Ljava/lang/String; = "count"

.field public static final EXTRA_STATE_INFO:Ljava/lang/String; = "state"

.field public static final EXTRA_UPDATE_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_WFD_DEVICE:Ljava/lang/String; = "wfdPeerDeviceDescriptor"

.field public static final EXTRA_WFD_STATE:Ljava/lang/String; = "wfd_state"

.field public static final P2P_CONNECTION_ESTABLISHED:Ljava/lang/String; = "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

.field public static final P2P_CONNECTION_TERMINATED:Ljava/lang/String; = "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

.field public static final PAUSE_RTSP:I = 0x2206e

.field public static final RESUME_RTSP:I = 0x2206d

.field public static final START_RTSP:I = 0x2206b

.field public static final STOP_RTSP:I = 0x2206c

.field private static final TAG:Ljava/lang/String; = "WfdManager"

.field public static final WFD_SERVICE_STARTED:Ljava/lang/String; = "com.samsung.wfd.WFD_SERVICE_STARTED"

.field public static final WFD_SESSION_ENABLED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_ENABLED"

.field public static final WFD_SESSION_ESTABLISHED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

.field public static final WFD_SESSION_ESTABLISHING:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_ESTABLISHING"

.field public static final WFD_SESSION_PAUSE:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_PAUSE"

.field public static final WFD_SESSION_RESUME:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_RESUME"

.field public static final WFD_SESSION_START:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_START"

.field public static final WFD_SESSION_STOP:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_STOP"

.field public static final WFD_SESSION_STOPPED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_STOPPED"

.field public static final WFD_SESSION_TEARDOWN:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_TEARDOWN"

.field public static final WFD_SESSION_TERMINATED:Ljava/lang/String; = "com.samsung.wfd.WFD_SESSION_TERMINATED"

.field public static final WFD_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.samsung.wfd.STATE_CHANGED"

.field public static final WFD_STATE_DISABLED:I = 0x1

.field public static final WFD_STATE_ENABLED:I = 0x2

.field public static final WFD_STATE_P2P_CONNECTED:I = 0x3

.field public static final WFD_STATE_SESSION_ESTABLISHED:I = 0x5

.field public static final WFD_STATE_SESSION_STARTING:I = 0x4

.field public static final WFD_STATE_SESSION_TEARDOWNING:I = 0x0

.field public static final WFD_STATE_UNKNOWN:I = -0x1

.field public static final WFD_TEARDOWN_FOR_AUDIO_OUT:Ljava/lang/String; = "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

.field public static final WFD_UNSUPPORTED:I = 0x1

.field public static final WIFIDISPLAY_CONTROL_FROM_BROKER:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_CONTROL_FROM_BROKER"

.field public static final WIFIDISPLAY_CONTROL_FROM_SERVICE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

.field public static final WIFIDISPLAY_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final WIFIDISPLAY_NOTI_CONNECTION_MODE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

.field public static final WIFIDISPLAY_NOTI_ERROR_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

.field public static final WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

.field public static final WIFIDISPLAY_PARAM_CHANGED_NOTIFICATION:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

.field public static final WIFIDISPLAY_RESOLUTION_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_REQ"

.field public static final WIFIDISPLAY_RESOLUTION_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

.field public static final WIFIDISPLAY_SESSION_INFO:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_RES"

.field public static final WIFIDISPLAY_SESSION_STATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field public static final WIFIDISPLAY_UPDATE_INPUT_FROM_APP:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

.field public static final WIFIDISPLAY_UPDATE_URL_FROM_NATIVE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

.field public static final WIFIDISPLAY_WEAK_NETWORK:Ljava/lang/String; = "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"


# instance fields
.field mService:Lcom/samsung/wfd/IWfdManager;


# direct methods
.method public constructor <init>(Lcom/samsung/wfd/IWfdManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 326
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    .line 328
    return-void
.end method


# virtual methods
.method public WFDGetStatus()Z
    .locals 2

    .prologue
    .line 523
    const-string v0, "WfdManager"

    const-string v1, "NOT SUPPORT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public WFDGetSubtitleStatus()Z
    .locals 2

    .prologue
    .line 528
    const-string v0, "WfdManager"

    const-string v1, "NOT SUPPORT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public WFDGetSuspendStatus()Z
    .locals 2

    .prologue
    .line 543
    const-string v0, "WfdManager"

    const-string v1, "NOT SUPPORT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public WFDPostSubtitle(Ljava/lang/String;I)Z
    .locals 2
    .parameter "subtitle"
    .parameter "nFontSize"

    .prologue
    .line 538
    const-string v0, "WfdManager"

    const-string v1, "NOT SUPPORT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public WFDSetSubtitleStatus(Z)Z
    .locals 2
    .parameter "bStatus"

    .prologue
    .line 533
    const-string v0, "WfdManager"

    const-string v1, "NOT SUPPORT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public disableWfd(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 465
    if-nez p1, :cond_0

    .line 467
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public enableWfd(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 457
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x22065

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 558
    :goto_0
    return-object v1

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    .locals 2

    .prologue
    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 493
    :goto_0
    return-object v1

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWfdSinkResolution()I
    .locals 2

    .prologue
    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->getWfdSinkResolution()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 517
    :goto_0
    return v1

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWfdState()I
    .locals 2

    .prologue
    .line 507
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1}, Lcom/samsung/wfd/IWfdManager;->getWfdState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 509
    :goto_0
    return v1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)Lcom/samsung/wfd/WfdManager$Channel;
    .locals 5
    .parameter "srcContext"
    .parameter "srcLooper"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 437
    invoke-virtual {p0}, Lcom/samsung/wfd/WfdManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 438
    .local v1, messenger:Landroid/os/Messenger;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 445
    :cond_0
    :goto_0
    return-object v0

    .line 440
    :cond_1
    new-instance v0, Lcom/samsung/wfd/WfdManager$Channel;

    invoke-direct {v0, p2, p3}, Lcom/samsung/wfd/WfdManager$Channel;-><init>(Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)V

    .line 441
    .local v0, c:Lcom/samsung/wfd/WfdManager$Channel;
    iget-object v3, v0, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, v0, Lcom/samsung/wfd/WfdManager$Channel;->mHandler:Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 445
    goto :goto_0
.end method

.method public pauseRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 485
    if-nez p1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206e

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public resumeRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 482
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public setWfdEnabledDialog(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdManager;->mService:Lcom/samsung/wfd/IWfdManager;

    invoke-interface {v1, p1}, Lcom/samsung/wfd/IWfdManager;->setWfdEnabledDialog(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 501
    :goto_0
    return v1

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 470
    if-nez p1, :cond_0

    .line 472
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206b

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method

.method public stopRTSP(Lcom/samsung/wfd/WfdManager$Channel;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 475
    if-nez p1, :cond_0

    .line 477
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v0, p1, Lcom/samsung/wfd/WfdManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2206c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0
.end method
