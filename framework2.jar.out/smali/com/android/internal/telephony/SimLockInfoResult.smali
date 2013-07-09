.class public Lcom/android/internal/telephony/SimLockInfoResult;
.super Ljava/lang/Object;
.source "SimLockInfoResult.java"


# static fields
.field private static final LOCK_ACL:I = 0xb

.field private static final LOCK_CORP_PERS:I = 0x8

.field private static final LOCK_FD:I = 0x4

.field private static final LOCK_NETWORK_PERS:I = 0x5

.field private static final LOCK_NETWORK_SUBSET_PERS:I = 0x6

.field private static final LOCK_PH_FSIM:I = 0x2

.field private static final LOCK_PH_SIM:I = 0x1

.field private static final LOCK_PIN2:I = 0x9

.field private static final LOCK_PUK2:I = 0xa

.field private static final LOCK_READY:I = 0x0

.field private static final LOCK_SIM:I = 0x3

.field private static final LOCK_SP_PERS:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "RIL_SimLockInfoResult"

.field private static final NOT_NEED:I = 0x0

.field private static final NO_SIM:I = 0x80

.field private static final PERM_BLOCKED:I = 0x5

.field public static final PIN:I = 0x1

.field public static final PIN2:I = 0x3

.field private static final PIN2_DISABLE:I = 0x6

.field public static final PUK:I = 0x2

.field public static final PUK2:I = 0x4

.field static Pin2_Retry:I

.field static Pin_Retry:I

.field static Puk2_Retry:I

.field static Puk_Retry:I

.field public static isPermBlocked:I

.field static lockKey:I

.field static lockPin2Key:I

.field static lockPinKey:I

.field static lockType:I

.field static numRetry:I

.field static num_lock_type:I


# instance fields
.field private calledTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    .line 47
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    .line 48
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    .line 49
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 50
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 51
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    .line 52
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 53
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 54
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 55
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 57
    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4
    .parameter "num_lock_type"
    .parameter "lockType"
    .parameter "lockKey"
    .parameter "numRetry"

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v3, p0, Lcom/android/internal/telephony/SimLockInfoResult;->calledTimes:I

    .line 64
    sput p1, Lcom/android/internal/telephony/SimLockInfoResult;->num_lock_type:I

    .line 65
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->lockType:I

    .line 66
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockKey:I

    .line 67
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->numRetry:I

    .line 68
    const-string v0, "RIL_SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lock_key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 71
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 126
    :goto_0
    return-void

    .line 74
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 78
    const-string v0, "RIL_SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT_NEED numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :pswitch_1
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 83
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 84
    const-string v0, "RIL_SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :pswitch_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 89
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 90
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 91
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    .line 92
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 100
    :cond_1
    :goto_1
    const-string v0, "RIL_SimLockInfoResult"

    const-string v1, "Permernet blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_2
    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 95
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 96
    sput v3, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 97
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    goto :goto_1

    .line 103
    :pswitch_3
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 104
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 105
    const-string v0, "RIL_SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :pswitch_4
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 111
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 112
    const-string v0, "RIL_SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 116
    :pswitch_5
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 117
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 118
    const-string v0, "RIL_SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUK2 numRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getLockPin2Key()I
    .locals 1

    .prologue
    .line 186
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    return v0
.end method

.method public getLockPinKey()I
    .locals 1

    .prologue
    .line 182
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    return v0
.end method

.method public getPin2Retry()I
    .locals 3

    .prologue
    .line 196
    const-string v0, "RIL_SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pin2_num_retries:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    return v0
.end method

.method public getPinRetry()I
    .locals 3

    .prologue
    .line 190
    const-string v0, "RIL_SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pin1_num_retries:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    return v0
.end method

.method public getPuk2Retry()I
    .locals 3

    .prologue
    .line 208
    const-string v0, "RIL_SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "puk2_num_retries:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    return v0
.end method

.method public getPukRetry()I
    .locals 3

    .prologue
    .line 202
    const-string v0, "RIL_SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "puk_num_retries:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    return v0
.end method

.method public isSimBlocked()I
    .locals 1

    .prologue
    .line 216
    sget v0, Lcom/android/internal/telephony/SimLockInfoResult;->isPermBlocked:I

    return v0
.end method

.method public setLockInfoResult(IIII)V
    .locals 4
    .parameter "Pin_Retry"
    .parameter "Puk_Retry"
    .parameter "Pin2_Retry"
    .parameter "Puk2_Retry"

    .prologue
    const/4 v3, -0x1

    .line 130
    const-string v0, "RIL_SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pin2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eq p1, v3, :cond_0

    .line 134
    sput p1, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 137
    :cond_0
    if-eq p2, v3, :cond_1

    .line 139
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 142
    :cond_1
    if-eq p3, v3, :cond_2

    .line 144
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 147
    :cond_2
    if-eq p4, v3, :cond_3

    .line 149
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 151
    :cond_3
    return-void
.end method

.method public setLockInfoResult(IIIIII)V
    .locals 4
    .parameter "Pin_Retry"
    .parameter "Puk_Retry"
    .parameter "Pin2_Retry"
    .parameter "Puk2_Retry"
    .parameter "lockKey"
    .parameter "lockKey2"

    .prologue
    const/4 v3, -0x1

    .line 155
    const-string v0, "RIL_SimLockInfoResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pin2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Puk2_Retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lockKey2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eq p1, v3, :cond_0

    .line 159
    sput p1, Lcom/android/internal/telephony/SimLockInfoResult;->Pin_Retry:I

    .line 162
    :cond_0
    if-eq p2, v3, :cond_1

    .line 164
    sput p2, Lcom/android/internal/telephony/SimLockInfoResult;->Puk_Retry:I

    .line 167
    :cond_1
    if-eq p3, v3, :cond_2

    .line 169
    sput p3, Lcom/android/internal/telephony/SimLockInfoResult;->Pin2_Retry:I

    .line 172
    :cond_2
    if-eq p4, v3, :cond_3

    .line 174
    sput p4, Lcom/android/internal/telephony/SimLockInfoResult;->Puk2_Retry:I

    .line 176
    :cond_3
    sput p5, Lcom/android/internal/telephony/SimLockInfoResult;->lockPinKey:I

    .line 177
    sput p6, Lcom/android/internal/telephony/SimLockInfoResult;->lockPin2Key:I

    .line 178
    return-void
.end method
