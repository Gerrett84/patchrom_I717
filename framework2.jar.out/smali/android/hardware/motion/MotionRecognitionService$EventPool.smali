.class final Landroid/hardware/motion/MotionRecognitionService$EventPool;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventPool"
.end annotation


# static fields
.field static final POOL_SIZE:I = 0xa


# instance fields
.field events:[Landroid/hardware/motion/MREvent;

.field mLockEventPool:Ljava/lang/Object;

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method public constructor <init>(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xa

    .line 1313
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->mLockEventPool:Ljava/lang/Object;

    .line 1315
    new-array v1, v3, [Landroid/hardware/motion/MREvent;

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    .line 1317
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1318
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    new-instance v2, Landroid/hardware/motion/MREvent;

    invoke-direct {v2}, Landroid/hardware/motion/MREvent;-><init>()V

    aput-object v2, v1, v0

    .line 1317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1320
    :cond_0
    return-void
.end method


# virtual methods
.method public obtain()Landroid/hardware/motion/MREvent;
    .locals 5

    .prologue
    .line 1323
    const/4 v1, 0x0

    .line 1324
    .local v1, motionEvent:Landroid/hardware/motion/MREvent;
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->mLockEventPool:Ljava/lang/Object;

    monitor-enter v3

    .line 1325
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 1326
    :try_start_0
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 1327
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    aget-object v1, v2, v0

    .line 1328
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 1332
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    if-nez v1, :cond_1

    .line 1334
    new-instance v1, Landroid/hardware/motion/MREvent;

    .end local v1           #motionEvent:Landroid/hardware/motion/MREvent;
    invoke-direct {v1}, Landroid/hardware/motion/MREvent;-><init>()V

    .line 1336
    .restart local v1       #motionEvent:Landroid/hardware/motion/MREvent;
    :cond_1
    return-object v1

    .line 1325
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1332
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public recycle(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .parameter "motionEvent"

    .prologue
    .line 1340
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->mLockEventPool:Ljava/lang/Object;

    monitor-enter v2

    .line 1341
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1342
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 1343
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$EventPool;->events:[Landroid/hardware/motion/MREvent;

    aput-object p1, v1, v0

    .line 1347
    :cond_0
    monitor-exit v2

    .line 1348
    return-void

    .line 1341
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1347
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
