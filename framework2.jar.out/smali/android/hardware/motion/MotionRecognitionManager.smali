.class public Landroid/hardware/motion/MotionRecognitionManager;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MOTION_RECOGNITION_EVENT:Ljava/lang/String; = "android.hardware.motion.MOTION_RECOGNITION_EVENT"

.field public static final EVENT_ALL:I = 0x3ffff

.field public static final EVENT_DIRECT_CALLING:I = 0x400

.field public static final EVENT_DOUBLE_TAP:I = 0x8

.field public static final EVENT_FLAT:I = 0x2000

.field public static final EVENT_LCD_UP_STEADY:I = 0x10000

.field public static final EVENT_LOCK_EXECUTE_L:I = 0x80

.field public static final EVENT_LOCK_EXECUTE_R:I = 0x100

.field public static final EVENT_NUM:I = 0x12

.field public static final EVENT_OVER_TURN:I = 0x1

.field public static final EVENT_OVER_TURN_LOW_POWER:I = 0x20000

.field public static final EVENT_PANNING_GALLERY:I = 0x20

.field public static final EVENT_PANNING_HOME:I = 0x40

.field public static final EVENT_REACTIVE_ALERT:I = 0x4

.field public static final EVENT_SHAKE:I = 0x2

.field public static final EVENT_SMART_ALERT_SETTING:I = 0x8000

.field public static final EVENT_TILT:I = 0x10

.field public static final EVENT_TILT_LEVEL_ZERO:I = 0x1000

.field public static final EVENT_TILT_LEVEL_ZERO_LAND:I = 0x4000

.field public static final EVENT_TILT_TO_UNLOCK:I = 0x800

.field public static final EVENT_VOLUME_DOWN:I = 0x200

.field public static final MOTION_SENSOR_NUM:I = 0x4

.field public static final MOTION_USE_ACC:I = 0x1

.field public static final MOTION_USE_ALL:I = 0xf

.field public static final MOTION_USE_GYRO:I = 0x2

.field public static final MOTION_USE_LIGHT:I = 0x8

.field public static final MOTION_USE_PROX:I = 0x4

.field public static final MOTION_USE_REACTIVE_ALERT:I = 0x20

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static final localLOGV:Z = false

.field private static final mMotionVersion:I = 0x1


# instance fields
.field mMainLooper:Landroid/os/Looper;

.field private motionService:Landroid/hardware/motion/IMotionRecognitionService;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "mainLooper"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    .line 85
    const-string v0, "motion_recognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    .line 87
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    .line 88
    return-void
.end method

.method protected static EncodeLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "path"

    .prologue
    .line 341
    if-nez p0, :cond_0

    const-string v12, ""

    .line 364
    :goto_0
    return-object v12

    .line 342
    :cond_0
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 344
    .local v10, encodedStr:Ljava/lang/StringBuffer;
    const/16 v8, 0x10

    .local v8, b4:C
    const/16 v6, 0x8

    .local v6, b3:C
    const/4 v4, 0x2

    .local v4, b1:C
    const/4 v2, 0x1

    .line 345
    .local v2, b0:C
    const/16 v3, 0xfe

    .local v3, b0mask:C
    const/16 v5, 0xfd

    .local v5, b1mask:C
    const/16 v7, 0xf7

    .local v7, b3mask:C
    const/16 v9, 0xef

    .line 347
    .local v9, b4mask:C
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_5

    .line 349
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .local v0, a:I
    move v1, v0

    .line 351
    .local v1, b:I
    and-int v12, v0, v4

    if-eqz v12, :cond_1

    or-int/2addr v1, v2

    .line 353
    :goto_2
    and-int v12, v0, v2

    if-eqz v12, :cond_2

    or-int/2addr v1, v4

    .line 356
    :goto_3
    and-int v12, v0, v8

    if-eqz v12, :cond_3

    or-int/2addr v1, v6

    .line 358
    :goto_4
    and-int v12, v0, v6

    if-eqz v12, :cond_4

    or-int/2addr v1, v8

    .line 361
    :goto_5
    int-to-char v12, v1

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 347
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 352
    :cond_1
    and-int/2addr v1, v3

    goto :goto_2

    .line 354
    :cond_2
    and-int/2addr v1, v5

    goto :goto_3

    .line 357
    :cond_3
    and-int/2addr v1, v7

    goto :goto_4

    .line 359
    :cond_4
    and-int/2addr v1, v9

    goto :goto_5

    .line 364
    .end local v0           #a:I
    .end local v1           #b:I
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0
.end method

