.class public abstract Lcom/verizon/timer/NetworkTimerTask;
.super Ljava/lang/Object;
.source "NetworkTimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public cancelled:Z

.field public fixedRate:Z

.field public final lock:Ljava/lang/Object;

.field public period:J

.field private scheduledTime:J

.field public tolerance:I

.field public when:J

.field public whenMin:J

.field wrapTask:Ljava/util/TimerTask;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/verizon/timer/NetworkTimerTask;->lock:Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 56
    iget-object v2, p0, Lcom/verizon/timer/NetworkTimerTask;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 57
    :try_start_0
    iget-boolean v1, p0, Lcom/verizon/timer/NetworkTimerTask;->cancelled:Z

    if-nez v1, :cond_0

    iget-wide v3, p0, Lcom/verizon/timer/NetworkTimerTask;->when:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 58
    .local v0, willRun:Z
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/verizon/timer/NetworkTimerTask;->cancelled:Z

    .line 59
    monitor-exit v2

    return v0

    .line 57
    .end local v0           #willRun:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getWhen()J
    .locals 4

    .prologue
    .line 37
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-wide v2, p0, Lcom/verizon/timer/NetworkTimerTask;->when:J

    monitor-exit v1

    return-wide v2

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScheduled()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 47
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-wide v2, p0, Lcom/verizon/timer/NetworkTimerTask;->when:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-wide v2, p0, Lcom/verizon/timer/NetworkTimerTask;->scheduledTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract run()V
.end method

.method public scheduledExecutionTime()J
    .locals 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-wide v2, p0, Lcom/verizon/timer/NetworkTimerTask;->scheduledTime:J

    monitor-exit v1

    return-wide v2

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScheduledTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimerTask;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iput-wide p1, p0, Lcom/verizon/timer/NetworkTimerTask;->scheduledTime:J

    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
