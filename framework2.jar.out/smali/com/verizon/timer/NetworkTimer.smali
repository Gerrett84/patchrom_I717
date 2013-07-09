.class public Lcom/verizon/timer/NetworkTimer;
.super Ljava/util/Timer;
.source "NetworkTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/timer/NetworkTimer$NetworkFinalizerHelper;,
        Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkTimer"

.field private static timerId:J


# instance fields
.field private final impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

.field private final networkFinalizer:Lcom/verizon/timer/NetworkTimer$NetworkFinalizerHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/verizon/timer/NetworkTimer;-><init>(Z)V

    .line 421
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/verizon/timer/NetworkTimer;-><init>(Ljava/lang/String;Z)V

    .line 413
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "isDaemon"

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 404
    if-nez p1, :cond_0

    .line 405
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_0
    new-instance v0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    invoke-direct {v0, p1, p2}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/verizon/timer/NetworkTimer;->impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    .line 408
    new-instance v0, Lcom/verizon/timer/NetworkTimer$NetworkFinalizerHelper;

    iget-object v1, p0, Lcom/verizon/timer/NetworkTimer;->impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    invoke-direct {v0, v1}, Lcom/verizon/timer/NetworkTimer$NetworkFinalizerHelper;-><init>(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;)V

    iput-object v0, p0, Lcom/verizon/timer/NetworkTimer;->networkFinalizer:Lcom/verizon/timer/NetworkTimer$NetworkFinalizerHelper;

    .line 409
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .parameter "isDaemon"

    .prologue
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/verizon/timer/NetworkTimer;->nextId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/verizon/timer/NetworkTimer;-><init>(Ljava/lang/String;Z)V

    .line 417
    return-void
.end method

