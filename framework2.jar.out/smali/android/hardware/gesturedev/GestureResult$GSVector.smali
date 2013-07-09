.class public Landroid/hardware/gesturedev/GestureResult$GSVector;
.super Ljava/lang/Object;
.source "GestureResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gesturedev/GestureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GSVector"
.end annotation


# instance fields
.field public error:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Landroid/hardware/gesturedev/GestureResult$GSVector;->x:F

    .line 46
    iput v0, p0, Landroid/hardware/gesturedev/GestureResult$GSVector;->y:F

    .line 47
    iput v0, p0, Landroid/hardware/gesturedev/GestureResult$GSVector;->z:F

    .line 48
    iput v0, p0, Landroid/hardware/gesturedev/GestureResult$GSVector;->error:F

    .line 51
    return-void
.end method
