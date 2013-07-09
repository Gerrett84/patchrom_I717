.class final Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;
.super Ljava/lang/Thread;
.source "NetworkTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/timer/NetworkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetworkTimerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private finished:Z

.field private tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "isDaemon"

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 223
    new-instance v0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;-><init>(Lcom/verizon/timer/NetworkTimer$1;)V

    iput-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    .line 232
    invoke-virtual {p0, p1}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->setName(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, p2}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->setDaemon(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->start()V

    .line 235
    return-void
.end method

.method static synthetic access$402(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->finished:Z

    return p1
.end method

.method static synthetic access$500(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->cancelled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->resortTaskForVzw()V

    return-void
.end method

.method static synthetic access$700(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;Lcom/verizon/timer/NetworkTimerTask;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->insertTask(Lcom/verizon/timer/NetworkTimerTask;)V

    return-void
.end method

.method private insertTask(Lcom/verizon/timer/NetworkTimerTask;)V
    .locals 1
    .parameter "newTask"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    invoke-virtual {v0, p1}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->insert(Lcom/verizon/timer/NetworkTimerTask;)V

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 350
    return-void
.end method

.method private resortTaskForVzw()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    #calls: Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->resortTaskForVzw()V
    invoke-static {v0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->access$200(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;)V

    .line 344
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 356
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->cancelled:Z

    .line 357
    iget-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    invoke-virtual {v0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->reset()V

    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public purge()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 362
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    invoke-virtual {v1}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    :goto_0
    return v0

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    #setter for: Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->deletedCancelledNumber:I
    invoke-static {v1, v0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->access$302(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;I)I

    .line 367
    iget-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    invoke-virtual {v0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->deleteIfCancelled()V

    .line 368
    iget-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    #getter for: Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->deletedCancelledNumber:I
    invoke-static {v0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->access$300(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;)I

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 245
    :cond_0
    :goto_0
    monitor-enter p0

    .line 247
    :try_start_0
    iget-boolean v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->cancelled:Z

    if-eqz v7, :cond_1

    .line 248
    monitor-exit p0

    .line 253
    :goto_1
    return-void

    .line 251
    :cond_1
    iget-object v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    invoke-virtual {v7}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 252
    iget-boolean v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->finished:Z

    if-eqz v7, :cond_2

    .line 253
    monitor-exit p0

    goto :goto_1

    .line 325
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 257
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 262
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 264
    .local v0, currentTime:J
    iget-object v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    invoke-virtual {v7}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->minimum()Lcom/verizon/timer/NetworkTimerTask;

    move-result-object v3

    .line 267
    .local v3, task:Lcom/verizon/timer/NetworkTimerTask;
    iget-object v8, v3, Lcom/verizon/timer/NetworkTimerTask;->lock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    :try_start_3
    iget-boolean v7, v3, Lcom/verizon/timer/NetworkTimerTask;->cancelled:Z

    if-eqz v7, :cond_4

    .line 269
    iget-object v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->delete(I)V

    .line 270
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 274
    :cond_4
    :try_start_5
    iget-wide v9, v3, Lcom/verizon/timer/NetworkTimerTask;->when:J

    sub-long v5, v9, v0

    .line 275
    .local v5, timeToSleep:J
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 276
    cmp-long v7, v5, v13

    if-lez v7, :cond_5

    .line 279
    :try_start_6
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 282
    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 275
    .end local v5           #timeToSleep:J
    :catchall_1
    move-exception v7

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v7

    .line 288
    .restart local v5       #timeToSleep:J
    :cond_5
    iget-object v8, v3, Lcom/verizon/timer/NetworkTimerTask;->lock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 289
    const/4 v2, 0x0

    .line 290
    .local v2, pos:I
    :try_start_a
    iget-object v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    invoke-virtual {v7}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->minimum()Lcom/verizon/timer/NetworkTimerTask;

    move-result-object v7

    iget-wide v9, v7, Lcom/verizon/timer/NetworkTimerTask;->when:J

    iget-wide v11, v3, Lcom/verizon/timer/NetworkTimerTask;->when:J

    cmp-long v7, v9, v11

    if-eqz v7, :cond_6

    .line 291
    iget-object v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    #calls: Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->getTask(Lcom/verizon/timer/NetworkTimerTask;)I
    invoke-static {v7, v3}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->access$100(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;Lcom/verizon/timer/NetworkTimerTask;)I

    move-result v2

    .line 293
    :cond_6
    iget-boolean v7, v3, Lcom/verizon/timer/NetworkTimerTask;->cancelled:Z

    if-eqz v7, :cond_7

    .line 294
    iget-object v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    iget-object v9, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    #calls: Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->getTask(Lcom/verizon/timer/NetworkTimerTask;)I
    invoke-static {v9, v3}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->access$100(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;Lcom/verizon/timer/NetworkTimerTask;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->delete(I)V

    .line 295
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 298
    :cond_7
    :try_start_c
    iget-wide v9, v3, Lcom/verizon/timer/NetworkTimerTask;->when:J

    invoke-virtual {v3, v9, v10}, Lcom/verizon/timer/NetworkTimerTask;->setScheduledTime(J)V

    .line 301
    iget-object v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->tasks:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;

    invoke-virtual {v7, v2}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->delete(I)V

    .line 307
    iget-wide v9, v3, Lcom/verizon/timer/NetworkTimerTask;->period:J

    cmp-long v7, v9, v13

    if-ltz v7, :cond_9

    .line 309
    iget-boolean v7, v3, Lcom/verizon/timer/NetworkTimerTask;->fixedRate:Z

    if-eqz v7, :cond_8

    .line 311
    iget-wide v9, v3, Lcom/verizon/timer/NetworkTimerTask;->when:J

    iget-wide v11, v3, Lcom/verizon/timer/NetworkTimerTask;->period:J

    add-long/2addr v9, v11

    iput-wide v9, v3, Lcom/verizon/timer/NetworkTimerTask;->whenMin:J

    .line 312
    iget-wide v9, v3, Lcom/verizon/timer/NetworkTimerTask;->whenMin:J

    iget v7, v3, Lcom/verizon/timer/NetworkTimerTask;->tolerance:I

    int-to-long v11, v7

    add-long/2addr v9, v11

    iput-wide v9, v3, Lcom/verizon/timer/NetworkTimerTask;->when:J

    .line 320
    :goto_4
    invoke-direct {p0, v3}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->insertTask(Lcom/verizon/timer/NetworkTimerTask;)V

    .line 324
    :goto_5
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 325
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 327
    const/4 v4, 0x0

    .line 329
    .local v4, taskCompletedNormally:Z
    :try_start_e
    invoke-virtual {v3}, Lcom/verizon/timer/NetworkTimerTask;->run()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 330
    const/4 v4, 0x1

    .line 332
    if-nez v4, :cond_0

    .line 333
    monitor-enter p0

    .line 334
    const/4 v7, 0x1

    :try_start_f
    iput-boolean v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->cancelled:Z

    .line 335
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v7

    .line 315
    .end local v4           #taskCompletedNormally:Z
    :cond_8
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v3, Lcom/verizon/timer/NetworkTimerTask;->period:J

    add-long/2addr v9, v11

    iput-wide v9, v3, Lcom/verizon/timer/NetworkTimerTask;->whenMin:J

    .line 317
    iget-wide v9, v3, Lcom/verizon/timer/NetworkTimerTask;->whenMin:J

    iget v7, v3, Lcom/verizon/timer/NetworkTimerTask;->tolerance:I

    int-to-long v11, v7

    add-long/2addr v9, v11

    iput-wide v9, v3, Lcom/verizon/timer/NetworkTimerTask;->when:J

    goto :goto_4

    .line 324
    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 322
    :cond_9
    const-wide/16 v9, 0x0

    :try_start_12
    iput-wide v9, v3, Lcom/verizon/timer/NetworkTimerTask;->when:J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_5

    .line 332
    .restart local v4       #taskCompletedNormally:Z
    :catchall_4
    move-exception v7

    if-nez v4, :cond_a

    .line 333
    monitor-enter p0

    .line 334
    const/4 v8, 0x1

    :try_start_13
    iput-boolean v8, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->cancelled:Z

    .line 335
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 332
    :cond_a
    throw v7

    .line 258
    .end local v0           #currentTime:J
    .end local v2           #pos:I
    .end local v3           #task:Lcom/verizon/timer/NetworkTimerTask;
    .end local v4           #taskCompletedNormally:Z
    .end local v5           #timeToSleep:J
    :catch_0
    move-exception v7

    goto/16 :goto_2

    .line 280
    .restart local v0       #currentTime:J
    .restart local v3       #task:Lcom/verizon/timer/NetworkTimerTask;
    .restart local v5       #timeToSleep:J
    :catch_1
    move-exception v7

    goto/16 :goto_3

    .line 335
    .restart local v2       #pos:I
    .restart local v4       #taskCompletedNormally:Z
    :catchall_5
    move-exception v7

    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    throw v7
.end method
