.class public Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;
.super Ljava/lang/Object;
.source "KddiJudgeSmsType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/KddiJudgeSmsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KddiSmsAccessory"
.end annotation


# static fields
.field public static final KDDI_REPLY_ACK:I = 0x0

.field public static final KDDI_REPLY_DEPEND_APP:I = 0x2

.field public static final KDDI_REPLY_NACK:I = 0x1


# instance fields
.field private mResponseType:I

.field private mSendAction:Ljava/lang/String;

.field private mSendPermission:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/KddiJudgeSmsType;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "action"
    .parameter "permission"
    .parameter "response"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;->this$0:Lcom/android/internal/telephony/KddiJudgeSmsType;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;->mSendAction:Ljava/lang/String;

    .line 452
    iput-object p3, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;->mSendPermission:Ljava/lang/String;

    .line 453
    iput p4, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;->mResponseType:I

    .line 454
    return-void
.end method


# virtual methods
.method public kddiGetResponseType()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;->mResponseType:I

    return v0
.end method

.method public kddiGetSendAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;->mSendAction:Ljava/lang/String;

    return-object v0
.end method

.method public kddiGetSendPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;->mSendPermission:Ljava/lang/String;

    return-object v0
.end method
