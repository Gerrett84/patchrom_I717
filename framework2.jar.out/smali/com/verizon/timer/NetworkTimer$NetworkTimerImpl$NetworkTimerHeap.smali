.class final Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;
.super Ljava/lang/Object;
.source "NetworkTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetworkTimerHeap"
.end annotation


# instance fields
.field private DEFAULT_HEAP_SIZE:I

.field private deletedCancelledNumber:I

.field private dtime:J

.field private size:I

.field private timers:[Lcom/verizon/timer/NetworkTimerTask;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x100

    iput v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->DEFAULT_HEAP_SIZE:I

    .line 38
    iget v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->DEFAULT_HEAP_SIZE:I

    new-array v0, v0, [Lcom/verizon/timer/NetworkTimerTask;

    iput-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    .line 40
    iput v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    .line 42
    iput v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->deletedCancelledNumber:I

    .line 44
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->dtime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/verizon/timer/NetworkTimer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;Lcom/verizon/timer/NetworkTimerTask;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->getTask(Lcom/verizon/timer/NetworkTimerTask;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->resortTaskForVzw()V

    return-void
.end method

.method static synthetic access$300(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->deletedCancelledNumber:I

    return v0
.end method

.method static synthetic access$302(Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->deletedCancelledNumber:I

    return p1
.end method

.method private downHeap(I)V
    .locals 7
    .parameter "pos"

    .prologue
    .line 92
    move v1, p1

    .line 93
    .local v1, current:I
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v0, v3, 0x1

    .line 95
    .local v0, child:I
    :goto_0
    iget v3, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    if-ge v0, v3, :cond_1

    iget v3, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    if-lez v3, :cond_1

    .line 97
    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget-wide v3, v3, Lcom/verizon/timer/NetworkTimerTask;->when:J

    iget-object v5, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aget-object v5, v5, v0

    iget-wide v5, v5, Lcom/verizon/timer/NetworkTimerTask;->when:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aget-object v3, v3, v1

    iget-wide v3, v3, Lcom/verizon/timer/NetworkTimerTask;->when:J

    iget-object v5, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aget-object v5, v5, v0

    iget-wide v5, v5, Lcom/verizon/timer/NetworkTimerTask;->when:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 116
    :cond_1
    return-void

    .line 108
    :cond_2
    iget-object v3, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aget-object v2, v3, v1

    .line 109
    .local v2, tmp:Lcom/verizon/timer/NetworkTimerTask;
    iget-object v3, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    iget-object v4, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 110
    iget-object v3, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aput-object v2, v3, v0

    .line 113
    move v1, v0

    .line 114
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v0, v3, 0x1

    .line 115
    goto :goto_0
.end method

.method private getTask(Lcom/verizon/timer/NetworkTimerTask;)I
    .locals 2
    .parameter "task"

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 144
    .end local v0           #i:I
    :goto_1
    return v0

    .line 139
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private minForVzw(JJ)J
    .locals 1
    .parameter "curTime"
    .parameter "prevTime"

    .prologue
    .line 201
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 204
    .end local p1
    :goto_0
    return-wide p1

    .restart local p1
    :cond_0
    move-wide p1, p3

    goto :goto_0
.end method

.method private resortTaskForVzw()V
    .locals 11

    .prologue
    .line 151
    const-string v7, "gsm.network.type"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, netType:Ljava/lang/String;
    sget-object v7, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NetworkTimer] netType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 153
    const-string v7, "LTE:14"

    if-eq v2, v7, :cond_1

    .line 155
    const-wide/16 v7, 0x2710

    iput-wide v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->dtime:J

    .line 162
    :goto_0
    iget-object v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    array-length v7, v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 164
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 166
    iget-object v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    add-int/lit8 v8, v1, -0x1

    aget-object v3, v7, v8

    .line 167
    .local v3, prev:Lcom/verizon/timer/NetworkTimerTask;
    iget-object v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aget-object v0, v7, v1

    .line 169
    .local v0, cur:Lcom/verizon/timer/NetworkTimerTask;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 172
    iget-wide v7, v0, Lcom/verizon/timer/NetworkTimerTask;->whenMin:J

    invoke-virtual {p0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->minimum()Lcom/verizon/timer/NetworkTimerTask;

    move-result-object v9

    iget-wide v9, v9, Lcom/verizon/timer/NetworkTimerTask;->when:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 175
    iget-wide v7, v0, Lcom/verizon/timer/NetworkTimerTask;->when:J

    iget-wide v9, v3, Lcom/verizon/timer/NetworkTimerTask;->when:J

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->minForVzw(JJ)J

    move-result-wide v7

    iget-wide v9, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->dtime:J

    add-long v5, v7, v9

    .line 176
    .local v5, range:J
    iget-wide v7, v3, Lcom/verizon/timer/NetworkTimerTask;->when:J

    sub-long/2addr v5, v7

    .line 177
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_2

    .line 198
    .end local v0           #cur:Lcom/verizon/timer/NetworkTimerTask;
    .end local v1           #i:I
    .end local v3           #prev:Lcom/verizon/timer/NetworkTimerTask;
    .end local v5           #range:J
    :cond_0
    return-void

    .line 159
    :cond_1
    const-wide/16 v7, 0x1388

    iput-wide v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->dtime:J

    goto :goto_0

    .line 183
    .restart local v0       #cur:Lcom/verizon/timer/NetworkTimerTask;
    .restart local v1       #i:I
    .restart local v3       #prev:Lcom/verizon/timer/NetworkTimerTask;
    .restart local v5       #range:J
    :cond_2
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 184
    .local v4, random:Ljava/util/Random;
    iget-wide v7, v3, Lcom/verizon/timer/NetworkTimerTask;->when:J

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/verizon/timer/NetworkTimerTask;->when:J

    .line 185
    iget-object v7, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aput-object v0, v7, v1

    .line 188
    invoke-virtual {p0, v1}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->delete(I)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->insert(Lcom/verizon/timer/NetworkTimerTask;)V

    .line 164
    .end local v4           #random:Ljava/util/Random;
    .end local v5           #range:J
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private upHeap()V
    .locals 7

    .prologue
    .line 76
    iget v3, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    add-int/lit8 v0, v3, -0x1

    .line 77
    .local v0, current:I
    add-int/lit8 v3, v0, -0x1

    div-int/lit8 v1, v3, 0x2

    .line 79
    .local v1, parent:I
    :goto_0
    iget-object v3, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aget-object v3, v3, v0

    iget-wide v3, v3, Lcom/verizon/timer/NetworkTimerTask;->when:J

    iget-object v5, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aget-object v5, v5, v1

    iget-wide v5, v5, Lcom/verizon/timer/NetworkTimerTask;->when:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aget-object v2, v3, v0

    .line 82
    .local v2, tmp:Lcom/verizon/timer/NetworkTimerTask;
    iget-object v3, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    iget-object v4, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    .line 83
    iget-object v3, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aput-object v2, v3, v1

    .line 86
    move v0, v1

    .line 87
    add-int/lit8 v3, v0, -0x1

    div-int/lit8 v1, v3, 0x2

    .line 88
    goto :goto_0

    .line 89
    .end local v2           #tmp:Lcom/verizon/timer/NetworkTimerTask;
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustMinimum()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->downHeap(I)V

    .line 125
    return-void
.end method

.method public delete(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 68
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    if-ge p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    iget-object v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    iget v2, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 70
    iget-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    iget v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 71
    invoke-direct {p0, p1}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->downHeap(I)V

    .line 73
    :cond_0
    return-void
.end method

.method public deleteIfCancelled()V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    if-ge v0, v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/verizon/timer/NetworkTimerTask;->cancelled:Z

    if-eqz v1, :cond_0

    .line 130
    iget v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->deletedCancelledNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->deletedCancelledNumber:I

    .line 131
    invoke-virtual {p0, v0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->delete(I)V

    .line 133
    add-int/lit8 v0, v0, -0x1

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-void
.end method

.method public insert(Lcom/verizon/timer/NetworkTimerTask;)V
    .locals 4
    .parameter "task"

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    array-length v1, v1

    iget v2, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    if-ne v1, v2, :cond_0

    .line 56
    iget v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lcom/verizon/timer/NetworkTimerTask;

    .line 57
    .local v0, appendedTimers:[Lcom/verizon/timer/NetworkTimerTask;
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    iget v2, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iput-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    .line 60
    .end local v0           #appendedTimers:[Lcom/verizon/timer/NetworkTimerTask;
    :cond_0
    iget-object v1, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    iget v2, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    aput-object p1, v1, v2

    .line 63
    invoke-direct {p0}, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->upHeap()V

    .line 64
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minimum()Lcom/verizon/timer/NetworkTimerTask;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->DEFAULT_HEAP_SIZE:I

    new-array v0, v0, [Lcom/verizon/timer/NetworkTimerTask;

    iput-object v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->timers:[Lcom/verizon/timer/NetworkTimerTask;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/verizon/timer/NetworkTimer$NetworkTimerImpl$NetworkTimerHeap;->size:I

    .line 121
    return-void
.end method
