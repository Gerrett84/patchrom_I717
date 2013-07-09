.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SaveState;,
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private AREA_THRESHOLD:F

.field private FACTOR_THRESHOLD_MIN:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private final mNULL:Landroid/view/ScaleGestureDetector$SaveState;

.field private mScaleFactor:F

.field private mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

.field private mStateCurrentEnded:Landroid/view/ScaleGestureDetector$SaveState;

.field private mStatePrev:Landroid/view/ScaleGestureDetector$SaveState;

.field private mStatePrevEnded:Landroid/view/ScaleGestureDetector$SaveState;

.field private mUpdatePrevious:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    .line 141
    const/high16 v1, 0x3f80

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 143
    const v1, 0x45bb8000

    iput v1, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    .line 144
    const v1, 0x3dcccccd

    iput v1, p0, Landroid/view/ScaleGestureDetector;->FACTOR_THRESHOLD_MIN:F

    .line 146
    new-instance v1, Landroid/view/ScaleGestureDetector$SaveState;

    invoke-direct {v1, p0}, Landroid/view/ScaleGestureDetector$SaveState;-><init>(Landroid/view/ScaleGestureDetector;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mNULL:Landroid/view/ScaleGestureDetector$SaveState;

    .line 147
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mNULL:Landroid/view/ScaleGestureDetector$SaveState;

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mStatePrev:Landroid/view/ScaleGestureDetector$SaveState;

    .line 148
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mNULL:Landroid/view/ScaleGestureDetector$SaveState;

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 149
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mNULL:Landroid/view/ScaleGestureDetector$SaveState;

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mStatePrevEnded:Landroid/view/ScaleGestureDetector$SaveState;

    .line 150
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mNULL:Landroid/view/ScaleGestureDetector$SaveState;

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrentEnded:Landroid/view/ScaleGestureDetector$SaveState;

    .line 180
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 183
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 184
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 185
    iget v1, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getArea(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, bInitialized:Z
    new-instance v5, Landroid/view/ScaleGestureDetector$SaveState;

    invoke-direct {v5, p0}, Landroid/view/ScaleGestureDetector$SaveState;-><init>(Landroid/view/ScaleGestureDetector;)V

    iput-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 238
    .local v1, count:I
    const/4 v5, 0x0

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 240
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 242
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v5, Landroid/view/ScaleGestureDetector$SaveState;->x:F

    .line 243
    .local v3, x:F
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, v5, Landroid/view/ScaleGestureDetector$SaveState;->y:F

    .line 244
    .local v4, y:F
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mPressure:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mPressure:F

    .line 246
    if-eqz v0, :cond_4

    .line 247
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_0

    .line 248
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v3, v5, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 250
    :cond_0
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_1

    .line 251
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v4, v5, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    .line 253
    :cond_1
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    cmpg-float v5, v5, v3

    if-gez v5, :cond_2

    .line 254
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v3, v5, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    .line 256
    :cond_2
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_3

    .line 257
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v4, v5, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    .line 269
    :cond_3
    :goto_1
    iget v5, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    add-float/2addr v5, v3

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 270
    iget v5, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    add-float/2addr v5, v4

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_4
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v3, v5, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 261
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v3, v5, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    .line 262
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v4, v5, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    .line 263
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v4, v5, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    .line 264
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v3, v5, Landroid/view/ScaleGestureDetector$SaveState;->beginX:F

    .line 265
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v4, v5, Landroid/view/ScaleGestureDetector$SaveState;->beginY:F

    .line 266
    const/4 v0, 0x1

    goto :goto_1

    .line 273
    .end local v3           #x:F
    .end local v4           #y:F
    :cond_5
    iget v5, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    int-to-float v6, v1

    div-float/2addr v5, v6

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 274
    iget v5, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    int-to-float v6, v1

    div-float/2addr v5, v6

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 276
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffX:F

    .line 277
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffY:F

    .line 279
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mTimeStamp:J

    .line 281
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffX:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffX:F

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffY:F

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffY:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    .line 284
    return-void
.end method

.method private getCurrentSignX()F
    .locals 3

    .prologue
    .line 287
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 288
    .local v0, stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :goto_0
    iget v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->beginX:F

    iget v2, v0, Landroid/view/ScaleGestureDetector$SaveState;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/high16 v1, -0x4080

    .line 289
    :goto_1
    return v1

    .line 287
    .end local v0           #stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrentEnded:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_0

    .line 289
    .restart local v0       #stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_1
.end method

.method private getCurrentSignY()F
    .locals 3

    .prologue
    .line 293
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 294
    .local v0, stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :goto_0
    iget v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->beginY:F

    iget v2, v0, Landroid/view/ScaleGestureDetector$SaveState;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/high16 v1, -0x4080

    .line 295
    :goto_1
    return v1

    .line 293
    .end local v0           #stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrentEnded:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_0

    .line 295
    .restart local v0       #stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_1
.end method

.method private getPreviousSignX()F
    .locals 3

    .prologue
    .line 299
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStatePrev:Landroid/view/ScaleGestureDetector$SaveState;

    .line 300
    .local v0, statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :goto_0
    iget v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->beginX:F

    iget v2, v0, Landroid/view/ScaleGestureDetector$SaveState;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/high16 v1, -0x4080

    .line 301
    :goto_1
    return v1

    .line 299
    .end local v0           #statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStatePrevEnded:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_0

    .line 301
    .restart local v0       #statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_1
.end method

.method private getPreviousSignY()F
    .locals 3

    .prologue
    .line 305
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStatePrev:Landroid/view/ScaleGestureDetector$SaveState;

    .line 306
    .local v0, statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :goto_0
    iget v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->beginY:F

    iget v2, v0, Landroid/view/ScaleGestureDetector$SaveState;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/high16 v1, -0x4080

    .line 307
    :goto_1
    return v1

    .line 305
    .end local v0           #statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStatePrevEnded:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_0

    .line 307
    .restart local v0       #statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_1
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 312
    return-void
.end method


# virtual methods
.method public getAreaRateThreshold()F
    .locals 1

    .prologue
    .line 471
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getAreaThreshold()F
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    return v0
.end method

.method public getCurrentSpan()F
    .locals 2

    .prologue
    .line 366
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 367
    .local v0, stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :goto_0
    iget v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->mLen:F

    .line 368
    iget v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->mLen:F

    return v1

    .line 366
    .end local v0           #stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrentEnded:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getCurrentSpanX()F
    .locals 3

    .prologue
    .line 378
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 379
    .local v0, stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :goto_0
    iget v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffX:F

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->getCurrentSignX()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    .line 378
    .end local v0           #stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrentEnded:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getCurrentSpanY()F
    .locals 3

    .prologue
    .line 389
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 390
    .local v0, stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :goto_0
    iget v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffY:F

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->getCurrentSignY()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    .line 389
    .end local v0           #stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrentEnded:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getEnableEdgeZoom()Z
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public getEventTime()J
    .locals 3

    .prologue
    .line 455
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 456
    .local v0, stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :goto_0
    iget-wide v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->mTimeStamp:J

    return-wide v1

    .line 455
    .end local v0           #stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrentEnded:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 2

    .prologue
    .line 400
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStatePrev:Landroid/view/ScaleGestureDetector$SaveState;

    .line 401
    .local v0, statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :goto_0
    iget v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->mLen:F

    .line 402
    iget v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->mLen:F

    return v1

    .line 400
    .end local v0           #statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStatePrevEnded:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getPreviousSpanX()F
    .locals 3

    .prologue
    .line 412
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStatePrev:Landroid/view/ScaleGestureDetector$SaveState;

    .line 413
    .local v0, statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :goto_0
    iget v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffX:F

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->getPreviousSignX()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    .line 412
    .end local v0           #statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStatePrevEnded:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getPreviousSpanY()F
    .locals 3

    .prologue
    .line 423
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStatePrev:Landroid/view/ScaleGestureDetector$SaveState;

    .line 424
    .local v0, statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :goto_0
    iget v1, v0, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffY:F

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->getPreviousSignY()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    .line 423
    .end local v0           #statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStatePrevEnded:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .locals 6

    .prologue
    .line 444
    iget-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 445
    .local v0, stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :goto_0
    iget-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStatePrev:Landroid/view/ScaleGestureDetector$SaveState;

    .line 446
    .local v1, statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :goto_1
    iget-wide v2, v0, Landroid/view/ScaleGestureDetector$SaveState;->mTimeStamp:J

    iget-wide v4, v1, Landroid/view/ScaleGestureDetector$SaveState;->mTimeStamp:J

    sub-long/2addr v2, v4

    return-wide v2

    .line 444
    .end local v0           #stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    .end local v1           #statePrev:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mStateCurrentEnded:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_0

    .line 445
    .restart local v0       #stateCurrent:Landroid/view/ScaleGestureDetector$SaveState;
    :cond_1
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStatePrevEnded:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_1
.end method

.method public isEdgeZoomInProgress()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 195
    .local v0, action:I
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-nez v1, :cond_3

    .line 196
    if-eq v0, v3, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 197
    :cond_0
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 228
    :cond_1
    :goto_0
    return v3

    .line 199
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    .line 200
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v2, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 201
    const/high16 v1, 0x3f80

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 202
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mStatePrev:Landroid/view/ScaleGestureDetector$SaveState;

    .line 203
    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 204
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 205
    const-string v1, "ScaleGestureDetector"

    const-string v2, "TwScaleGestureDetector"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 210
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    .line 212
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mStatePrev:Landroid/view/ScaleGestureDetector$SaveState;

    iget v2, v2, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 214
    iget v1, p0, Landroid/view/ScaleGestureDetector;->FACTOR_THRESHOLD_MIN:F

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mPressure:F

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mStatePrev:Landroid/view/ScaleGestureDetector$SaveState;

    iget v2, v2, Landroid/view/ScaleGestureDetector$SaveState;->mPressure:F

    div-float/2addr v1, v2

    const v2, 0x3f2b851f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 215
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    .line 216
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mStatePrev:Landroid/view/ScaleGestureDetector$SaveState;

    goto :goto_0

    .line 221
    :cond_4
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 222
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStatePrev:Landroid/view/ScaleGestureDetector$SaveState;

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mStatePrevEnded:Landroid/view/ScaleGestureDetector$SaveState;

    .line 223
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrentEnded:Landroid/view/ScaleGestureDetector$SaveState;

    .line 224
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_0
.end method

.method public setAreaRateThreshold(F)V
    .locals 0
    .parameter "areaRate"

    .prologue
    .line 468
    return-void
.end method

.method public setAreaThreshold(F)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 460
    iput p1, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    .line 461
    return-void
.end method

.method public setEnableEdgeZoom(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 479
    return-void
.end method
