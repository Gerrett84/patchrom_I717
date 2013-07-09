.class public Landroid/widget/HorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HorizontalScrollView$1;,
        Landroid/widget/HorizontalScrollView$HoverScrollHandler;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "HorizontalScrollView"


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private isHoveringUIEnabled:Z

.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mHoverAreaEnter:Z

.field private mHoverAreaWidth:I

.field private mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 199
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 92
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 106
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 123
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 136
    iput v4, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 152
    const/16 v1, 0x32

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    .line 157
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:I

    .line 158
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:I

    .line 159
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 160
    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollTimeInterval:I

    .line 161
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:I

    .line 162
    iput v4, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 167
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 172
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    .line 177
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 182
    const/16 v1, 0xc

    iput v1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 187
    const/4 v1, 0x5

    iput v1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 192
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->isHoveringUIEnabled:Z

    .line 1854
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    .line 204
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initScrollView()V

    .line 206
    sget-object v1, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 209
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 211
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/HorizontalScrollView;->isHoveringUIEnabled:Z

    .line 213
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    return-void
.end method

.method static synthetic access$100(Landroid/widget/HorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/HorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/HorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/HorizontalScrollView;)Landroid/widget/HorizontalScrollView$HoverScrollHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/HorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/HorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/widget/HorizontalScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/HorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/HorizontalScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/HorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/HorizontalScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$400(Landroid/widget/HorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/HorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/HorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/HorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$702(Landroid/widget/HorizontalScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/HorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/HorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    return v0
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 308
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 311
    .local v1, childWidth:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 313
    .end local v1           #childWidth:I
    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1841
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 1842
    :cond_0
    const/4 p0, 0x0

    .line 1847
    .end local p0
    :cond_1
    :goto_0
    return p0

    .line 1844
    .restart local p0
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 1845
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1371
    if-eqz p1, :cond_0

    .line 1372
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1373
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1117
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1118
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1127
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 1129
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1130
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1131
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1132
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1133
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1135
    .local v9, viewRight:I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 1141
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    .line 1144
    .local v7, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 1146
    move-object v1, v5

    .line 1147
    move v3, v7

    .line 1130
    .end local v7           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1141
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1149
    .restart local v7       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 1153
    .local v6, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1154
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 1160
    move-object v1, v5

    goto :goto_2

    .line 1149
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 1163
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v7, :cond_7

    .line 1165
    move-object v1, v5

    .line 1166
    const/4 v3, 0x1

    goto :goto_2

    .line 1167
    :cond_7
    if-eqz v6, :cond_0

    .line 1172
    move-object v1, v5

    goto :goto_2

    .line 1179
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewIsCloserToBoundary:Z
    .end local v7           #viewIsFullyContained:Z
    .end local v8           #viewLeft:I
    .end local v9           #viewRight:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "leftFocus"
    .parameter "left"
    .parameter "preferredFocusable"

    .prologue
    .line 1086
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1087
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 1088
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 1090
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 1096
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1054
    const/4 v1, 0x0

    .line 1055
    .local v1, scrollRange:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1056
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1057
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1060
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 451
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 452
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 453
    .local v1, scrollX:I
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 454
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 459
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollX:I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 464
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 256
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 257
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 258
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 259
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 260
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 261
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    .line 262
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    .line 263
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    .line 264
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    .line 265
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    .line 266
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 472
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 474
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1350
    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1731
    if-ne p0, p1, :cond_1

    .line 1736
    :cond_0
    :goto_0
    return v1

    .line 1735
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1736
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 1358
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1359
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1361
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 923
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 924
    .local v1, pointerId:I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 928
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 929
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 930
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 931
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 932
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 935
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 928
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 481
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1262
    const/4 v4, 0x1

    .line 1264
    .local v4, handled:Z
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1265
    .local v6, width:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1266
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 1267
    .local v1, containerRight:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    const/4 v3, 0x1

    .line 1269
    .local v3, goLeft:Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1270
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1271
    move-object v5, p0

    .line 1274
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 1275
    const/4 v4, 0x0

    .line 1281
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1283
    :cond_1
    return v4

    .line 1267
    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1277
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    .line 1278
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1277
    .end local v2           #delta:I
    :cond_4
    sub-int v2, p3, v1

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1533
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1536
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1538
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1540
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1541
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1543
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1554
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1555
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1556
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1557
    if-eqz p2, :cond_2

    .line 1558
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1563
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v2

    .line 1555
    goto :goto_0

    .line 1560
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 275
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 284
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 302
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 1295
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1296
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1298
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1300
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1302
    .local v3, maxJump:I
    if-eqz v4, :cond_3

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1303
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1304
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1305
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1306
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    .line 1307
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1330
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1337
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1338
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1339
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestFocus()Z

    .line 1340
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1342
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1310
    .end local v6           #scrollDelta:I
    :cond_3
    move v6, v3

    .line 1312
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1313
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    .line 1324
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1327
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_0

    .line 1314
    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1316
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1318
    .local v1, daRight:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 1320
    .local v5, screenRight:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1321
    sub-int v6, v1, v5

    goto :goto_1

    .line 1327
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1446
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1426
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1427
    .local v1, count:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1428
    .local v0, contentWidth:I
    if-nez v1, :cond_0

    .line 1441
    .end local v0           #contentWidth:I
    :goto_0
    return v0

    .line 1432
    .restart local v0       #contentWidth:I
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1433
    .local v3, scrollRange:I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1434
    .local v4, scrollX:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1435
    .local v2, overscrollRight:I
    if-gez v4, :cond_2

    .line 1436
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1441
    goto :goto_0

    .line 1437
    :cond_2
    if-le v4, v2, :cond_1

    .line 1438
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1480
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1497
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1498
    .local v3, oldX:I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 1499
    .local v4, oldY:I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1500
    .local v12, x:I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1502
    .local v13, y:I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 1503
    :cond_0
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    .line 1504
    .local v5, range:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v11

    .line 1505
    .local v11, overscrollMode:I
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_4

    if-lez v5, :cond_4

    .line 1508
    .local v10, canOverscroll:Z
    :cond_1
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1510
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1512
    if-eqz v10, :cond_2

    .line 1513
    if-gez v12, :cond_5

    if-ltz v3, :cond_5

    .line 1514
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1521
    .end local v5           #range:I
    .end local v10           #canOverscroll:Z
    .end local v11           #overscrollMode:I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1522
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1525
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_3
    return-void

    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v5       #range:I
    .restart local v11       #overscrollMode:I
    .restart local v12       #x:I
    .restart local v13       #y:I
    :cond_4
    move v10, v6

    .line 1505
    goto :goto_0

    .line 1515
    .restart local v10       #canOverscroll:Z
    :cond_5
    if-le v12, v5, :cond_2

    if-gt v3, v5, :cond_2

    .line 1516
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1575
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v7

    .line 1629
    :cond_0
    :goto_0
    return v5

    .line 1577
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1578
    .local v6, width:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1579
    .local v3, screenLeft:I
    add-int v4, v3, v6

    .line 1581
    .local v4, screenRight:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1584
    .local v1, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    .line 1585
    add-int/2addr v3, v1

    .line 1589
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1590
    sub-int/2addr v4, v1

    .line 1593
    :cond_3
    const/4 v5, 0x0

    .line 1595
    .local v5, scrollXDelta:I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_5

    .line 1600
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4

    .line 1602
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1609
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1610
    .local v2, right:I
    sub-int v0, v2, v4

    .line 1611
    .local v0, distanceToRight:I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1613
    goto :goto_0

    .line 1605
    .end local v0           #distanceToRight:I
    .end local v2           #right:I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_1

    .line 1613
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_0

    .line 1618
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1620
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1627
    :goto_2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 1623
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_2
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 629
    iget-object v11, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "pen_hovering"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_3

    move v4, v9

    .line 630
    .local v4, isHoveringOn:Z
    :goto_0
    iget-object v11, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "pen_hovering_list_scroll"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_4

    move v3, v9

    .line 632
    .local v3, isHoverListScrollOn:Z
    :goto_1
    iget-object v11, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    if-nez v11, :cond_0

    .line 633
    new-instance v11, Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;-><init>(Landroid/widget/HorizontalScrollView;Landroid/widget/HorizontalScrollView$1;)V

    iput-object v11, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    .line 635
    :cond_0
    iget-boolean v11, p0, Landroid/widget/HorizontalScrollView;->isHoveringUIEnabled:Z

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    if-eqz v11, :cond_1

    if-eqz v4, :cond_1

    if-nez v3, :cond_5

    .line 636
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 782
    :cond_2
    :goto_2
    return v9

    .end local v3           #isHoverListScrollOn:Z
    .end local v4           #isHoveringOn:Z
    :cond_3
    move v4, v10

    .line 629
    goto :goto_0

    .restart local v4       #isHoveringOn:Z
    :cond_4
    move v3, v10

    .line 630
    goto :goto_1

    .line 639
    .restart local v3       #isHoverListScrollOn:Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v7, v11

    .line 640
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v8, v11

    .line 641
    .local v8, y:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 642
    .local v0, childCount:I
    const/4 v1, 0x0

    .line 643
    .local v1, contentRightSide:I
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v6

    .line 645
    .local v6, range:I
    if-eqz v0, :cond_6

    .line 646
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v11

    iget v12, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    sub-int v1, v11, v12

    .line 649
    :cond_6
    iget v11, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-le v7, v11, :cond_7

    iget v11, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v11, v1, v11

    if-lt v7, v11, :cond_8

    :cond_7
    if-lez v6, :cond_8

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    if-ne v11, v13, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    if-ne v11, v13, :cond_c

    .line 652
    :cond_8
    iget-object v11, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 653
    iget-object v11, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 655
    const/4 v11, 0x1

    const/4 v12, -0x1

    :try_start_0
    invoke-static {v11, v12}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :cond_9
    :goto_3
    iget-boolean v11, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-eq v11, v9, :cond_a

    iget v9, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:I

    if-eqz v9, :cond_b

    .line 662
    :cond_a
    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 664
    const/4 v9, 0x1

    const/4 v11, -0x1

    :try_start_1
    invoke-static {v9, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 670
    :cond_b
    :goto_4
    iput v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 671
    iput v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:I

    .line 672
    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 674
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_2

    .line 656
    :catch_0
    move-exception v2

    .line 657
    .local v2, e:Landroid/os/RemoteException;
    const-string v11, "HorizontalScrollView"

    const-string v12, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 665
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 666
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "HorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 677
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_c
    iget-boolean v11, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v11, :cond_d

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    iput v11, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:I

    .line 680
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 717
    :pswitch_1
    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v10, :cond_f

    .line 718
    iput-boolean v9, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 719
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 720
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_2

    .line 682
    :pswitch_2
    iput-boolean v9, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 684
    if-ltz v7, :cond_e

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gt v7, v10, :cond_e

    .line 686
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 689
    const/16 v10, 0x11

    const/4 v11, -0x1

    :try_start_2
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 693
    :goto_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 694
    .local v5, msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 695
    iput v9, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 696
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 690
    .end local v5           #msg:Landroid/os/Message;
    :catch_2
    move-exception v2

    .line 691
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "HorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 698
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_e
    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v10, v1, v10

    if-lt v7, v10, :cond_2

    if-gt v7, v1, :cond_2

    .line 700
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 703
    const/16 v10, 0xd

    const/4 v11, -0x1

    :try_start_3
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 707
    :goto_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 708
    .restart local v5       #msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 709
    iput v13, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 710
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 704
    .end local v5           #msg:Landroid/os/Message;
    :catch_3
    move-exception v2

    .line 705
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "HorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 723
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_f
    if-ltz v7, :cond_11

    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gt v7, v10, :cond_11

    .line 725
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 728
    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_10

    .line 730
    const/16 v10, 0x11

    const/4 v11, -0x1

    :try_start_4
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 736
    :cond_10
    :goto_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 737
    .restart local v5       #msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 738
    iput v9, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 739
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 731
    .end local v5           #msg:Landroid/os/Message;
    :catch_4
    move-exception v2

    .line 732
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "HorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 741
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_11
    iget v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v10, v1, v10

    if-lt v7, v10, :cond_2

    if-gt v7, v1, :cond_2

    .line 743
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v9}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 746
    iget-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v10, :cond_12

    .line 748
    const/16 v10, 0xd

    const/4 v11, -0x1

    :try_start_5
    invoke-static {v10, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 754
    :cond_12
    :goto_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 755
    .restart local v5       #msg:Landroid/os/Message;
    iput v9, v5, Landroid/os/Message;->what:I

    .line 756
    iput v13, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 757
    iget-object v10, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v10, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 749
    .end local v5           #msg:Landroid/os/Message;
    :catch_5
    move-exception v2

    .line 750
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v10, "HorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 763
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_3
    iget-object v11, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 764
    iget-object v11, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v11, v9}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 768
    :cond_13
    const/4 v9, 0x1

    const/4 v11, -0x1

    :try_start_6
    invoke-static {v9, v11}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 773
    :goto_9
    iput v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 774
    iput v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:I

    .line 775
    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 776
    iput-boolean v10, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 777
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_2

    .line 769
    :catch_6
    move-exception v2

    .line 770
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v9, "HorizontalScrollView"

    const-string v11, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 1808
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1809
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    .line 1810
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1811
    .local v2, scrollX:I
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1812
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1813
    .local v1, restoreCount:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 1815
    .local v0, height:I
    const/high16 v4, 0x4387

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1816
    neg-int v4, v0

    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1817
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1818
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1819
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1821
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1823
    .end local v0           #height:I
    .end local v1           #restoreCount:I
    :cond_1
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1824
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1825
    .restart local v1       #restoreCount:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 1826
    .local v3, width:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 1828
    .restart local v0       #height:I
    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1829
    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1831
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v0, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1832
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1833
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1835
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1838
    .end local v0           #height:I
    .end local v1           #restoreCount:I
    .end local v2           #scrollX:I
    .end local v3           #width:I
    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x11

    const/16 v6, 0x42

    .line 404
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 406
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v7

    if-nez v7, :cond_2

    .line 407
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 408
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 409
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 410
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, v0, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 412
    .local v3, nextFocused:Landroid/view/View;
    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    invoke-virtual {v3, v6}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 447
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v3           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v4

    .line 418
    :cond_2
    const/4 v2, 0x0

    .line 419
    .local v2, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 420
    const/4 v1, 0x0

    .line 421
    .local v1, direction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 442
    :goto_1
    if-eqz v2, :cond_3

    .line 443
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->playSoundEffect(I)V

    .end local v1           #direction:I
    :cond_3
    move v4, v2

    .line 447
    goto :goto_0

    .line 423
    .restart local v1       #direction:I
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 424
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v2

    .line 428
    :goto_2
    const/16 v1, 0x11

    .line 429
    goto :goto_1

    .line 426
    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v2

    goto :goto_2

    .line 431
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 432
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v2

    .line 436
    :goto_3
    const/16 v1, 0x42

    .line 437
    goto :goto_1

    .line 434
    :cond_5
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v2

    goto :goto_3

    .line 439
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_4
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v4, v6

    goto :goto_4

    .line 421
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 17
    .parameter "velocityX"

    .prologue
    .line 1747
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1748
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    sub-int v16, v1, v2

    .line 1749
    .local v16, width:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 1751
    .local v15, right:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sub-int v7, v15, v16

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    div-int/lit8 v10, v16, 0x2

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1754
    if-lez p1, :cond_3

    const/4 v13, 0x1

    .line 1756
    .local v13, movingRight:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 1757
    .local v12, currentFocused:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v12}, Landroid/widget/HorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 1760
    .local v14, newFocused:Landroid/view/View;
    if-nez v14, :cond_0

    .line 1761
    move-object/from16 v14, p0

    .line 1764
    :cond_0
    if-eq v14, v12, :cond_1

    .line 1765
    if-eqz v13, :cond_4

    const/16 v1, 0x42

    :goto_1
    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 1768
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1770
    .end local v12           #currentFocused:Landroid/view/View;
    .end local v13           #movingRight:Z
    .end local v14           #newFocused:Landroid/view/View;
    .end local v15           #right:I
    .end local v16           #width:I
    :cond_2
    return-void

    .line 1754
    .restart local v15       #right:I
    .restart local v16       #width:I
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 1765
    .restart local v12       #currentFocused:Landroid/view/View;
    .restart local v13       #movingRight:Z
    .restart local v14       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v1, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1231
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1232
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 1234
    .local v3, width:I
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 1235
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1237
    if-eqz v1, :cond_0

    .line 1238
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1239
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1240
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1241
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1242
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1246
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 1231
    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 227
    :goto_0
    return v1

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 223
    .local v0, length:I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 224
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 227
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 251
    const/high16 v0, 0x3f00

    iget v1, p0, Landroid/widget/FrameLayout;->mRight:I

    iget v2, p0, Landroid/widget/FrameLayout;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 233
    const/4 v3, 0x0

    .line 243
    :goto_0
    return v3

    .line 236
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 237
    .local v0, length:I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 238
    .local v1, rightEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 239
    .local v2, span:I
    if-ge v2, v0, :cond_1

    .line 240
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 243
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1451
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1456
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1459
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1461
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1462
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1467
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1469
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1472
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1475
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1476
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 939
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 940
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 968
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 942
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 944
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 945
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v1, v5

    .line 949
    .local v1, hscroll:F
    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 950
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 951
    .local v0, delta:I
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    .line 952
    .local v4, range:I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 953
    .local v3, oldScrollX:I
    add-int v2, v3, v0

    .line 954
    .local v2, newScrollX:I
    if-gez v2, :cond_3

    .line 955
    const/4 v2, 0x0

    .line 959
    :cond_1
    :goto_2
    if-eq v2, v3, :cond_0

    .line 960
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-super {p0, v2, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 961
    const/4 v5, 0x1

    goto :goto_0

    .line 947
    .end local v0           #delta:I
    .end local v1           #hscroll:F
    .end local v2           #newScrollX:I
    .end local v3           #oldScrollX:I
    .end local v4           #range:I
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1       #hscroll:F
    goto :goto_1

    .line 956
    .restart local v0       #delta:I
    .restart local v2       #newScrollX:I
    .restart local v3       #oldScrollX:I
    .restart local v4       #range:I
    :cond_3
    if-le v2, v4, :cond_1

    .line 957
    move v2, v4

    goto :goto_2

    .line 940
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1044
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1045
    const-class v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1046
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1047
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1048
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1049
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1050
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1051
    return-void

    .line 1046
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1028
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1029
    const-class v1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1030
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    .line 1031
    .local v0, scrollRange:I
    if-lez v0, :cond_1

    .line 1032
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1033
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lez v1, :cond_0

    .line 1034
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1036
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 1037
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1040
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 505
    .local v7, action:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return v0

    .line 509
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 597
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 520
    :pswitch_1
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 521
    .local v8, activePointerId:I
    if-eq v8, v2, :cond_2

    .line 526
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 530
    .local v10, pointerIndex:I
    if-ltz v10, :cond_0

    .line 533
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v11, v1

    .line 534
    .local v11, x:I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 535
    .local v12, xDiff:I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    .line 536
    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 537
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 538
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 539
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 540
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 546
    .end local v8           #activePointerId:I
    .end local v10           #pointerIndex:I
    .end local v11           #x:I
    .end local v12           #xDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v11, v1

    .line 547
    .restart local v11       #x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v11, v1}, Landroid/widget/HorizontalScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 548
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 549
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 557
    :cond_3
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 558
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 560
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initOrResetVelocityTracker()V

    .line 561
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 568
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v1

    if-eqz v1, :cond_4

    move v3, v0

    :cond_4
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 575
    .end local v11           #x:I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 576
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 577
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 582
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 583
    .local v9, index:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 584
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_1

    .line 588
    .end local v9           #index:I
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 589
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    goto/16 :goto_1

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1697
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1698
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1700
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1703
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1706
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1707
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 361
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 363
    iget-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 368
    .local v5, widthMode:I
    if-eqz v5, :cond_0

    .line 372
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 373
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 375
    .local v4, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 376
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 378
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v7, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 380
    .local v1, childHeightMeasureSpec:I
    iget v6, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 381
    iget v6, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 382
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 384
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v3, 0x0

    .line 980
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 981
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 982
    iput p2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 983
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidateParentIfNeeded()V

    .line 984
    if-eqz p3, :cond_0

    .line 985
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 991
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    .line 992
    return-void

    .line 988
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1657
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1658
    const/16 p1, 0x42

    .line 1663
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1668
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1676
    :cond_1
    :goto_2
    return v1

    .line 1659
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1660
    const/16 p1, 0x11

    goto :goto_0

    .line 1663
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1672
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1676
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1711
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1713
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1714
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1717
    :cond_1
    iget v3, p0, Landroid/widget/FrameLayout;->mRight:I

    iget v4, p0, Landroid/widget/FrameLayout;->mLeft:I

    sub-int v1, v3, v4

    .line 1719
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1720
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1721
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1722
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1723
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .parameter "ev"

    .prologue
    .line 787
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 790
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 792
    .local v16, action:I
    move/from16 v0, v16

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 917
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 794
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 795
    const/4 v3, 0x0

    goto :goto_1

    .line 797
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 798
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    .line 799
    .local v23, parent:Landroid/view/ViewParent;
    if-eqz v23, :cond_2

    .line 800
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 808
    .end local v23           #parent:Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 809
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 813
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 814
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    goto :goto_0

    .line 797
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 818
    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 819
    .local v17, activePointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v26, v0

    .line 820
    .local v26, x:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int v4, v3, v26

    .line 821
    .local v4, deltaX:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v3, v5, :cond_6

    .line 822
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    .line 823
    .restart local v23       #parent:Landroid/view/ViewParent;
    if-eqz v23, :cond_5

    .line 824
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 826
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 827
    if-lez v4, :cond_b

    .line 828
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    sub-int/2addr v4, v3

    .line 833
    .end local v23           #parent:Landroid/view/ViewParent;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 835
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 837
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move/from16 v20, v0

    .line 838
    .local v20, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    move/from16 v21, v0

    .line 839
    .local v21, oldY:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v8

    .line 840
    .local v8, range:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v22

    .line 841
    .local v22, overscrollMode:I
    if-eqz v22, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_c

    if-lez v8, :cond_c

    :cond_7
    const/16 v18, 0x1

    .line 844
    .local v18, canOverscroll:Z
    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 849
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 851
    if-eqz v18, :cond_0

    .line 852
    add-int v24, v20, v4

    .line 853
    .local v24, pulledToX:I
    if-gez v24, :cond_d

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 855
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    .line 856
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 864
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 866
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 830
    .end local v8           #range:I
    .end local v18           #canOverscroll:Z
    .end local v20           #oldX:I
    .end local v21           #oldY:I
    .end local v22           #overscrollMode:I
    .end local v24           #pulledToX:I
    .restart local v23       #parent:Landroid/view/ViewParent;
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    add-int/2addr v4, v3

    goto/16 :goto_3

    .line 841
    .end local v23           #parent:Landroid/view/ViewParent;
    .restart local v8       #range:I
    .restart local v20       #oldX:I
    .restart local v21       #oldY:I
    .restart local v22       #overscrollMode:I
    :cond_c
    const/16 v18, 0x0

    goto :goto_4

    .line 858
    .restart local v18       #canOverscroll:Z
    .restart local v24       #pulledToX:I
    :cond_d
    move/from16 v0, v24

    if-le v0, v8, :cond_9

    .line 859
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 860
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    .line 861
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5

    .line 872
    .end local v4           #deltaX:I
    .end local v8           #range:I
    .end local v17           #activePointerIndex:I
    .end local v18           #canOverscroll:Z
    .end local v20           #oldX:I
    .end local v21           #oldY:I
    .end local v22           #overscrollMode:I
    .end local v24           #pulledToX:I
    .end local v26           #x:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    .line 874
    .local v25, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    int-to-float v5, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 875
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v19, v0

    .line 877
    .local v19, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_e

    .line 878
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    if-le v3, v5, :cond_f

    .line 879
    move/from16 v0, v19

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->fling(I)V

    .line 888
    :cond_e
    :goto_6
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 889
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 890
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 892
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_0

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 894
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 881
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 883
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_6

    .line 899
    .end local v19           #initialVelocity:I
    .end local v25           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 900
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 901
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 903
    :cond_10
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 904
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 905
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_0

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 914
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 792
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1195
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1196
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 1198
    .local v3, width:I
    if-eqz v1, :cond_2

    .line 1199
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1200
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1201
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1202
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1203
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1204
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1213
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1215
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v4

    .line 1195
    goto :goto_0

    .line 1208
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_2
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1209
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_0

    .line 1210
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 996
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1023
    :goto_0
    return v2

    .line 999
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 1023
    goto :goto_0

    .line 1001
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1002
    goto :goto_0

    .line 1004
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1005
    .local v1, viewportWidth:I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1006
    .local v0, targetScrollX:I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v0, v4, :cond_2

    .line 1007
    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1010
    goto :goto_0

    .line 1012
    .end local v0           #targetScrollX:I
    .end local v1           #viewportWidth:I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .line 1013
    goto :goto_0

    .line 1015
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1016
    .restart local v1       #viewportWidth:I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1017
    .restart local v0       #targetScrollX:I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v0, v4, :cond_4

    .line 1018
    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 1021
    goto :goto_0

    .line 999
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1634
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1635
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1640
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1641
    return-void

    .line 1638
    :cond_0
    iput-object p2, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1683
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1686
    invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 485
    if-eqz p1, :cond_0

    .line 486
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 488
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 489
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1691
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1692
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1693
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1780
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1781
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1782
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p1

    .line 1783
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p2

    .line 1784
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1785
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1788
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 338
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 339
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    .line 340
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 342
    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .parameter "hoverdelay"

    .prologue
    .line 622
    iput p1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 623
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 604
    if-eqz p1, :cond_0

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .parameter "hoverspeed"

    .prologue
    .line 615
    iput p1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 616
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 1792
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1793
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1794
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1795
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1796
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1802
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1803
    return-void

    .line 1799
    :cond_1
    iput-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1800
    iput-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 356
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 357
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 973
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1387
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1408
    :goto_0
    return-void

    .line 1391
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1392
    .local v0, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 1393
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1394
    .local v5, width:I
    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1395
    .local v3, right:I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1396
    .local v2, maxX:I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1397
    .local v4, scrollX:I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1399
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1400
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1407
    .end local v2           #maxX:I
    .end local v3           #right:I
    .end local v4           #scrollX:I
    .end local v5           #width:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    goto :goto_0

    .line 1402
    :cond_1
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1403
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1405
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1417
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1418
    return-void
.end method