.method public static getMotionVersion()I
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidMotionSensor(I)Z
    .locals 2
    .parameter "motion_sensor"

    .prologue
    const/4 v0, 0x1

    .line 321
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public registerListener(Landroid/hardware/motion/MRListener;)V
    .locals 2
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 99
    return-void
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;I)V
    .locals 1
    .parameter "listener"
    .parameter "motion_sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 119
    return-void
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .locals 9
    .parameter "listener"
    .parameter "motion_sensors"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    and-int/lit8 p2, p2, 0xf

    .line 129
    and-int/lit8 v5, p2, 0xf

    if-nez v5, :cond_0

    .line 130
    const/4 p2, 0x1

    .line 132
    :cond_0
    if-eqz p1, :cond_1

    .line 133
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 134
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 135
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 136
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 137
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, strlistener:Ljava/lang/String;
    const-string v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .registerListener : fail. already registered / listener count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    monitor-exit v6

    .line 159
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    .end local v4           #strlistener:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 135
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_3
    new-instance v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 145
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :try_start_1
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v5, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    :goto_2
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .restart local v4       #strlistener:Ljava/lang/String;
    const-string v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .registerListener : success. listener count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", motion_sensors="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    monitor-exit v6

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    .end local v4           #strlistener:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 148
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "MotionRecognitionManager"

    const-string v7, "RemoteException in registerListener: "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "listener"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 109
    return-void
.end method

.method public registerListenerEvent(Landroid/hardware/motion/MRListener;I)V
    .locals 1
    .parameter "listener"
    .parameter "motion_events"

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 164
    return-void
.end method

.method public registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .locals 11
    .parameter "listener"
    .parameter "motion_events"
    .parameter "handler"

    .prologue
    .line 167
    const/4 v4, 0x1

    .line 169
    .local v4, motion_sensors:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v7, 0x12

    if-ge v1, v7, :cond_1

    .line 170
    const/4 v7, 0x1

    shl-int v3, v7, v1

    .line 171
    .local v3, motion_event:I
    and-int v7, v3, p2

    if-eqz v7, :cond_0

    .line 172
    sparse-switch v3, :sswitch_data_0

    .line 169
    :cond_0
    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :sswitch_1
    or-int/lit8 v4, v4, 0x20

    .line 181
    goto :goto_1

    .line 192
    :sswitch_2
    or-int/lit8 v4, v4, 0x2

    .line 193
    goto :goto_1

    .line 196
    :sswitch_3
    or-int/lit8 v4, v4, 0x6

    .line 197
    goto :goto_1

    .line 199
    :sswitch_4
    const/16 v4, 0xf

    .line 200
    goto :goto_1

    .line 207
    .end local v3           #motion_event:I
    :cond_1
    if-eqz p1, :cond_2

    .line 208
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v8

    .line 209
    :try_start_0
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 210
    .local v5, size:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_4

    .line 211
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 212
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v7

    if-ne v7, p1, :cond_3

    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, strlistener:Ljava/lang/String;
    const-string v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  .registerListenerEvent : fail. already registered / listener count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-exit v8

    .line 233
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v5           #size:I
    .end local v6           #strlistener:Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .line 210
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v5       #size:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 218
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_4
    new-instance v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    invoke-direct {v2, p0, p1, v4, p3}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 219
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :try_start_1
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v7, v2, v4}, Landroid/hardware/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    :goto_4
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 229
    .restart local v6       #strlistener:Ljava/lang/String;
    const-string v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  .registerListenerEvent : success. listener count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", motion_sensors="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    monitor-exit v8

    goto :goto_3

    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v5           #size:I
    .end local v6           #strlistener:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 222
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v5       #size:I
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "MotionRecognitionManager"

    const-string v9, "RemoteException in registerListenerEvent: "

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_2
        0x20 -> :sswitch_2
        0x40 -> :sswitch_2
        0x80 -> :sswitch_2
        0x100 -> :sswitch_2
        0x200 -> :sswitch_2
        0x400 -> :sswitch_3
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x3ffff -> :sswitch_4
    .end sparse-switch
