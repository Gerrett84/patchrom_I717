.class public Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;
.super Landroid/widget/ImageView;
.source "FrequencyDisplayBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;
    }
.end annotation


# instance fields
.field final CENTER_OFFSET_X:F

.field final CENTER_OFFSET_Y:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCountTimer:Landroid/os/CountDownTimer;

.field private mCurrentFrequencyPosition:J

.field private mDegree:F

.field private mDialerPaint:Landroid/graphics/Paint;

.field private mDrawingPointCircleRadius:D

.field private mFreqBar:Landroid/graphics/Bitmap;

.field private mFreqBgImageHeight:I

.field private mFreqBgImageWidth:I

.field private mFrequencyChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;

.field private mFrequencyPosition:J

.field private mPreviousFrequencyPosition:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->CENTER_OFFSET_X:F

    .line 31
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->CENTER_OFFSET_Y:F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDegree:F

    .line 40
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDrawingPointCircleRadius:D

    .line 53
    new-instance v0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;-><init>(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;JJ)V

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCountTimer:Landroid/os/CountDownTimer;

    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getBitmapImage()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->CENTER_OFFSET_X:F

    .line 31
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->CENTER_OFFSET_Y:F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDegree:F

    .line 40
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDrawingPointCircleRadius:D

    .line 53
    new-instance v0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$1;-><init>(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;JJ)V

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCountTimer:Landroid/os/CountDownTimer;

    .line 102
    const-wide/16 v0, 0x222e

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDialerPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDialerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getBitmapImage()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J

    return-wide v0
.end method

.method static synthetic access$114(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCurrentFrequencyPosition:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->calculateFrequencyPosition()V

    return-void
.end method

.method private calculateFrequencyPosition()V
    .locals 3

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    long-to-float v0, v0

    const v1, 0x46002000

    sub-float/2addr v0, v1

    const v1, 0x3df5c28f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDegree:F

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " calculateFrequencyPosition mDegree = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDegree:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFrequencyPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->log(Ljava/lang/String;Z)V

    .line 171
    return-void
.end method

.method private getBitmapImage()V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020056

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBar:Landroid/graphics/Bitmap;

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020055

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBgImageWidth:I

    .line 157
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBgImageHeight:I

    .line 158
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    const/4 v0, 0x0

    .line 161
    :cond_0
    return-void
.end method

.method private setAnimationToFreqBar()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setAnimationToFreqBar mFrequencyPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPreviousFrequencyPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurrentFrequencyPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCurrentFrequencyPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->log(Ljava/lang/String;Z)V

    .line 129
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCountTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCountTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 132
    return-void
.end method

.method private setCenterXY()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 183
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBgImageWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->CENTER_OFFSET_X:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCenterX:F

    .line 184
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBgImageHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->CENTER_OFFSET_Y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCenterY:F

    .line 185
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->log(Ljava/lang/String;Z)V

    .line 204
    return-void
.end method

.method public log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "isFreqLog"

    .prologue
    .line 207
    if-nez p2, :cond_0

    .line 208
    const-string v0, "FrequencyDisplayBar"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 142
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCenterX:F

    iget v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCenterY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 143
    iget v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDegree:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 144
    const/high16 v0, 0x4334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBar:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBar:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    neg-float v1, v1

    iget-wide v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDrawingPointCircleRadius:D

    double-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFreqBar:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    neg-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mDialerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 149
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, maxHeight:I
    const/4 v2, 0x0

    .line 192
    .local v2, maxWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 193
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 195
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 198
    :cond_0
    invoke-static {v2, p1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->setMeasuredDimension(II)V

    .line 200
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChanged w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->log(Ljava/lang/String;Z)V

    .line 177
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->setCenterXY()V

    .line 178
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->calculateFrequencyPosition()V

    .line 179
    return-void
.end method

.method public setFrequency(JZ)V
    .locals 3
    .parameter "frequency"
    .parameter "isAnimation"

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setFrequency mFrequencyPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frequency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isAnimation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->log(Ljava/lang/String;Z)V

    .line 111
    iget-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    iput-wide v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mPreviousFrequencyPosition:J

    .line 112
    iput-wide p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyPosition:J

    .line 113
    iput-wide p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mCurrentFrequencyPosition:J

    .line 115
    if-eqz p3, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->setAnimationToFreqBar()V

    .line 120
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->calculateFrequencyPosition()V

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->invalidate()V

    .line 122
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;->onFrequencyChanged(J)V

    goto :goto_0
.end method

.method public setOnFrequencyChangeListener(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->mFrequencyChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;

    .line 86
    return-void
.end method
