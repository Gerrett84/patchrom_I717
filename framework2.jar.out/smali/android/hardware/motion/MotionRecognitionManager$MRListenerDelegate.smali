.class Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
.super Landroid/hardware/motion/IMotionRecognitionCallback$Stub;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRListenerDelegate"
.end annotation


# instance fields
.field private final EVENT_FROM_SERVICE:I

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/motion/MRListener;

.field private mListenerPackageName:Ljava/lang/String;

.field private final mMotionSensors:I

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionManager;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "listener"
    .parameter "motion_sensors"
    .parameter "handler"

    .prologue
    .line 376
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->this$0:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-direct {p0}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;-><init>()V

    .line 372
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    .line 373
    const/16 v1, 0x35

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->EVENT_FROM_SERVICE:I

    .line 377
    iput-object p2, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Landroid/hardware/motion/MRListener;

    .line 378
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 379
    .local v0, looper:Landroid/os/Looper;
    :goto_0
    iput p3, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mMotionSensors:I

    .line 382
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    .line 385
    new-instance v1, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate$1;-><init>(Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;Landroid/os/Looper;Landroid/hardware/motion/MotionRecognitionManager;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 402
    return-void

    .line 378
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    iget-object v0, p1, Landroid/hardware/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;)Landroid/hardware/motion/MRListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 367
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Landroid/hardware/motion/MRListener;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListenerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mListenerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public motionCallback(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 409
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 410
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x35

    iput v1, v0, Landroid/os/Message;->what:I

    .line 411
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 412
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 413
    return-void
.end method
