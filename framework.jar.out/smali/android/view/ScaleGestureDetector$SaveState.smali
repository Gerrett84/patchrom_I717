.class Landroid/view/ScaleGestureDetector$SaveState;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveState"
.end annotation


# instance fields
.field beginX:F

.field beginY:F

.field mFingerDiffX:F

.field mFingerDiffY:F

.field mLen:F

.field mLenBeforeSqrt:F

.field mPressure:F

.field mTimeStamp:J

.field maxX:F

.field maxY:F

.field minX:F

.field minY:F

.field final synthetic this$0:Landroid/view/ScaleGestureDetector;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Landroid/view/ScaleGestureDetector$SaveState;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector$SaveState;->reset()V

    .line 166
    return-void
.end method


# virtual methods
.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    iput v2, p0, Landroid/view/ScaleGestureDetector$SaveState;->y:F

    iput v2, p0, Landroid/view/ScaleGestureDetector$SaveState;->x:F

    iput v2, p0, Landroid/view/ScaleGestureDetector$SaveState;->beginY:F

    iput v2, p0, Landroid/view/ScaleGestureDetector$SaveState;->beginX:F

    iput v2, p0, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    iput v2, p0, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iput v2, p0, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    iput v2, p0, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 170
    iput v2, p0, Landroid/view/ScaleGestureDetector$SaveState;->mLen:F

    .line 171
    iput v2, p0, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->mTimeStamp:J

    .line 173
    iput v2, p0, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffX:F

    .line 174
    iput v2, p0, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffY:F

    .line 175
    iput v2, p0, Landroid/view/ScaleGestureDetector$SaveState;->mPressure:F

    .line 176
    return-void
.end method
