.class Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
.super Landroid/os/HandlerThread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenBrightnessAnimator"
.end annotation


# static fields
.field static final ANIMATE_LIGHTS:I = 0xa

.field static final ANIMATE_POWER_OFF:I = 0xb


# instance fields
.field private currentMask:I

.field volatile currentValue:I

.field private duration:I

.field volatile endSensorValue:I

.field volatile endValue:I

.field private final prefix:Ljava/lang/String;

.field volatile startSensorValue:I

.field private startTimeMillis:J

.field volatile startValue:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 2967
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    .line 2968
    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2969
    iput-object p2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->prefix:Ljava/lang/String;

    .line 2970
    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2954
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2954
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    return v0
.end method

.method private animateInternal(IZI)V
    .locals 12
    .parameter "mask"
    .parameter "turningOff"
    .parameter "delay"

    .prologue
    .line 3019
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v8

    monitor-enter v8

    .line 3020
    :try_start_0
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-eq v7, v9, :cond_4

    .line 3021
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3022
    .local v4, now:J
    iget-wide v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    sub-long v9, v4, v9

    long-to-int v1, v9

    .line 3024
    .local v1, elapsed:I
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    if-ge v1, v7, :cond_3

    .line 3025
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    sub-int v0, v7, v9

    .line 3026
    .local v0, delta:I
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    mul-int v9, v0, v1

    iget v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    div-int/2addr v9, v10

    add-int v3, v7, v9

    .line 3027
    .local v3, newValue:I
    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3028
    const/16 v7, 0xff

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3030
    if-lez p3, :cond_0

    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-ne v3, v7, :cond_0

    .line 3031
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    div-int v6, v7, v9

    .line 3032
    .local v6, timePerStep:I
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    sub-int/2addr v7, v1

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 3033
    if-gez v0, :cond_2

    const/4 v7, -0x1

    :goto_0
    add-int/2addr v3, v7

    .line 3036
    .end local v6           #timePerStep:I
    :cond_0
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    sub-int v0, v7, v9

    .line 3037
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    mul-int v10, v0, v1

    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    div-int/2addr v10, v11

    add-int/2addr v9, v10

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v7, v9}, Lcom/android/server/PowerManagerService;->access$7902(Lcom/android/server/PowerManagerService;I)I

    .line 3064
    .end local v0           #delta:I
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v7

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3066
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v7

    const/16 v9, 0xa

    invoke-virtual {v7, v9, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3068
    .local v2, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v7

    int-to-long v9, p3

    invoke-virtual {v7, v2, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3079
    .end local v1           #elapsed:I
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #newValue:I
    .end local v4           #now:J
    :goto_2
    monitor-exit v8

    .line 3080
    return-void

    .line 3033
    .restart local v0       #delta:I
    .restart local v1       #elapsed:I
    .restart local v3       #newValue:I
    .restart local v4       #now:J
    .restart local v6       #timePerStep:I
    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    .line 3039
    .end local v0           #delta:I
    .end local v3           #newValue:I
    .end local v6           #timePerStep:I
    :cond_3
    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    .line 3040
    .restart local v3       #newValue:I
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v7, v9}, Lcom/android/server/PowerManagerService;->access$7902(Lcom/android/server/PowerManagerService;I)I

    .line 3041
    iget v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-lez v7, :cond_1

    .line 3042
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v7, v9}, Lcom/android/server/PowerManagerService;->access$7202(Lcom/android/server/PowerManagerService;Z)Z

    goto :goto_1

    .line 3079
    .end local v1           #elapsed:I
    .end local v3           #newValue:I
    .end local v4           #now:J
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3070
    :cond_4
    :try_start_1
    const-string v7, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Light Animator Finished currentValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$8000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLockList;

    move-result-object v9

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3073
    :try_start_2
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$8100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$8100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3074
    iget-object v7, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$8100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->release()V

    .line 3076
    :cond_5
    monitor-exit v9

    goto :goto_2

    :catchall_1
    move-exception v7

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method public animateTo(III)V
    .locals 1
    .parameter "target"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$7900(Lcom/android/server/PowerManagerService;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(IIII)V

    .line 3095
    return-void
.end method

.method public animateTo(IIII)V
    .locals 6
    .parameter "target"
    .parameter "sensorTarget"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3098
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v3

    monitor-enter v3

    .line 3099
    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_2

    .line 3101
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_0

    .line 3102
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7400(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3104
    :cond_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    .line 3105
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7500(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3107
    :cond_1
    monitor-exit v3

    .line 3160
    :goto_0
    return-void

    .line 3109
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    xor-int/2addr v4, p3

    if-eqz v4, :cond_3

    .line 3111
    const-string v4, "PowerManagerService"

    const-string v5, "animateTo  : cancelAnimation"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->cancelAnimation()V

    .line 3114
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3116
    const/4 p4, 0x0

    .line 3117
    if-lez p1, :cond_4

    .line 3118
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$7202(Lcom/android/server/PowerManagerService;Z)Z

    .line 3121
    :cond_4
    iget v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iput v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    .line 3122
    iput p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    .line 3123
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$7900(Lcom/android/server/PowerManagerService;)I

    move-result v4

    iput v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    .line 3124
    iput p2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    .line 3125
    iput p3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    .line 3126
    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3800(Lcom/android/server/PowerManagerService;)F

    move-result v4

    int-to-float v5, p4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    .line 3127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    .line 3138
    iget v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-eq p1, v4, :cond_7

    .line 3139
    and-int/lit8 v4, p3, 0x3

    if-eqz v4, :cond_8

    move v0, v1

    .line 3140
    .local v0, doScreenAnim:Z
    :goto_1
    iget v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-nez v4, :cond_9

    .line 3141
    .local v1, turningOff:Z
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 3143
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3144
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8300(Lcom/android/server/PowerManagerService;)I

    move-result v4

    #calls: Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    invoke-static {v2, v4}, Lcom/android/server/PowerManagerService;->access$8400(Lcom/android/server/PowerManagerService;I)I

    .line 3145
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    .line 3147
    :cond_5
    if-eqz v0, :cond_7

    .line 3149
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$8000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLockList;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3150
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$8100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$8100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3151
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$8100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;->acquire()V

    .line 3153
    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3155
    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, p3, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V

    .line 3159
    .end local v0           #doScreenAnim:Z
    .end local v1           #turningOff:Z
    :cond_7
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_8
    move v0, v2

    .line 3139
    goto :goto_1

    .restart local v0       #doScreenAnim:Z
    :cond_9
    move v1, v2

    .line 3140
    goto :goto_2

    .line 3153
    .restart local v1       #turningOff:Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public cancelAnimation()V
    .locals 3

    .prologue
    .line 3175
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 3176
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "string"

    .prologue
    .line 3083
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  animating: start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startSensorValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endSensorValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startTimeMillis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " now:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentMask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    #calls: Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$8200(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    return-void
.end method

.method public getCurrentBrightness()I
    .locals 2

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v1

    monitor-enter v1

    .line 3164
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    monitor-exit v1

    return v0

    .line 3165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAnimating()Z
    .locals 3

    .prologue
    .line 3169
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v1

    monitor-enter v1

    .line 3170
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iget v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 2974
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    new-instance v1, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;-><init>(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)V

    #setter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$6902(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 3012
    monitor-enter p0

    .line 3013
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mInitComplete:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$7802(Lcom/android/server/PowerManagerService;Z)Z

    .line 3014
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3015
    monitor-exit p0

    .line 3016
    return-void

    .line 3015
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