.method private static declared-synchronized nextId()J
    .locals 6

    .prologue
    .line 395
    const-class v1, Lcom/verizon/timer/NetworkTimer;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/verizon/timer/NetworkTimer;->timerId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/verizon/timer/NetworkTimer;->timerId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private scheduleImplExt(Ljava/util/TimerTask;JJIZ)V
    .locals 10
    .parameter "task"
    .parameter "delay"
    .parameter "period"
    .parameter "tolerance"
    .parameter "fixed"

    .prologue
    .line 462
    iget-object v7, p0, Lcom/verizon/timer/NetworkTimer;->impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    monitor-enter v7

    .line 463
    :try_start_0
    iget-object v6, p0, Lcom/verizon/timer/NetworkTimer;->impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    #getter for: Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->cancelled:Z
    invoke-static {v6}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->access$500(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 464
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v8, "Timer was canceled"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 513
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 467
    :cond_0
    :try_start_1
    sget-object v6, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NetworkTimer] scheduleImplExt - delay: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " period: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " tolerance: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v4, p2, v8

    .line 472
    .local v4, whenMin:J
    move/from16 v0, p6

    int-to-long v8, v0

    add-long v2, v4, v8

    .line 473
    .local v2, whenMax:J
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-gez v6, :cond_1

    .line 474
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal delay to start the TimerTask(min) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 476
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-gez v6, :cond_2

    .line 477
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal delay to start the TimerTask(max) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 480
    :cond_2
    new-instance v1, Lcom/verizon/timer/NetworkTimer$1;

    invoke-direct {v1, p0}, Lcom/verizon/timer/NetworkTimer$1;-><init>(Lcom/verizon/timer/NetworkTimer;)V

    .line 490
    .local v1, networkTask:Lcom/verizon/timer/NetworkTimerTask;
    iget-object v8, v1, Lcom/verizon/timer/NetworkTimerTask;->lock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    :try_start_2
    invoke-virtual {v1}, Lcom/verizon/timer/NetworkTimerTask;->isScheduled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 492
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v9, "TimerTask is scheduled already"

    invoke-direct {v6, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 505
    :catchall_1
    move-exception v6

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 495
    :cond_3
    :try_start_4
    iget-boolean v6, v1, Lcom/verizon/timer/NetworkTimerTask;->cancelled:Z

    if-eqz v6, :cond_4

    .line 496
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v9, "TimerTask is canceled"

    invoke-direct {v6, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 499
    :cond_4
    iput-object p1, v1, Lcom/verizon/timer/NetworkTimerTask;->wrapTask:Ljava/util/TimerTask;

    .line 500
    iput-wide v4, v1, Lcom/verizon/timer/NetworkTimerTask;->whenMin:J

    .line 501
    iput-wide v2, v1, Lcom/verizon/timer/NetworkTimerTask;->when:J

    .line 502
    iput-wide p4, v1, Lcom/verizon/timer/NetworkTimerTask;->period:J

    .line 503
    move/from16 v0, p6

    iput v0, v1, Lcom/verizon/timer/NetworkTimerTask;->tolerance:I

    .line 504
    move/from16 v0, p7

    iput-boolean v0, v1, Lcom/verizon/timer/NetworkTimerTask;->fixedRate:Z

    .line 505
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 509
    :try_start_5
    iget-object v6, p0, Lcom/verizon/timer/NetworkTimer;->impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    #calls: Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->resortTaskForVzw()V
    invoke-static {v6}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->access$600(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;)V

    .line 512
    iget-object v6, p0, Lcom/verizon/timer/NetworkTimer;->impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    #calls: Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->insertTask(Lcom/verizon/timer/NetworkTimerTask;)V
    invoke-static {v6, v1}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->access$700(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;Lcom/verizon/timer/NetworkTimerTask;)V

    .line 513
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 514
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/verizon/timer/NetworkTimer;->impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    invoke-virtual {v0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->cancel()V

    .line 425
    return-void
.end method

.method public purge()I
    .locals 2

    .prologue
    .line 428
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimer;->impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    monitor-enter v1

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/verizon/timer/NetworkTimer;->impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    invoke-virtual {v0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->purge()I

    move-result v0

    monitor-exit v1

    return v0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public schedule(Ljava/util/TimerTask;JJI)V
    .locals 8
    .parameter "task"
    .parameter "delay"
    .parameter "period"
    .parameter "tolerance"

    .prologue
    const-wide/16 v3, 0x0

    .line 435
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworkTimer] schedule - delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tolerance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 436
    cmp-long v0, p2, v3

    if-ltz v0, :cond_0

    cmp-long v0, p4, v3

    if-lez v0, :cond_0

    if-ltz p6, :cond_0

    int-to-long v0, p6

    cmp-long v0, v0, p4

    if-lez v0, :cond_1

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 440
    :cond_1
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/verizon/timer/NetworkTimer;->scheduleImplExt(Ljava/util/TimerTask;JJIZ)V

    .line 441
    return-void
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;JJI)V
    .locals 8
    .parameter "task"
    .parameter "delay"
    .parameter "period"
    .parameter "tolerance"

    .prologue
    const-wide/16 v1, 0x0

    .line 454
    cmp-long v0, p2, v1

    if-ltz v0, :cond_0

    cmp-long v0, p4, v1

    if-lez v0, :cond_0

    if-ltz p6, :cond_0

    int-to-long v0, p6

    cmp-long v0, v0, p4

    if-lez v0, :cond_1

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 457
    :cond_1
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworkTimer] scheduleAtFixedRate2 - delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tolerance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 458
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/verizon/timer/NetworkTimer;->scheduleImplExt(Ljava/util/TimerTask;JJIZ)V

    .line 459
    return-void
.end method

.method public scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;JI)V
    .locals 10
    .parameter "task"
    .parameter "when"
    .parameter "period"
    .parameter "tolerance"

    .prologue
    const-wide/16 v2, 0x0

    .line 444
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    if-ltz p5, :cond_0

    int-to-long v0, p5

    cmp-long v0, v0, p3

    if-lez v0, :cond_1

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 448
    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v8, v0, v4

    .line 449
    .local v8, delay:J
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NetworkTimer] scheduleAtFixedRate - delay: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " period: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " tolerance: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 450
    cmp-long v0, v8, v2

    if-gez v0, :cond_2

    :goto_0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/verizon/timer/NetworkTimer;->scheduleImplExt(Ljava/util/TimerTask;JJIZ)V

    .line 451
    return-void

    :cond_2
    move-wide v2, v8

    .line 450
    goto :goto_0
.end method
