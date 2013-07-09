.class final Lcom/verizon/timer/NetworkTimer$NetworkFinalizerHelper;
.super Ljava/lang/Object;
.source "NetworkTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/timer/NetworkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetworkFinalizerHelper"
.end annotation


# instance fields
.field private final impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;


# direct methods
.method constructor <init>(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;)V
    .locals 0
    .parameter "impl"

    .prologue
    .line 376
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Lcom/verizon/timer/NetworkTimer$NetworkFinalizerHelper;->impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    .line 378
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkFinalizerHelper;->impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 383
    :try_start_1
    iget-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkFinalizerHelper;->impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    const/4 v2, 0x1

    #setter for: Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->finished:Z
    invoke-static {v0, v2}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;->access$402(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;Z)Z

    .line 384
    iget-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkFinalizerHelper;->impl:Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 385
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 389
    return-void

    .line 385
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 387
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
