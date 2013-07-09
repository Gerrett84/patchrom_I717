.class public Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;
.super Ljava/lang/Object;
.source "KddiJudgeSmsType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/KddiJudgeSmsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KddiSmsTypeAddCondition"
.end annotation


# instance fields
.field public mCondition:[B

.field public mConditionLen:I

.field public mConditionOffset:I

.field final synthetic this$0:Lcom/android/internal/telephony/KddiJudgeSmsType;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/KddiJudgeSmsType;II[B)V
    .locals 0
    .parameter
    .parameter "conditionOffset"
    .parameter "conditionLen"
    .parameter "condition"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->this$0:Lcom/android/internal/telephony/KddiJudgeSmsType;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput p2, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionOffset:I

    .line 422
    iput p3, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mConditionLen:I

    .line 423
    iput-object p4, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;->mCondition:[B

    .line 424
    return-void
.end method
