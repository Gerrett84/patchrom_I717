.class Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;
.super Landroid/os/Handler;
.source "TwGLNewPanoramaMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 179
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 223
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 182
    :pswitch_1
    :try_start_0
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "Inactivity timer is expired. finish."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$OnNewPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->reset()V

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "MSG arrived after the onDestro. Ignore exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    .end local v0           #e:Ljava/lang/NullPointerException;
    :pswitch_2
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "MESSAGE_PANORAMA_WARNING_LOW"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->removeMessages(I)V

    .line 193
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->removeMessages(I)V

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 196
    const-wide/16 v1, 0x320

    invoke-virtual {p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 200
    :pswitch_3
    const-string v1, "TwGLNewPanoramaMenu"

    const-string v2, "MESSAGE_PANORAMA_WARNING_HIGH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->removeMessages(I)V

    .line 202
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->removeMessages(I)V

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->mPanoramaWarning:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 205
    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v5, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
