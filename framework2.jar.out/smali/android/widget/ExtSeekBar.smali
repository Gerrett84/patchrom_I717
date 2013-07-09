.class public Landroid/widget/ExtSeekBar;
.super Landroid/widget/SeekBar;
.source "ExtSeekBar.java"


# static fields
.field private static LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ExtSeekBar"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableChangeColor:Z

.field private mOffsetThumb:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private msetDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Landroid/widget/ExtSeekBar;->LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    .line 38
    iput-object p1, p0, Landroid/widget/ExtSeekBar;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private updateDrawable()V
    .locals 5

    .prologue
    const v4, 0x1080972

    const/high16 v3, 0x4320

    .line 78
    sget-boolean v0, Landroid/widget/ExtSeekBar;->LOGD:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "ExtSeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDrawable this.mThumb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msetDrawable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOffsetThumb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 83
    :cond_1
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 84
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    :cond_2
    iget v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 87
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getThumbOffset()I

    move-result v0

    iput v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    .line 91
    :cond_3
    sget-boolean v0, Landroid/widget/ExtSeekBar;->LOGD:Z

    if-eqz v0, :cond_4

    .line 92
    const-string v0, "ExtSeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDrawable getProgress() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getMax() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GeneralUtil.isTablet() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 95
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 96
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 100
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10809a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    .line 128
    :goto_0
    return-void

    .line 114
    :cond_5
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/high16 v1, 0x41a8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    goto :goto_0

    .line 118
    :cond_6
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    goto :goto_0

    .line 123
    :cond_7
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->msetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Landroid/widget/ExtSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget v0, p0, Landroid/widget/ExtSeekBar;->mOffsetThumb:I

    invoke-virtual {p0, v0}, Landroid/widget/ExtSeekBar;->setThumbOffset(I)V

    goto :goto_0
.end method


# virtual methods
.method public isEnableChangeColor()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    return v0
.end method

.method public setChangeSeekbarColor(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 51
    iput-boolean p1, p0, Landroid/widget/ExtSeekBar;->mEnableChangeColor:Z

    .line 53
    invoke-direct {p0}, Landroid/widget/ExtSeekBar;->updateDrawable()V

    .line 54
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 43
    sget-boolean v0, Landroid/widget/ExtSeekBar;->LOGD:Z

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "ExtSeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 46
    invoke-direct {p0}, Landroid/widget/ExtSeekBar;->updateDrawable()V

    .line 48
    return-void
.end method

.method public setProgress(IZ)V
    .locals 3
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 70
    sget-boolean v0, Landroid/widget/ExtSeekBar;->LOGD:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "ExtSeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEnableChangeColor() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 73
    invoke-virtual {p0}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0}, Landroid/widget/ExtSeekBar;->updateDrawable()V

    .line 75
    :cond_1
    return-void
.end method
