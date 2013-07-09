.class public Landroid/net/FeatureConfig;
.super Ljava/lang/Object;
.source "FeatureConfig.java"


# static fields
.field public static CNE:I

.field public static FMC:I

.field public static NSRM:I

.field public static WQE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput v0, Landroid/net/FeatureConfig;->CNE:I

    .line 36
    const/4 v0, 0x2

    sput v0, Landroid/net/FeatureConfig;->FMC:I

    .line 37
    const/4 v0, 0x3

    sput v0, Landroid/net/FeatureConfig;->WQE:I

    .line 38
    const/4 v0, 0x4

    sput v0, Landroid/net/FeatureConfig;->NSRM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native isEnabled(I)Z
.end method