.end method

.method public resetMotionEngine()I
    .locals 3

    .prologue
    .line 313
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v1}, Landroid/hardware/motion/IMotionRecognitionService;->resetMotionEngine()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 317
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in resetMotionEngine: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v1, p1}, Landroid/hardware/motion/IMotionRecognitionService;->setLogPath(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in setLogPath: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMotionAngle(Landroid/hardware/motion/MRListener;I)V
    .locals 7
    .parameter "listener"
    .parameter "status"

    .prologue
    .line 284
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 285
    :try_start_0
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 286
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 287
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 288
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 290
    :try_start_1
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->setMotionAngle(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    :goto_1
    :try_start_2
    monitor-exit v5

    .line 299
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_2
    return-void

    .line 291
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in setMotionAngle: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 298
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 286
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_1
    :try_start_3
    const-string v4, "MotionRecognitionManager"

    const-string v6, "  .setMotionAngle : listener has to be registered first"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public setMotionTiltLevel(IIIIII)V
    .locals 8
    .parameter "stopUp"
    .parameter "level1Up"
    .parameter "level2Up"
    .parameter "stopDown"
    .parameter "level1Down"
    .parameter "level2Down"

    .prologue
    .line 303
    :try_start_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/hardware/motion/IMotionRecognitionService;->setMotionTiltLevel(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    const-string v0, "MotionRecognitionManager"

    const-string v1, "  .setMotionTiltLevel : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 304
    :catch_0
    move-exception v7

    .line 305
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MotionRecognitionManager"

    const-string v1, "RemoteException in setMotionTiltLevel: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/motion/MRListener;)V
    .locals 10
    .parameter "listener"

    .prologue
    .line 236
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v7

    .line 237
    :try_start_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 239
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 240
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 241
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, listener_name:Ljava/lang/String;
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@ member "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #listener_name:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 246
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 247
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v6

    if-ne v6, p1, :cond_2

    .line 248
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :try_start_1
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v6, v2}, Landroid/hardware/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_1
    :goto_2
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, strlistener:Ljava/lang/String;
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  .unregisterListener : / listener count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit v7

    .line 263
    return-void

    .line 251
    .end local v5           #strlistener:Ljava/lang/String;
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "MotionRecognitionManager"

    const-string v8, "RemoteException in unregisterListener: "

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 262
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v4           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 245
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v4       #size:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public useMotionAlways(Landroid/hardware/motion/MRListener;Z)V
    .locals 7
    .parameter "listener"
    .parameter "bUseAlways"

    .prologue
    .line 266
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 267
    :try_start_0
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 268
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 269
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 270
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 272
    :try_start_1
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->useMotionAlways(Landroid/os/IBinder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    :goto_1
    :try_start_2
    monitor-exit v5

    .line 281
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_2
    return-void

    .line 273
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in useMotionAlways: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 280
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 268
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_1
    :try_start_3
    const-string v4, "MotionRecognitionManager"

    const-string v6, "  .useMotionAlways : listener has to be registered first"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
