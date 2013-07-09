.class public Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;
.super Ljava/lang/Object;
.source "PDPContextStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PDPContextStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceLock"
.end annotation


# static fields
.field private static sLockCount:I

.field private static sMutex:Ljava/lang/Object;


# instance fields
.field locked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sLockCount:I

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->locked:Z

    .line 82
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    sget v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;)V

    invoke-static {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->access$002(Lcom/android/internal/telephony/PDPContextStateBroadcaster;)Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->locked:Z

    .line 87
    sget v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sLockCount:I

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->unlock()V

    .line 106
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->locked:Z

    if-eqz v0, :cond_1

    .line 94
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    sget v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->access$002(Lcom/android/internal/telephony/PDPContextStateBroadcaster;)Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$InstanceLock;->locked:Z

    .line 99
    monitor-exit v1

    .line 101
    :cond_1
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
