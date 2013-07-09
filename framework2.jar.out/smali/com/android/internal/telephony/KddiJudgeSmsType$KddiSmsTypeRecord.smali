.class public Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;
.super Ljava/lang/Object;
.source "KddiJudgeSmsType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/KddiJudgeSmsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KddiSmsTypeRecord"
.end annotation


# instance fields
.field public mAddCondition:B

.field public mAddConditionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeAddCondition;",
            ">;"
        }
    .end annotation
.end field

.field public mKddiSmsAccessory:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;

.field public mSmsType:[B

.field final synthetic this$0:Lcom/android/internal/telephony/KddiJudgeSmsType;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I[BB)V
    .locals 1
    .parameter
    .parameter "actionCode"
    .parameter "permissionCode"
    .parameter "responseCode"
    .parameter "SmsType"
    .parameter "addCondition"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->this$0:Lcom/android/internal/telephony/KddiJudgeSmsType;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mKddiSmsAccessory:Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;

    .line 401
    iput-object p5, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    .line 402
    iput-byte p6, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddCondition:B

    .line 403
    return-void
.end method
