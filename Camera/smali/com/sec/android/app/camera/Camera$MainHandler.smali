.class Lcom/sec/android/app/camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x5

    const/16 v7, 0xf

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 474
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage :: msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 478
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->restartTouchAF()V

    goto :goto_0

    .line 482
    :sswitch_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFocusIndicator(I)V

    .line 483
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v2

    goto :goto_0

    .line 494
    :sswitch_2
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 495
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 496
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v2

    const/4 v3, 0x4

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 497
    :catch_1
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Camera"

    const-string v3, "MSG arrived after the onDestro. Ignore exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    .end local v0           #e:Ljava/lang/NullPointerException;
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$404(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 504
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 505
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v2

    const/4 v3, 0x4

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 506
    :catch_2
    move-exception v0

    .line 507
    .restart local v0       #e:Ljava/lang/NullPointerException;
    const-string v2, "Camera"

    const-string v3, "MSG arrived after the onDestro. Ignore exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mDirtyCount:I
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/Camera;->access$402(Lcom/sec/android/app/camera/Camera;I)I

    goto :goto_0

    .line 515
    :sswitch_4
    :try_start_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/shareshot/User;

    .line 516
    .local v1, user:Lcom/samsung/shareshot/User;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/shareshot/IShareShotService;->ackActivateUser(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->onSelected()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 518
    .end local v1           #user:Lcom/samsung/shareshot/User;
    :catch_3
    move-exception v0

    .line 519
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 524
    .end local v0           #e:Landroid/os/RemoteException;
    :sswitch_5
    :try_start_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/shareshot/User;

    .line 525
    .restart local v1       #user:Lcom/samsung/shareshot/User;
    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->onUnSelected()V

    .line 526
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/shareshot/IShareShotService;->rejectActivateUser(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 527
    .end local v1           #user:Lcom/samsung/shareshot/User;
    :catch_4
    move-exception v0

    .line 528
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 532
    .end local v0           #e:Landroid/os/RemoteException;
    :sswitch_6
    const-string v2, "Camera"

    const-string v3, " >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/shareshot/User;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/Camera;->runDialog(Lcom/samsung/shareshot/User;)V

    goto/16 :goto_0

    .line 543
    :sswitch_7
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 544
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/sec/android/app/camera/Camera$MainHandler$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/Camera$MainHandler$1;-><init>(Lcom/sec/android/app/camera/Camera$MainHandler;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 557
    :catch_5
    move-exception v0

    .line 558
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Camera"

    const-string v3, "MSG arrived after on Destroy. Ignore exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 562
    .end local v0           #e:Ljava/lang/NullPointerException;
    :sswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    goto/16 :goto_0

    .line 565
    :sswitch_9
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/shareshot/User;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/Camera;->runComfirmedDialog(Lcom/samsung/shareshot/User;)V

    goto/16 :goto_0

    .line 568
    :sswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mVolumeKeyPressed:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v2

    if-nez v2, :cond_7

    .line 573
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 574
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->startSingleBurstShot()V

    goto/16 :goto_0

    .line 576
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v2

    if-ne v2, v8, :cond_6

    .line 579
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->startSingleBurstShot()V

    goto/16 :goto_0

    .line 581
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/Camera;->setWaitBurstShot(Z)V

    goto/16 :goto_0

    .line 585
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 586
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v8, v3, v4}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 594
    :sswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 595
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    .line 596
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 598
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->waitForEngineStartingThread()V

    .line 599
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->waitForStartPreviewThreadComplete()V

    .line 600
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentSearchingLastContentUri()V

    .line 601
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 602
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopEngine()V

    .line 603
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 604
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 605
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 607
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v7, :cond_b

    .line 608
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 609
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 610
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 615
    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 617
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mwLostWinFocus:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/camera/Camera;->access$802(Lcom/sec/android/app/camera/Camera;Z)Z

    goto/16 :goto_0

    .line 613
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto :goto_1

    .line 620
    :sswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 621
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 476
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_1
        0x16 -> :sswitch_4
        0x1b -> :sswitch_5
        0x20 -> :sswitch_7
        0xc8 -> :sswitch_6
        0xc9 -> :sswitch_8
        0xca -> :sswitch_9
        0x12c -> :sswitch_a
        0x1f4 -> :sswitch_b
        0x1f6 -> :sswitch_c
    .end sparse-switch
.end method
