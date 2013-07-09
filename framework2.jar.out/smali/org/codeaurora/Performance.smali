.class public Lorg/codeaurora/Performance;
.super Ljava/lang/Object;
.source "Performance.java"


# static fields
.field public static final CPU0_FREQ_LVL_MAX:I = 0x1324

.field public static final CPU0_FREQ_LVL_NONTURBO:I = 0x1068

.field public static final CPU0_FREQ_LVL_TURBO:I = 0x10cc

.field public static final CPU1_FREQ_LVL_MAX:I = 0x170c

.field public static final CPU1_FREQ_LVL_NONTURBO:I = 0x1450

.field public static final CPU1_FREQ_LVL_TURBO:I = 0x14b4

.field public static final CPUOPT_CPU0_FREQMIN:I = 0x2

.field public static final CPUOPT_CPU0_PWRCLSP:I = 0x1

.field public static final CPUOPT_CPU1_FREQMIN:I = 0x3

.field public static final CPUS_ON_LVL_1:I = 0xc1c

.field public static final CPUS_ON_LVL_2:I = 0xc80

.field public static final CPUS_ON_LVL_3:I = 0xce4

.field public static final CPUS_ON_LVL_MAX:I = 0xf3c

.field public static final HEAP_OPT_A:I = 0x834

.field public static final PWR_CLSP_A:I = 0x44c

.field public static final REQUEST_FAILED:I = 0x0

.field public static final REQUEST_PENDING:I = 0x2

.field public static final REQUEST_SUCCEEDED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Perf"


# instance fields
.field private HANDLE:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/Performance;->HANDLE:I

    .line 40
    return-void
.end method

.method private native native_cpu_boost(I)V
.end method

.method private native native_cpu_setoptions(II)I
.end method

.method private native native_deinit()V
.end method

.method private native native_perf_lock_acq([I)I
.end method

.method private native native_perf_lock_rel(I)I
.end method


# virtual methods
.method public cpuBoost(I)V
    .locals 0
    .parameter "ntasks"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/codeaurora/Performance;->native_cpu_boost(I)V

    .line 94
    return-void
.end method

.method public cpuSetOptions(II)I
    .locals 1
    .parameter "reqType"
    .parameter "reqValue"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/Performance;->native_cpu_setoptions(II)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/codeaurora/Performance;->native_deinit()V

    .line 104
    return-void
.end method

.method public varargs perfLockAcquire([I)I
    .locals 1
    .parameter "list"

    .prologue
    .line 69
    iget v0, p0, Lorg/codeaurora/Performance;->HANDLE:I

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lorg/codeaurora/Performance;->native_perf_lock_acq([I)I

    move-result v0

    iput v0, p0, Lorg/codeaurora/Performance;->HANDLE:I

    .line 71
    :cond_0
    iget v0, p0, Lorg/codeaurora/Performance;->HANDLE:I

    if-lez v0, :cond_1

    .line 72
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public perfLockRelease()I
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, rc:I
    iget v1, p0, Lorg/codeaurora/Performance;->HANDLE:I

    if-lez v1, :cond_0

    .line 80
    iget v1, p0, Lorg/codeaurora/Performance;->HANDLE:I

    invoke-direct {p0, v1}, Lorg/codeaurora/Performance;->native_perf_lock_rel(I)I

    move-result v0

    .line 81
    :cond_0
    if-lez v0, :cond_1

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lorg/codeaurora/Performance;->HANDLE:I

    .line 83
    :cond_1
    return v0
.end method
