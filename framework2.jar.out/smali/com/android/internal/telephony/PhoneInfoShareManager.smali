.class public Lcom/android/internal/telephony/PhoneInfoShareManager;
.super Landroid/os/Handler;
.source "PhoneInfoShareManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RIL_PhoneInfoShareManager"

.field public static mCbmEndTime:J

.field public static mCbmRemainedTime:J

.field public static mCbmStartTime:J

.field public static mEcmExitRespRegistrant:Landroid/os/Registrant;

.field public static mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private static mInstance:Lcom/android/internal/telephony/PhoneInfoShareManager;

.field public static mIsPhoneInEcmState:Z

.field public static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 29
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mIsPhoneInEcmState:Z

    .line 32
    sput-wide v1, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmStartTime:J

    .line 33
    sput-wide v1, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmEndTime:J

    .line 34
    sput-wide v1, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmRemainedTime:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 53
    const-string v0, "RIL_PhoneInfoShareManager"

    const-string v1, "Creating PhoneInfoShareManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 56
    sput-object p0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mInstance:Lcom/android/internal/telephony/PhoneInfoShareManager;

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/PhoneInfoShareManager;
    .locals 2
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 47
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/android/internal/telephony/CommandsInterface;

    .line 48
    .local v0, arrayCi:[Lcom/android/internal/telephony/CommandsInterface;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 49
    invoke-static {p0, v0}, Lcom/android/internal/telephony/PhoneInfoShareManager;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/PhoneInfoShareManager;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/PhoneInfoShareManager;
    .locals 1
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 37
    sget-object v0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mInstance:Lcom/android/internal/telephony/PhoneInfoShareManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/internal/telephony/PhoneInfoShareManager;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/PhoneInfoShareManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mInstance:Lcom/android/internal/telephony/PhoneInfoShareManager;

    .line 43
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mInstance:Lcom/android/internal/telephony/PhoneInfoShareManager;

    return-object v0

    .line 40
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mInstance:Lcom/android/internal/telephony/PhoneInfoShareManager;

    iput-object p0, v0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mContext:Landroid/content/Context;

    .line 41
    sget-object v0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mInstance:Lcom/android/internal/telephony/PhoneInfoShareManager;

    iput-object p1, v0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    .line 92
    const-string v0, "RIL_PhoneInfoShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Unknown Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public initCbmTime()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 61
    const-string v0, "RIL_PhoneInfoShareManager"

    const-string v1, "initCbmTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sput-wide v2, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmRemainedTime:J

    .line 63
    sput-wide v2, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmStartTime:J

    .line 64
    sput-wide v2, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmEndTime:J

    .line 65
    return-void
.end method

.method public setCbmReaminedTime()V
    .locals 6

    .prologue
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmEndTime:J

    .line 80
    sget-wide v2, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmEndTime:J

    sget-wide v4, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmStartTime:J

    sub-long v0, v2, v4

    .line 82
    .local v0, mGapTime:J
    sget-wide v2, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmRemainedTime:J

    sub-long/2addr v2, v0

    sput-wide v2, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmRemainedTime:J

    .line 83
    const-string v2, "RIL_PhoneInfoShareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCbmRemainedTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmRemainedTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v2, "RIL_PhoneInfoShareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCbmStartTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmStartTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v2, "RIL_PhoneInfoShareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCbmEndTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmEndTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public setCbmStartTime(J)V
    .locals 4
    .parameter "remainTime"

    .prologue
    .line 69
    sput-wide p1, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmRemainedTime:J

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmStartTime:J

    .line 72
    const-string v0, "RIL_PhoneInfoShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCbmRemainedTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmRemainedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "RIL_PhoneInfoShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCbmStartTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/telephony/PhoneInfoShareManager;->mCbmEndTime:J

    .line 75
    return-void
.end method
