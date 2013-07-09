.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$ViewLocationHolder;,
        Landroid/view/ViewGroup$ChildListForAccessibility;,
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field public static final CLIP_BOUNDS:I = 0x0

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I = null

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field static final FLAG_ALPHA_LOWER_THAN_ONE:I = 0x1000

.field static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field static final FLAG_ANIMATION_DONE:I = 0x10

.field static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final OPTICAL_BOUNDS:I = 0x1

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewGroup"

.field private static sDebugLines:[F

.field private static sDebugPaint:Landroid/graphics/Paint;


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mCachePaint:Landroid/graphics/Paint;

.field private mChildAcceptsDrag:Z

.field private mChildCountWithTransientState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field final mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mCurrentDrag:Landroid/view/DragEvent;

.field private mCurrentDragView:Landroid/view/View;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragNotifiedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mDrawLayers:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I

.field private mHoveredSelf:Z

.field mInvalidateRegion:Landroid/graphics/RectF;

.field mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutMode:I

.field private mLayoutSuppressed:Z

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private final mLocalPoint:Landroid/graphics/PointF;

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x6t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 421
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 139
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 183
    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 387
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 417
    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 5323
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 422
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 423
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 426
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 139
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 183
    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 387
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 417
    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 5323
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 427
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 428
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 429
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 432
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 139
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 183
    iput v1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 387
    iput-boolean v1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 417
    iput v1, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 5323
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 433
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 434
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 435
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewGroup;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return v0
.end method

.method static synthetic access$302(Landroid/view/ViewGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/graphics/Canvas;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 87
    invoke-static/range {p0 .. p5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;IIIII)V

    return-void
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 5216
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5218
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 5219
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5222
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5223
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 3730
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3731
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3732
    .local v1, count:I
    array-length v2, v0

    .line 3733
    .local v2, size:I
    if-ne p2, v1, :cond_2

    .line 3734
    if-ne v2, v1, :cond_0

    .line 3735
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3736
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3737
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3739
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 3757
    :cond_1
    :goto_0
    return-void

    .line 3740
    :cond_2
    if-ge p2, v1, :cond_4

    .line 3741
    if-ne v2, v1, :cond_3

    .line 3742
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3743
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3744
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3745
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3749
    :goto_1
    aput-object p1, v0, p2

    .line 3750
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3751
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_1

    .line 3752
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_0

    .line 3747
    :cond_3
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 3755
    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .parameter "child"
    .parameter "pointerIdBits"

    .prologue
    .line 2331
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 2332
    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2333
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2334
    return-object v0
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 6
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x40

    .line 3665
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_0

    .line 3668
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 3671
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3672
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3676
    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_2

    .line 3677
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3680
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3681
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 3684
    :cond_3
    if-eqz p4, :cond_a

    .line 3685
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3690
    :goto_0
    if-gez p2, :cond_4

    .line 3691
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3694
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 3697
    if-eqz p4, :cond_b

    .line 3698
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 3703
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3704
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3707
    :cond_5
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3708
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_7

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_7

    .line 3709
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3710
    .local v1, lastKeepOn:Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3711
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3712
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v2, :cond_6

    .line 3713
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3715
    :cond_6
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3718
    .end local v1           #lastKeepOn:Z
    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3720
    iget v2, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 3721
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3724
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3725
    invoke-virtual {p0, p1, v5}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 3727
    :cond_9
    return-void

    .line 3687
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    :cond_a
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3700
    :cond_b
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 3817
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3818
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3819
    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 1
    .parameter "child"

    .prologue
    .line 2394
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 2291
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_2

    .line 2292
    const/4 v8, 0x0

    .line 2293
    .local v8, syntheticEvent:Z
    if-nez p1, :cond_0

    .line 2294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2295
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2297
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2298
    const/4 v8, 0x1

    .line 2301
    .end local v0           #now:J
    :cond_0
    iget-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v9, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v9, :cond_1

    .line 2302
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2303
    const/4 v2, 0x1

    iget-object v3, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 2301
    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 2305
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2307
    if-eqz v8, :cond_2

    .line 2308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2311
    .end local v8           #syntheticEvent:Z
    .end local v9           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private cancelHoverTarget(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 1887
    const/4 v10, 0x0

    .line 1888
    .local v10, predecessor:Landroid/view/ViewGroup$HoverTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1889
    .local v11, target:Landroid/view/ViewGroup$HoverTarget;
    :goto_0
    if-eqz v11, :cond_0

    .line 1890
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1891
    .local v9, next:Landroid/view/ViewGroup$HoverTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 1892
    if-nez v10, :cond_1

    .line 1893
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1897
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1899
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1900
    .local v0, now:J
    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1902
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1903
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1904
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1910
    .end local v0           #now:J
    .end local v8           #event:Landroid/view/MotionEvent;
    .end local v9           #next:Landroid/view/ViewGroup$HoverTarget;
    :cond_0
    return-void

    .line 1895
    .restart local v9       #next:Landroid/view/ViewGroup$HoverTarget;
    :cond_1
    iput-object v9, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    .line 1907
    :cond_2
    move-object v10, v11

    .line 1908
    move-object v11, v9

    .line 1909
    goto :goto_0
.end method

.method private cancelTouchTarget(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 2364
    const/4 v10, 0x0

    .line 2365
    .local v10, predecessor:Landroid/view/ViewGroup$TouchTarget;
    iget-object v11, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2366
    .local v11, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v11, :cond_0

    .line 2367
    iget-object v9, v11, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2368
    .local v9, next:Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, v11, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v2, p1, :cond_2

    .line 2369
    if-nez v10, :cond_1

    .line 2370
    iput-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2374
    :goto_1
    invoke-virtual {v11}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2377
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2379
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2380
    invoke-virtual {p1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2381
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2387
    .end local v0           #now:J
    .end local v8           #event:Landroid/view/MotionEvent;
    .end local v9           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    return-void

    .line 2372
    .restart local v9       #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    iput-object v9, v10, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 2384
    :cond_2
    move-object v10, v11

    .line 2385
    move-object v11, v9

    .line 2386
    goto :goto_0
.end method

.method private clearTouchTargets()V
    .locals 3

    .prologue
    .line 2276
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2277
    .local v1, target:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v1, :cond_1

    .line 2279
    :cond_0
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2280
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2281
    move-object v1, v0

    .line 2282
    if-nez v1, :cond_0

    .line 2283
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2285
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    return-void
.end method

.method private debugDraw()Z
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dispatchHoverEventForHoverUI(Landroid/view/MotionEvent;)Z
    .locals 23
    .parameter "event"

    .prologue
    .line 1464
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1467
    .local v4, action:I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 1468
    .local v14, interceptHover:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1470
    move-object/from16 v9, p1

    .line 1471
    .local v9, eventNoHistory:Landroid/view/MotionEvent;
    const/4 v11, 0x0

    .line 1475
    .local v11, handled:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1476
    .local v10, firstOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1479
    if-nez v14, :cond_5

    const/16 v22, 0xa

    move/from16 v0, v22

    if-eq v4, v0, :cond_5

    .line 1480
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    .line 1481
    .local v20, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    .line 1482
    .local v21, y:F
    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1483
    .local v8, childrenCount:I
    if-eqz v8, :cond_5

    .line 1484
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1485
    .local v7, children:[Landroid/view/View;
    move-object v12, v10

    .line 1487
    .local v12, hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    :cond_0
    :goto_0
    if-eqz v12, :cond_5

    .line 1488
    const/4 v5, 0x0

    .line 1489
    .local v5, bSentExitEvent:Z
    add-int/lit8 v13, v8, -0x1

    .local v13, i:I
    :goto_1
    if-ltz v13, :cond_4

    .line 1490
    aget-object v6, v7, v13

    .line 1491
    .local v6, child:Landroid/view/View;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1489
    :cond_1
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 1494
    :cond_2
    iget-object v0, v12, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-ne v0, v6, :cond_1

    .line 1495
    const/16 v22, 0x7

    move/from16 v0, v22

    if-ne v4, v0, :cond_3

    .line 1496
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1499
    :cond_3
    invoke-static {v9}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1500
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1501
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1503
    invoke-virtual {v9, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1505
    iget-object v0, v12, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v17, v0

    .line 1506
    .local v17, nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    move-object/from16 v10, v17

    .line 1508
    invoke-virtual {v12}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1509
    move-object v12, v10

    .line 1510
    const/4 v5, 0x1

    .line 1515
    .end local v6           #child:Landroid/view/View;
    .end local v17           #nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    :cond_4
    if-nez v5, :cond_0

    if-eqz v12, :cond_0

    .line 1516
    iget-object v12, v12, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_0

    .line 1523
    .end local v5           #bSentExitEvent:Z
    .end local v7           #children:[Landroid/view/View;
    .end local v8           #childrenCount:I
    .end local v12           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v13           #i:I
    .end local v20           #x:F
    .end local v21           #y:F
    :cond_5
    if-nez v14, :cond_e

    const/16 v22, 0xa

    move/from16 v0, v22

    if-eq v4, v0, :cond_e

    .line 1524
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    .line 1525
    .restart local v20       #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    .line 1526
    .restart local v21       #y:F
    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1527
    .restart local v8       #childrenCount:I
    if-eqz v8, :cond_e

    .line 1528
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1529
    .restart local v7       #children:[Landroid/view/View;
    const/4 v15, 0x0

    .line 1530
    .local v15, lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v13, v8, -0x1

    .restart local v13       #i:I
    :goto_2
    if-ltz v13, :cond_e

    .line 1531
    aget-object v6, v7, v13

    .line 1532
    .restart local v6       #child:Landroid/view/View;
    invoke-static {v6}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1530
    :cond_6
    :goto_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 1539
    :cond_7
    move-object v12, v10

    .line 1541
    .restart local v12       #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v18, 0x0

    .line 1542
    .local v18, predecessor:Landroid/view/ViewGroup$HoverTarget;
    :goto_4
    if-nez v12, :cond_8

    .line 1543
    invoke-static {v6}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v12

    .line 1544
    const/16 v19, 0x0

    .line 1564
    .local v19, wasHovered:Z
    :goto_5
    if-eqz v15, :cond_b

    .line 1565
    iput-object v12, v15, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1566
    move-object v15, v12

    .line 1573
    :goto_6
    if-nez v11, :cond_6

    .line 1574
    const/16 v22, 0x9

    move/from16 v0, v22

    if-ne v4, v0, :cond_c

    .line 1575
    if-nez v19, :cond_6

    .line 1577
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v22

    or-int v11, v11, v22

    goto :goto_3

    .line 1548
    .end local v19           #wasHovered:Z
    :cond_8
    iget-object v0, v12, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-ne v0, v6, :cond_a

    .line 1549
    if-eqz v18, :cond_9

    .line 1550
    iget-object v0, v12, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1554
    :goto_7
    const/16 v22, 0x0

    move-object/from16 v0, v22

    iput-object v0, v12, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1555
    const/16 v19, 0x1

    .line 1556
    .restart local v19       #wasHovered:Z
    goto :goto_5

    .line 1552
    .end local v19           #wasHovered:Z
    :cond_9
    iget-object v10, v12, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_7

    .line 1559
    :cond_a
    move-object/from16 v18, v12

    .line 1560
    iget-object v12, v12, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_4

    .line 1568
    .restart local v19       #wasHovered:Z
    :cond_b
    move-object v15, v12

    .line 1569
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_6

    .line 1580
    :cond_c
    const/16 v22, 0x7

    move/from16 v0, v22

    if-ne v4, v0, :cond_6

    .line 1581
    if-nez v19, :cond_d

    .line 1583
    invoke-static {v9}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1584
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1585
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v22

    or-int v11, v11, v22

    .line 1587
    invoke-virtual {v9, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1589
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v22

    or-int v11, v11, v22

    goto :goto_3

    .line 1593
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v22

    or-int v11, v11, v22

    goto/16 :goto_3

    .line 1605
    .end local v6           #child:Landroid/view/View;
    .end local v7           #children:[Landroid/view/View;
    .end local v8           #childrenCount:I
    .end local v12           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v13           #i:I
    .end local v15           #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v18           #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .end local v19           #wasHovered:Z
    .end local v20           #x:F
    .end local v21           #y:F
    :cond_e
    :goto_8
    if-eqz v10, :cond_11

    .line 1606
    iget-object v6, v10, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 1609
    .restart local v6       #child:Landroid/view/View;
    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v4, v0, :cond_f

    .line 1611
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v22

    or-int v11, v11, v22

    .line 1627
    :goto_9
    iget-object v0, v10, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v17, v0

    .line 1628
    .restart local v17       #nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v10}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1629
    move-object/from16 v10, v17

    .line 1630
    goto :goto_8

    .line 1616
    .end local v17           #nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    :cond_f
    const/16 v22, 0x7

    move/from16 v0, v22

    if-ne v4, v0, :cond_10

    .line 1617
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1620
    :cond_10
    invoke-static {v9}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1621
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1622
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1624
    invoke-virtual {v9, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_9

    .line 1633
    .end local v6           #child:Landroid/view/View;
    :cond_11
    if-nez v11, :cond_14

    const/16 v16, 0x1

    .line 1634
    .local v16, newHoveredSelf:Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 1635
    if-eqz v16, :cond_12

    .line 1637
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    or-int v11, v11, v22

    .line 1679
    :cond_12
    :goto_b
    move-object/from16 v0, p1

    if-eq v9, v0, :cond_13

    .line 1680
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1684
    :cond_13
    return v11

    .line 1633
    .end local v16           #newHoveredSelf:Z
    :cond_14
    const/16 v16, 0x0

    goto :goto_a

    .line 1640
    .restart local v16       #newHoveredSelf:Z
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v22, v0

    if-eqz v22, :cond_16

    .line 1642
    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v4, v0, :cond_17

    .line 1644
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    or-int v11, v11, v22

    .line 1656
    :goto_c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 1659
    :cond_16
    if-eqz v16, :cond_12

    .line 1661
    const/16 v22, 0x9

    move/from16 v0, v22

    if-ne v4, v0, :cond_19

    .line 1663
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    or-int v11, v11, v22

    .line 1664
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_b

    .line 1648
    :cond_17
    const/16 v22, 0x7

    move/from16 v0, v22

    if-ne v4, v0, :cond_18

    .line 1649
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1651
    :cond_18
    invoke-static {v9}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1652
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1653
    move-object/from16 v0, p0

    invoke-super {v0, v9}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1654
    invoke-virtual {v9, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_c

    .line 1665
    :cond_19
    const/16 v22, 0x7

    move/from16 v0, v22

    if-ne v4, v0, :cond_12

    .line 1667
    invoke-static {v9}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1668
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1669
    move-object/from16 v0, p0

    invoke-super {v0, v9}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    or-int v11, v11, v22

    .line 1670
    invoke-virtual {v9, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1672
    move-object/from16 v0, p0

    invoke-super {v0, v9}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    or-int v11, v11, v22

    .line 1673
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto/16 :goto_b
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .parameter "event"
    .parameter "child"

    .prologue
    .line 2063
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v5, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 2064
    .local v1, offsetX:F
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v5, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 2067
    .local v2, offsetY:F
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2068
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 2069
    .local v3, transformedEvent:Landroid/view/MotionEvent;
    invoke-virtual {v3, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2070
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2071
    invoke-virtual {p2, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2072
    .local v0, handled:Z
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 2078
    .end local v3           #transformedEvent:Landroid/view/MotionEvent;
    :goto_0
    return v0

    .line 2074
    .end local v0           #handled:Z
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2075
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2076
    .restart local v0       #handled:Z
    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 9
    .parameter "event"
    .parameter "cancel"
    .parameter "child"
    .parameter "desiredPointerIdBits"

    .prologue
    const/4 v7, 0x3

    .line 2434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2435
    .local v4, oldAction:I
    if-nez p2, :cond_0

    if-ne v4, v7, :cond_2

    .line 2436
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2437
    if-nez p3, :cond_1

    .line 2438
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2442
    .local v0, handled:Z
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2497
    .end local v0           #handled:Z
    :goto_1
    return v0

    .line 2440
    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_0

    .line 2447
    .end local v0           #handled:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    .line 2448
    .local v5, oldPointerIdBits:I
    and-int v1, v5, p4

    .line 2452
    .local v1, newPointerIdBits:I
    if-nez v1, :cond_3

    .line 2453
    const/4 v0, 0x0

    goto :goto_1

    .line 2461
    :cond_3
    if-ne v1, v5, :cond_7

    .line 2462
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2463
    :cond_4
    if-nez p3, :cond_5

    .line 2464
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_1

    .line 2466
    .end local v0           #handled:Z
    :cond_5
    iget v7, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2467
    .local v2, offsetX:F
    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2468
    .local v3, offsetY:F
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2470
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2472
    .restart local v0       #handled:Z
    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 2476
    .end local v0           #handled:Z
    .end local v2           #offsetX:F
    .end local v3           #offsetY:F
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 2482
    .local v6, transformedEvent:Landroid/view/MotionEvent;
    :goto_2
    if-nez p3, :cond_8

    .line 2483
    invoke-super {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2496
    .restart local v0       #handled:Z
    :goto_3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 2478
    .end local v0           #handled:Z
    .end local v6           #transformedEvent:Landroid/view/MotionEvent;
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v6

    .restart local v6       #transformedEvent:Landroid/view/MotionEvent;
    goto :goto_2

    .line 2485
    :cond_8
    iget v7, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2486
    .restart local v2       #offsetX:F
    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2487
    .restart local v3       #offsetY:F
    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2488
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2489
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2492
    :cond_9
    invoke-virtual {p3, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_3
.end method

.method private static drawRect(Landroid/graphics/Canvas;IIIII)V
    .locals 2
    .parameter "canvas"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "color"

    .prologue
    .line 2982
    invoke-static {}, Landroid/view/ViewGroup;->getDebugPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 2983
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2985
    invoke-static {p1, p2, p3, p4}, Landroid/view/ViewGroup;->getDebugLines(IIII)[F

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 2986
    return-void
.end method

.method private exitHoverTargets()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1876
    iget-boolean v2, p0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v2, :cond_1

    .line 1877
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1878
    .local v0, now:J
    const/16 v4, 0xa

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1880
    .local v8, event:Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1881
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1882
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1884
    .end local v0           #now:J
    .end local v8           #event:Landroid/view/MotionEvent;
    :cond_1
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .parameter "spec"
    .parameter "padding"
    .parameter "childDimension"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 5131
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 5132
    .local v3, specMode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 5134
    .local v4, specSize:I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5136
    .local v2, size:I
    const/4 v1, 0x0

    .line 5137
    .local v1, resultSize:I
    const/4 v0, 0x0

    .line 5139
    .local v0, resultMode:I
    sparse-switch v3, :sswitch_data_0

    .line 5195
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 5142
    :sswitch_0
    if-ltz p2, :cond_1

    .line 5143
    move v1, p2

    .line 5144
    const/high16 v0, 0x4000

    goto :goto_0

    .line 5145
    :cond_1
    if-ne p2, v8, :cond_2

    .line 5147
    move v1, v2

    .line 5148
    const/high16 v0, 0x4000

    goto :goto_0

    .line 5149
    :cond_2
    if-ne p2, v7, :cond_0

    .line 5152
    move v1, v2

    .line 5153
    const/high16 v0, -0x8000

    goto :goto_0

    .line 5159
    :sswitch_1
    if-ltz p2, :cond_3

    .line 5161
    move v1, p2

    .line 5162
    const/high16 v0, 0x4000

    goto :goto_0

    .line 5163
    :cond_3
    if-ne p2, v8, :cond_4

    .line 5166
    move v1, v2

    .line 5167
    const/high16 v0, -0x8000

    goto :goto_0

    .line 5168
    :cond_4
    if-ne p2, v7, :cond_0

    .line 5171
    move v1, v2

    .line 5172
    const/high16 v0, -0x8000

    goto :goto_0

    .line 5178
    :sswitch_2
    if-ltz p2, :cond_5

    .line 5180
    move v1, p2

    .line 5181
    const/high16 v0, 0x4000

    goto :goto_0

    .line 5182
    :cond_5
    if-ne p2, v8, :cond_6

    .line 5185
    const/4 v1, 0x0

    .line 5186
    const/4 v0, 0x0

    goto :goto_0

    .line 5187
    :cond_6
    if-ne p2, v7, :cond_0

    .line 5190
    const/4 v1, 0x0

    .line 5191
    const/4 v0, 0x0

    goto :goto_0

    .line 5139
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getDebugLines(IIII)[F
    .locals 3
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 6393
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    if-nez v0, :cond_0

    .line 6394
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    .line 6397
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 6398
    add-int/lit8 p3, p3, -0x1

    .line 6400
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x0

    int-to-float v2, p0

    aput v2, v0, v1

    .line 6401
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    .line 6402
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x2

    int-to-float v2, p2

    aput v2, v0, v1

    .line 6403
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x3

    int-to-float v2, p1

    aput v2, v0, v1

    .line 6405
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x4

    int-to-float v2, p2

    aput v2, v0, v1

    .line 6406
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x5

    int-to-float v2, p1

    aput v2, v0, v1

    .line 6407
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x6

    int-to-float v2, p2

    aput v2, v0, v1

    .line 6408
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/4 v1, 0x7

    add-int/lit8 v2, p3, 0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 6410
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x8

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 6411
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0x9

    int-to-float v2, p3

    aput v2, v0, v1

    .line 6412
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xa

    int-to-float v2, p0

    aput v2, v0, v1

    .line 6413
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xb

    int-to-float v2, p3

    aput v2, v0, v1

    .line 6415
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xc

    int-to-float v2, p0

    aput v2, v0, v1

    .line 6416
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xd

    int-to-float v2, p3

    aput v2, v0, v1

    .line 6417
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xe

    int-to-float v2, p0

    aput v2, v0, v1

    .line 6418
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    const/16 v1, 0xf

    int-to-float v2, p1

    aput v2, v0, v1

    .line 6420
    sget-object v0, Landroid/view/ViewGroup;->sDebugLines:[F

    return-object v0
.end method

.method private static getDebugPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 6385
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 6386
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    .line 6387
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6389
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->sDebugPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .parameter "child"

    .prologue
    .line 2318
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v0, :cond_1

    .line 2319
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 2323
    .end local v0           #target:Landroid/view/ViewGroup$TouchTarget;
    :goto_1
    return-object v0

    .line 2318
    .restart local v0       #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 2323
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 465
    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 468
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 469
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 470
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 471
    .local v3, attr:I
    packed-switch v3, :pswitch_data_0

    .line 469
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 473
    :pswitch_0
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 476
    :pswitch_1
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_1

    .line 479
    :pswitch_2
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_1

    .line 482
    :pswitch_3
    const/4 v6, 0x2

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_1

    .line 485
    :pswitch_4
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_1

    .line 488
    :pswitch_5
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_1

    .line 491
    :pswitch_6
    const/4 v6, -0x1

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 492
    .local v5, id:I
    if-lez v5, :cond_0

    .line 493
    iget-object v6, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    .line 497
    .end local v5           #id:I
    :pswitch_7
    sget-object v6, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    .line 500
    :pswitch_8
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_1

    .line 503
    :pswitch_9
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 504
    .local v2, animateLayoutChanges:Z
    if-eqz v2, :cond_0

    .line 505
    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    .line 511
    .end local v2           #animateLayoutChanges:Z
    .end local v3           #attr:I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 512
    return-void

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private initViewGroup()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 443
    invoke-direct {p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 446
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 447
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 448
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 449
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 450
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 452
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 453
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 456
    :cond_1
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 458
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 459
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 461
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 462
    return-void
.end method

.method private invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "dirty"

    .prologue
    const v2, 0x8000

    const/4 v3, 0x0

    .line 4487
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    .line 4489
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4491
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/ViewGroup;->mRight:I

    iget v1, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {p3, v3, v3, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4494
    :cond_1
    iget v0, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v0, :cond_2

    .line 4495
    iget-object v0, p0, Landroid/view/ViewGroup;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4497
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4498
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->transformRect(Landroid/graphics/Rect;)V

    .line 4501
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 4505
    :goto_0
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAnimationListener()V
    .locals 3

    .prologue
    .line 3165
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3166
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3168
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 3169
    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 3174
    .local v0, end:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3177
    .end local v0           #end:Ljava/lang/Runnable;
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 3178
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3179
    iget v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 3180
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 3184
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3185
    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "event"

    .prologue
    .line 2005
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_0

    .line 2008
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    goto :goto_0
.end method

.method private removeFromArray(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 3761
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3762
    .local v0, children:[Landroid/view/View;
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3763
    :cond_0
    aget-object v2, v0, p1

    iput-object v4, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3765
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3766
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 3767
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    .line 3774
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_5

    .line 3775
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 3776
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 3780
    :cond_2
    :goto_1
    return-void

    .line 3768
    :cond_3
    if-ltz p1, :cond_4

    if-ge p1, v1, :cond_4

    .line 3769
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3770
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    goto :goto_0

    .line 3772
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 3777
    :cond_5
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v2, p1, :cond_2

    .line 3778
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1
.end method

.method private removeFromArray(II)V
    .locals 6
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 3784
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3785
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3787
    .local v1, childrenCount:I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3788
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3790
    .local v2, end:I
    if-ne p1, v2, :cond_0

    .line 3814
    :goto_0
    return-void

    .line 3794
    :cond_0
    if-ne v2, v1, :cond_1

    .line 3795
    move v3, p1

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 3796
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3797
    aput-object v5, v0, v3

    .line 3795
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3800
    .end local v3           #i:I
    :cond_1
    move v3, p1

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 3801
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3800
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3806
    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3808
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_3
    if-ge v3, v1, :cond_3

    .line 3809
    aput-object v5, v0, v3

    .line 3808
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3813
    :cond_3
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_0
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 5
    .parameter "pointerIdBits"

    .prologue
    .line 2341
    const/4 v1, 0x0

    .line 2342
    .local v1, predecessor:Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2343
    .local v2, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v2, :cond_2

    .line 2344
    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 2345
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 2346
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2347
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    .line 2348
    if-nez v1, :cond_0

    .line 2349
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2353
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2354
    move-object v2, v0

    .line 2355
    goto :goto_0

    .line 2351
    :cond_0
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 2358
    :cond_1
    move-object v1, v2

    .line 2359
    move-object v2, v0

    .line 2360
    goto :goto_0

    .line 2361
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 3
    .parameter "index"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 3926
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_0

    .line 3927
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3930
    :cond_0
    const/4 v0, 0x0

    .line 3931
    .local v0, clearChildFocus:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_1

    .line 3932
    invoke-virtual {p2}, Landroid/view/View;->unFocus()V

    .line 3933
    const/4 v0, 0x1

    .line 3936
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3938
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 3939
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 3941
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3943
    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3948
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3949
    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 3952
    :cond_4
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3954
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3956
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3958
    if-eqz v0, :cond_5

    .line 3959
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3960
    invoke-virtual {p0}, Landroid/view/ViewGroup;->ensureInputFocusOnFirstFocusable()V

    .line 3963
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3964
    invoke-virtual {p2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3966
    :cond_6
    return-void

    .line 3944
    :cond_7
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    .line 3945
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method private removeViewInternal(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3918
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3919
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 3920
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3922
    :cond_0
    return-void
.end method

.method private removeViewsInternal(II)V
    .locals 9
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v7, 0x0

    .line 4002
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 4003
    .local v4, focused:Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_5

    const/4 v2, 0x1

    .line 4004
    .local v2, detach:Z
    :goto_0
    const/4 v1, 0x0

    .line 4006
    .local v1, clearChildFocus:Landroid/view/View;
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4007
    .local v0, children:[Landroid/view/View;
    add-int v3, p1, p2

    .line 4009
    .local v3, end:I
    move v5, p1

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_7

    .line 4010
    aget-object v6, v0, v5

    .line 4012
    .local v6, view:Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_0

    .line 4013
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4016
    :cond_0
    if-ne v6, v4, :cond_1

    .line 4017
    invoke-virtual {v6}, Landroid/view/View;->unFocus()V

    .line 4018
    move-object v1, v6

    .line 4021
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4023
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 4024
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 4026
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4028
    :cond_2
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 4033
    :cond_3
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4034
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4037
    :cond_4
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 4039
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 4009
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #children:[Landroid/view/View;
    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v2           #detach:Z
    .end local v3           #end:I
    .end local v5           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_5
    move v2, v7

    .line 4003
    goto :goto_0

    .line 4029
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v2       #detach:Z
    .restart local v3       #end:I
    .restart local v5       #i:I
    .restart local v6       #view:Landroid/view/View;
    :cond_6
    if-eqz v2, :cond_3

    .line 4030
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_2

    .line 4042
    .end local v6           #view:Landroid/view/View;
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 4044
    if-eqz v1, :cond_8

    .line 4045
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 4046
    invoke-virtual {p0}, Landroid/view/ViewGroup;->ensureInputFocusOnFirstFocusable()V

    .line 4048
    :cond_8
    return-void
.end method

.method private static resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 2265
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2266
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2267
    const/4 v0, 0x1

    .line 2269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    .line 2255
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 2256
    invoke-static {p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2257
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2258
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .locals 2
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 4852
    if-eqz p2, :cond_0

    .line 4853
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4857
    :goto_0
    return-void

    .line 4855
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1920
    .local p1, childrenForAccessibility:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x1

    invoke-static {p0, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v1

    .line 1922
    .local v1, children:Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v2

    .line 1923
    .local v2, childrenCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1924
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1925
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 1926
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1927
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1923
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1929
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1934
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childrenCount:I
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v4

    .restart local v2       #childrenCount:I
    .restart local v3       #i:I
    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 1936
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 8
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x2

    .line 871
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 873
    .local v4, focusableCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 875
    .local v3, descendantFocusability:I
    const/high16 v6, 0x6

    if-ne v3, v6, :cond_0

    and-int/lit8 v6, p3, 0x2

    if-ne v6, v7, :cond_2

    .line 877
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 878
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 880
    .local v1, children:[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 881
    aget-object v0, v1, v5

    .line 882
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_1

    .line 883
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 880
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 892
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v5           #i:I
    :cond_2
    const/high16 v6, 0x4

    if-ne v3, v6, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v4, v6, :cond_3

    and-int/lit8 v6, p3, 0x2

    if-ne v6, v7, :cond_4

    .line 897
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 899
    :cond_4
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .prologue
    .line 5497
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 953
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 954
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 956
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 957
    aget-object v0, v1, v3

    .line 958
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 959
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 956
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 962
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3464
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3465
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .parameter "child"
    .parameter "index"

    .prologue
    .line 3481
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3482
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 3483
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3484
    if-nez v0, :cond_0

    .line 3485
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3488
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3489
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3502
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3503
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3504
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3505
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3506
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 3541
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3542
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3543
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 3544
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 3519
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3520
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 3629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 3647
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3648
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 3649
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3650
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 1
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 3833
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3835
    .local v0, animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 3836
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 3837
    .restart local v0       #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3840
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 3841
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 3842
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/high16 v2, -0x8000

    .line 4190
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 4192
    if-gez p2, :cond_0

    .line 4193
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4196
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 4198
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4199
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4201
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 4203
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4204
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4206
    :cond_1
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1092
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1093
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 1094
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 1095
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 1096
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1098
    :cond_0
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 4677
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 3563
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public childAccessibilityStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 1943
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->childAccessibilityStateChanged(Landroid/view/View;)V

    .line 1946
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 5505
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 5506
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 5508
    :cond_0
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 6
    .parameter "child"
    .parameter "childHasTransientState"

    .prologue
    .line 713
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v2

    .line 714
    .local v2, oldHasTransientState:Z
    if-eqz p2, :cond_1

    .line 715
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    .line 720
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasTransientState()Z

    move-result v1

    .line 721
    .local v1, newHasTransientState:Z
    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_0

    if-eq v2, v1, :cond_0

    .line 723
    :try_start_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, v1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :cond_0
    :goto_1
    return-void

    .line 717
    .end local v1           #newHasTransientState:Z
    :cond_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    goto :goto_0

    .line 724
    .restart local v1       #newHasTransientState:Z
    :catch_0
    move-exception v0

    .line 725
    .local v0, e:Ljava/lang/AbstractMethodError;
    const-string v3, "ViewGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not fully implement ViewParent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3659
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3660
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 757
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 760
    :cond_0
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 1

    .prologue
    .line 5204
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5205
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5206
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 5208
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    .line 770
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v1, :cond_0

    .line 771
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 777
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 774
    .local v0, focused:Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 775
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    .line 2956
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2957
    .local v2, count:I
    const/4 v4, 0x0

    .line 2959
    .local v4, visibilities:[I
    if-eqz p3, :cond_1

    .line 2960
    new-array v4, v2, [I

    .line 2961
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2962
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2963
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    .line 2964
    aget v5, v4, v3

    if-nez v5, :cond_0

    .line 2965
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2961
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2970
    .end local v1           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2972
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 2973
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 2974
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2973
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2978
    .end local v3           #i:I
    :cond_2
    return-object v0
.end method

.method protected debug(I)V
    .locals 6
    .parameter "depth"

    .prologue
    .line 4973
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 4976
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 4977
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4978
    .local v3, output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4979
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4981
    .end local v3           #output:Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_1

    .line 4982
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4983
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4984
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4986
    .end local v3           #output:Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4987
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4988
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 4989
    .local v0, child:Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 4987
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4992
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_3

    .line 4993
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4994
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4995
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4997
    .end local v3           #output:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4276
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4277
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 4288
    :cond_0
    return-void

    .line 4281
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4282
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4284
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 4285
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4286
    aput-object v4, v0, v2

    .line 4284
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method protected detachViewFromParent(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 4241
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 4242
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 4223
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 4224
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 4260
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 4261
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 6
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 2710
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x40

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2711
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2712
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v5, -0x400001

    and-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2714
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2715
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2716
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2717
    aget-object v0, v1, v3

    .line 2718
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2716
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2721
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 5
    .parameter "attachInfo"
    .parameter "visibility"

    .prologue
    .line 1076
    and-int/lit8 v4, p2, 0xc

    if-nez v4, :cond_0

    .line 1077
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1078
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1079
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1080
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1081
    aget-object v0, v1, v3

    .line 1082
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v4, p2

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1080
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1086
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 1056
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1057
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1058
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1059
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1060
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1059
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1062
    :cond_0
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2808
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2811
    invoke-direct {p0}, Landroid/view/ViewGroup;->exitHoverTargets()V

    .line 2814
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 2817
    iput-object v4, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 2818
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v3, :cond_0

    .line 2819
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {v3}, Landroid/view/DragEvent;->recycle()V

    .line 2820
    iput-object v4, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 2823
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2824
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2825
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2826
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2825
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2828
    :cond_1
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2829
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4
    .parameter "hint"

    .prologue
    .line 982
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 983
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 984
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 985
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 986
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 985
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 988
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 20
    .parameter "event"

    .prologue
    .line 1106
    const/4 v11, 0x0

    .line 1107
    .local v11, retval:Z
    move-object/from16 v0, p1

    iget v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1108
    .local v14, tx:F
    move-object/from16 v0, p1

    iget v15, v0, Landroid/view/DragEvent;->mY:F

    .line 1110
    .local v15, ty:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    .line 1113
    .local v12, root:Landroid/view/ViewRootImpl;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mAction:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1257
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v11, :cond_1

    .line 1259
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1261
    :cond_1
    return v11

    .line 1116
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1119
    invoke-static/range {p1 .. p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    .line 1121
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 1127
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1128
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1129
    .local v7, count:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1130
    .local v6, children:[Landroid/view/View;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v7, :cond_4

    .line 1131
    aget-object v5, v6, v9

    .line 1132
    .local v5, child:Landroid/view/View;
    iget v0, v5, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v5, Landroid/view/View;->mPrivateFlags2:I

    .line 1133
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_2

    .line 1134
    aget-object v17, v6, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    move-result v8

    .line 1135
    .local v8, handled:Z
    if-eqz v8, :cond_2

    .line 1136
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1130
    .end local v8           #handled:Z
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1123
    .end local v5           #child:Landroid/view/View;
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 1142
    .restart local v6       #children:[Landroid/view/View;
    .restart local v7       #count:I
    .restart local v9       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1143
    const/4 v11, 0x1

    goto :goto_0

    .line 1149
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1152
    .restart local v5       #child:Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1153
    iget v0, v5, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v5, Landroid/view/View;->mPrivateFlags2:I

    .line 1154
    invoke-virtual {v5}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_3

    .line 1157
    .end local v5           #child:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/DragEvent;->recycle()V

    .line 1159
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1164
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1165
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1171
    :pswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1179
    .local v13, target:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v0, v13, :cond_9

    .line 1180
    invoke-virtual {v12, v13}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;)V

    .line 1182
    move-object/from16 v0, p1

    iget v4, v0, Landroid/view/DragEvent;->mAction:I

    .line 1184
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1186
    .local v16, view:Landroid/view/View;
    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1187
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1188
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1189
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1191
    .end local v16           #view:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1194
    if-eqz v13, :cond_8

    .line 1195
    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1196
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1197
    iget v0, v13, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v13, Landroid/view/View;->mPrivateFlags2:I

    .line 1198
    invoke-virtual {v13}, Landroid/view/View;->refreshDrawableState()V

    .line 1200
    :cond_8
    move-object/from16 v0, p1

    iput v4, v0, Landroid/view/DragEvent;->mAction:I

    .line 1204
    .end local v4           #action:I
    :cond_9
    if-eqz v13, :cond_0

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1208
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1210
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1211
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_0

    .line 1228
    .end local v13           #target:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1230
    .restart local v16       #view:Landroid/view/View;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1231
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1232
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1234
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    goto/16 :goto_0

    .line 1240
    .end local v16           #view:Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1241
    .restart local v13       #target:Landroid/view/View;
    if-eqz v13, :cond_0

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1245
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1246
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1247
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_0

    .line 1113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 3030
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3031
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3032
    .local v8, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 3034
    .local v17, flags:I
    and-int/lit8 v22, v17, 0x8

    if-eqz v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 3035
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x40

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/4 v6, 0x1

    .line 3037
    .local v6, cache:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v22

    if-nez v22, :cond_2

    const/4 v5, 0x1

    .line 3038
    .local v5, buildCache:Z
    :goto_1
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v11, :cond_3

    .line 3039
    aget-object v7, v8, v18

    .line 3040
    .local v7, child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-nez v22, :cond_0

    .line 3041
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 3042
    .local v20, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v7, v1, v2, v11}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 3043
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 3044
    if-eqz v6, :cond_0

    .line 3045
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 3046
    if-eqz v5, :cond_0

    .line 3047
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 3038
    .end local v20           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 3035
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v7           #child:Landroid/view/View;
    .end local v18           #i:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 3037
    .restart local v6       #cache:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 3053
    .restart local v5       #buildCache:Z
    .restart local v18       #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 3054
    .local v10, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 3055
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3058
    :cond_4
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 3060
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3061
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x11

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3063
    if-eqz v6, :cond_5

    .line 3064
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    const v23, 0x8000

    or-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3067
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 3068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 3072
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v10           #controller:Landroid/view/animation/LayoutAnimationController;
    .end local v18           #i:I
    :cond_6
    const/16 v21, 0x0

    .line 3073
    .local v21, saveCount:I
    and-int/lit8 v22, v17, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    const/4 v9, 0x1

    .line 3074
    .local v9, clipToPadding:Z
    :goto_3
    if-eqz v9, :cond_7

    .line 3075
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 3076
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mRight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mBottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3083
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x41

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3084
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3086
    const/16 v19, 0x0

    .line 3087
    .local v19, more:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v14

    .line 3089
    .local v14, drawingTime:J
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 3090
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v11, :cond_e

    .line 3091
    aget-object v7, v8, v18

    .line 3092
    .restart local v7       #child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_9

    .line 3093
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 3090
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 3073
    .end local v7           #child:Landroid/view/View;
    .end local v9           #clipToPadding:Z
    .end local v14           #drawingTime:J
    .end local v18           #i:I
    .end local v19           #more:Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3097
    .restart local v9       #clipToPadding:Z
    .restart local v14       #drawingTime:J
    .restart local v19       #more:Z
    :cond_b
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_5
    move/from16 v0, v18

    if-ge v0, v11, :cond_e

    .line 3098
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v22

    aget-object v7, v8, v22

    .line 3099
    .restart local v7       #child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_c

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_d

    .line 3100
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 3097
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 3106
    .end local v7           #child:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 3107
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3108
    .local v12, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v13, v22, -0x1

    .line 3110
    .local v13, disappearingCount:I
    move/from16 v18, v13

    :goto_6
    if-ltz v18, :cond_f

    .line 3111
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 3112
    .restart local v7       #child:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 3110
    add-int/lit8 v18, v18, -0x1

    goto :goto_6

    .line 3116
    .end local v7           #child:Landroid/view/View;
    .end local v12           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13           #disappearingCount:I
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->debugDraw()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 3117
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 3120
    :cond_10
    if-eqz v9, :cond_11

    .line 3121
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3125
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 3127
    and-int/lit8 v22, v17, 0x4

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 3128
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3131
    :cond_12
    and-int/lit8 v22, v17, 0x10

    if-nez v22, :cond_13

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    if-nez v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v22

    if-eqz v22, :cond_13

    if-nez v19, :cond_13

    .line 3136
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3137
    new-instance v16, Landroid/view/ViewGroup$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$1;-><init>(Landroid/view/ViewGroup;)V

    .line 3142
    .local v16, end:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3144
    .end local v16           #end:Ljava/lang/Runnable;
    :cond_13
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    .prologue
    .line 2697
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2698
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2699
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2700
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2701
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2700
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2703
    :cond_0
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2870
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2871
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 2046
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 2047
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2051
    :goto_0
    return v0

    .line 2048
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 2049
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2051
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 2017
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2018
    .local v2, childrenCount:I
    if-eqz v2, :cond_2

    .line 2019
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2020
    .local v1, children:[Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 2021
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 2023
    .local v5, y:F
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 2024
    aget-object v0, v1, v3

    .line 2025
    .local v0, child:Landroid/view/View;
    invoke-static {v0}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v0, v6}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2023
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2030
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2031
    const/4 v6, 0x1

    .line 2037
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #i:I
    .end local v4           #x:F
    .end local v5           #y:F
    :goto_1
    return v6

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_1
.end method

.method protected dispatchGetDisplayList()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v7, -0x8000

    .line 3197
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3198
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3199
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 3200
    aget-object v0, v1, v3

    .line 3201
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hasStaticLayer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3203
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 3204
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const v6, 0x7fffffff

    and-int/2addr v4, v6

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3205
    invoke-virtual {v0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    .line 3206
    iput-boolean v5, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 3199
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 3203
    goto :goto_1

    .line 3209
    .end local v0           #child:Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .parameter "event"

    .prologue
    .line 1693
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHoveringUIEnabled()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1694
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1696
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEventForHoverUI(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 1872
    :cond_0
    :goto_0
    return v10

    .line 1700
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1703
    .local v4, action:I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 1704
    .local v13, interceptHover:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1706
    move-object/from16 v8, p1

    .line 1707
    .local v8, eventNoHistory:Landroid/view/MotionEvent;
    const/4 v10, 0x0

    .line 1711
    .local v10, handled:Z
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1712
    .local v9, firstOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1713
    if-nez v13, :cond_5

    const/16 v21, 0xa

    move/from16 v0, v21

    if-eq v4, v0, :cond_5

    .line 1714
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 1715
    .local v19, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 1716
    .local v20, y:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1717
    .local v7, childrenCount:I
    if-eqz v7, :cond_5

    .line 1718
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1719
    .local v6, children:[Landroid/view/View;
    const/4 v14, 0x0

    .line 1720
    .local v14, lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v12, v7, -0x1

    .local v12, i:I
    :goto_1
    if-ltz v12, :cond_5

    .line 1721
    aget-object v5, v6, v12

    .line 1722
    .local v5, child:Landroid/view/View;
    invoke-static {v5}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 1720
    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 1729
    :cond_3
    move-object v11, v9

    .line 1731
    .local v11, hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v17, 0x0

    .line 1732
    .local v17, predecessor:Landroid/view/ViewGroup$HoverTarget;
    :goto_2
    if-nez v11, :cond_6

    .line 1733
    invoke-static {v5}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v11

    .line 1734
    const/16 v18, 0x0

    .line 1754
    .local v18, wasHovered:Z
    :goto_3
    if-eqz v14, :cond_9

    .line 1755
    iput-object v11, v14, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1756
    move-object v14, v11

    .line 1763
    :goto_4
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_a

    .line 1764
    if-nez v18, :cond_4

    .line 1766
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1785
    :cond_4
    :goto_5
    if-eqz v10, :cond_2

    .line 1793
    .end local v5           #child:Landroid/view/View;
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #childrenCount:I
    .end local v11           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v12           #i:I
    .end local v14           #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v17           #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .end local v18           #wasHovered:Z
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_5
    :goto_6
    if-eqz v9, :cond_e

    .line 1794
    iget-object v5, v9, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 1797
    .restart local v5       #child:Landroid/view/View;
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_c

    .line 1799
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1815
    :goto_7
    iget-object v0, v9, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v16, v0

    .line 1816
    .local v16, nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v9}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1817
    move-object/from16 v9, v16

    .line 1818
    goto :goto_6

    .line 1738
    .end local v16           #nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v6       #children:[Landroid/view/View;
    .restart local v7       #childrenCount:I
    .restart local v11       #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v12       #i:I
    .restart local v14       #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v17       #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .restart local v19       #x:F
    .restart local v20       #y:F
    :cond_6
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-ne v0, v5, :cond_8

    .line 1739
    if-eqz v17, :cond_7

    .line 1740
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1744
    :goto_8
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1745
    const/16 v18, 0x1

    .line 1746
    .restart local v18       #wasHovered:Z
    goto :goto_3

    .line 1742
    .end local v18           #wasHovered:Z
    :cond_7
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_8

    .line 1749
    :cond_8
    move-object/from16 v17, v11

    .line 1750
    iget-object v11, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_2

    .line 1758
    .restart local v18       #wasHovered:Z
    :cond_9
    move-object v14, v11

    .line 1759
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_4

    .line 1769
    :cond_a
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_4

    .line 1770
    if-nez v18, :cond_b

    .line 1772
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1773
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1774
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1776
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1778
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    goto :goto_5

    .line 1782
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    goto :goto_5

    .line 1804
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #childrenCount:I
    .end local v11           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v12           #i:I
    .end local v14           #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v17           #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .end local v18           #wasHovered:Z
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_c
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_d

    .line 1805
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1808
    :cond_d
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1809
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1810
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1812
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_7

    .line 1821
    .end local v5           #child:Landroid/view/View;
    :cond_e
    if-nez v10, :cond_10

    const/4 v15, 0x1

    .line 1822
    .local v15, newHoveredSelf:Z
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v15, v0, :cond_11

    .line 1823
    if-eqz v15, :cond_f

    .line 1825
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1867
    :cond_f
    :goto_a
    move-object/from16 v0, p1

    if-eq v8, v0, :cond_0

    .line 1868
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 1821
    .end local v15           #newHoveredSelf:Z
    :cond_10
    const/4 v15, 0x0

    goto :goto_9

    .line 1828
    .restart local v15       #newHoveredSelf:Z
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    .line 1830
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_13

    .line 1832
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1844
    :goto_b
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 1847
    :cond_12
    if-eqz v15, :cond_f

    .line 1849
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_15

    .line 1851
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1852
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_a

    .line 1836
    :cond_13
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_14

    .line 1837
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1839
    :cond_14
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1840
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1841
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1842
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_b

    .line 1853
    :cond_15
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_f

    .line 1855
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1856
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1857
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1858
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1860
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1861
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto/16 :goto_a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1404
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 1405
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1408
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1409
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1421
    :cond_1
    :goto_0
    return v0

    .line 1412
    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 1413
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1418
    :cond_3
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 1419
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1421
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1391
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1392
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1396
    :goto_0
    return v0

    .line 1393
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1394
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1396
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1429
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1430
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1434
    :goto_0
    return v0

    .line 1431
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1432
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1434
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 2736
    const/4 v3, 0x0

    .line 2737
    .local v3, handled:Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->includeForAccessibility()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2738
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    .line 2739
    if-eqz v3, :cond_0

    move v5, v3

    .line 2759
    :goto_0
    return v5

    .line 2744
    :cond_0
    const/4 v5, 0x1

    invoke-static {p0, v5}, Landroid/view/ViewGroup$ChildListForAccessibility;->obtain(Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$ChildListForAccessibility;

    move-result-object v2

    .line 2746
    .local v2, children:Landroid/view/ViewGroup$ChildListForAccessibility;
    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildCount()I

    move-result v1

    .line 2747
    .local v1, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 2748
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$ChildListForAccessibility;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2749
    .local v0, child:Landroid/view/View;
    iget v5, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_1

    .line 2750
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2751
    if-eqz v3, :cond_1

    .line 2757
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    move v5, v3

    goto :goto_0

    .line 2747
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2757
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    .line 2759
    const/4 v5, 0x0

    goto :goto_0

    .line 2757
    .end local v1           #childCount:I
    .end local v4           #i:I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/view/ViewGroup$ChildListForAccessibility;->recycle()V

    throw v5
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 2878
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2879
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2880
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2881
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2882
    aget-object v0, v1, v3

    .line 2883
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 2884
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2881
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2887
    .end local v0           #c:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 2850
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2851
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2852
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2853
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2854
    aget-object v0, v1, v3

    .line 2855
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 2856
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2853
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2859
    .end local v0           #c:Landroid/view/View;
    :cond_1
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .locals 4
    .parameter "screenState"

    .prologue
    .line 2725
    invoke-super {p0, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2727
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2728
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2729
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2730
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 2729
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2732
    :cond_0
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 4
    .parameter "activated"

    .prologue
    .line 3315
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3316
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3317
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3318
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 3317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3320
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 5
    .parameter "pressed"

    .prologue
    .line 3324
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3325
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3326
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3327
    aget-object v0, v1, v3

    .line 3331
    .local v0, child:Landroid/view/View;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3332
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 3326
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3335
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4
    .parameter "selected"

    .prologue
    .line 3303
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3304
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3305
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3306
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 3305
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3308
    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    .prologue
    .line 2682
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2683
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2684
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2685
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2686
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2685
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2688
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 1363
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1365
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1366
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1367
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1368
    aget-object v0, v1, v3

    .line 1369
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1367
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1371
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2898
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2899
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .parameter "ev"

    .prologue
    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 2090
    :cond_0
    const/4 v14, 0x0

    .line 2091
    .local v14, handled:Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 2092
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2093
    .local v4, action:I
    and-int/lit16 v6, v4, 0xff

    .line 2096
    .local v6, actionMasked:I
    if-nez v6, :cond_1

    .line 2100
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2101
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2106
    :cond_1
    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 2108
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v26, v0

    const/high16 v27, 0x8

    and-int v26, v26, v27

    if-eqz v26, :cond_8

    const/4 v13, 0x1

    .line 2109
    .local v13, disallowIntercept:Z
    :goto_0
    if-nez v13, :cond_9

    .line 2110
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    .line 2111
    .local v18, intercepted:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2122
    .end local v13           #disallowIntercept:Z
    :goto_1
    invoke-static/range {p0 .. p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v26

    if-nez v26, :cond_3

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v6, v0, :cond_b

    :cond_3
    const/4 v9, 0x1

    .line 2127
    .local v9, canceled:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v26, v0

    const/high16 v27, 0x20

    and-int v26, v26, v27

    if-eqz v26, :cond_c

    const/16 v22, 0x1

    .line 2128
    .local v22, split:Z
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_Framework_InvalidateFlag4SplitTouch"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 2129
    const/16 v22, 0x1

    .line 2131
    :cond_4
    const/16 v19, 0x0

    .line 2132
    .local v19, newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    const/4 v7, 0x0

    .line 2133
    .local v7, alreadyDispatchedToNewTouchTarget:Z
    if-nez v9, :cond_12

    if-nez v18, :cond_12

    .line 2134
    if-eqz v6, :cond_6

    if-eqz v22, :cond_5

    const/16 v26, 0x5

    move/from16 v0, v26

    if-eq v6, v0, :cond_6

    :cond_5
    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v6, v0, :cond_12

    .line 2137
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 2138
    .local v5, actionIndex:I
    if-eqz v22, :cond_d

    const/16 v26, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    shl-int v16, v26, v27

    .line 2143
    .local v16, idBitsToAssign:I
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 2145
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2146
    .local v12, childrenCount:I
    if-eqz v12, :cond_f

    .line 2149
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2150
    .local v11, children:[Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    .line 2151
    .local v24, x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v25

    .line 2153
    .local v25, y:F
    add-int/lit8 v15, v12, -0x1

    .local v15, i:I
    :goto_5
    if-ltz v15, :cond_f

    .line 2154
    aget-object v10, v11, v15

    .line 2155
    .local v10, child:Landroid/view/View;
    invoke-static {v10}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v26

    if-eqz v26, :cond_7

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 2153
    :cond_7
    add-int/lit8 v15, v15, -0x1

    goto :goto_5

    .line 2108
    .end local v5           #actionIndex:I
    .end local v7           #alreadyDispatchedToNewTouchTarget:Z
    .end local v9           #canceled:Z
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v12           #childrenCount:I
    .end local v15           #i:I
    .end local v16           #idBitsToAssign:I
    .end local v18           #intercepted:Z
    .end local v19           #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v22           #split:Z
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2113
    .restart local v13       #disallowIntercept:Z
    :cond_9
    const/16 v18, 0x0

    .restart local v18       #intercepted:Z
    goto/16 :goto_1

    .line 2118
    .end local v13           #disallowIntercept:Z
    .end local v18           #intercepted:Z
    :cond_a
    const/16 v18, 0x1

    .restart local v18       #intercepted:Z
    goto/16 :goto_1

    .line 2122
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 2127
    .restart local v9       #canceled:Z
    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 2138
    .restart local v5       #actionIndex:I
    .restart local v7       #alreadyDispatchedToNewTouchTarget:Z
    .restart local v19       #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v22       #split:Z
    :cond_d
    const/16 v16, -0x1

    goto :goto_4

    .line 2160
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #children:[Landroid/view/View;
    .restart local v12       #childrenCount:I
    .restart local v15       #i:I
    .restart local v16       #idBitsToAssign:I
    .restart local v24       #x:F
    .restart local v25       #y:F
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v19

    .line 2161
    if-eqz v19, :cond_10

    .line 2164
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v26, v0

    or-int v26, v26, v16

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2182
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v15           #i:I
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_f
    :goto_6
    if-nez v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-eqz v26, :cond_12

    .line 2185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v19, v0

    .line 2186
    :goto_7
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-eqz v26, :cond_11

    .line 2187
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v19, v0

    goto :goto_7

    .line 2168
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #children:[Landroid/view/View;
    .restart local v15       #i:I
    .restart local v24       #x:F
    .restart local v25       #y:F
    :cond_10
    invoke-static {v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 2169
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 2171
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 2172
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 2173
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 2174
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 2175
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v10, v1}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v19

    .line 2176
    const/4 v7, 0x1

    .line 2177
    goto :goto_6

    .line 2189
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v15           #i:I
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_11
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v26, v0

    or-int v26, v26, v16

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 2195
    .end local v5           #actionIndex:I
    .end local v12           #childrenCount:I
    .end local v16           #idBitsToAssign:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-nez v26, :cond_17

    .line 2197
    const/16 v26, 0x0

    const/16 v27, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v14

    .line 2234
    :cond_13
    if-nez v9, :cond_14

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v6, v0, :cond_14

    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v6, v0, :cond_1e

    .line 2237
    :cond_14
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 2245
    .end local v4           #action:I
    .end local v6           #actionMasked:I
    .end local v7           #alreadyDispatchedToNewTouchTarget:Z
    .end local v9           #canceled:Z
    .end local v18           #intercepted:Z
    .end local v19           #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v22           #split:Z
    :cond_15
    :goto_8
    if-nez v14, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    if-eqz v26, :cond_16

    .line 2246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 2248
    :cond_16
    return v14

    .line 2202
    .restart local v4       #action:I
    .restart local v6       #actionMasked:I
    .restart local v7       #alreadyDispatchedToNewTouchTarget:Z
    .restart local v9       #canceled:Z
    .restart local v18       #intercepted:Z
    .restart local v19       #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v22       #split:Z
    :cond_17
    const/16 v21, 0x0

    .line 2203
    .local v21, predecessor:Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v23, v0

    .line 2204
    .local v23, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_9
    if-eqz v23, :cond_13

    .line 2205
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v20, v0

    .line 2206
    .local v20, next:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v7, :cond_19

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 2207
    const/4 v14, 0x1

    .line 2228
    :cond_18
    move-object/from16 v21, v23

    .line 2229
    move-object/from16 v23, v20

    .line 2230
    goto :goto_9

    .line 2209
    :cond_19
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v26, v0

    if-eqz v26, :cond_18

    .line 2210
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v26

    if-nez v26, :cond_1a

    if-eqz v18, :cond_1c

    :cond_1a
    const/4 v8, 0x1

    .line 2212
    .local v8, cancelChild:Z
    :goto_a
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 2214
    const/4 v14, 0x1

    .line 2216
    :cond_1b
    if-eqz v8, :cond_18

    .line 2217
    if-nez v21, :cond_1d

    .line 2218
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 2222
    :goto_b
    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 2223
    move-object/from16 v23, v20

    .line 2224
    goto :goto_9

    .line 2210
    .end local v8           #cancelChild:Z
    :cond_1c
    const/4 v8, 0x0

    goto :goto_a

    .line 2220
    .restart local v8       #cancelChild:Z
    :cond_1d
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_b

    .line 2238
    .end local v8           #cancelChild:Z
    .end local v20           #next:Landroid/view/ViewGroup$TouchTarget;
    .end local v21           #predecessor:Landroid/view/ViewGroup$TouchTarget;
    .end local v23           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_1e
    if-eqz v22, :cond_15

    const/16 v26, 0x6

    move/from16 v0, v26

    if-ne v6, v0, :cond_15

    .line 2239
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 2240
    .restart local v5       #actionIndex:I
    const/16 v26, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    shl-int v17, v26, v27

    .line 2241
    .local v17, idBitsToRemove:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto/16 :goto_8
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1442
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 1443
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 1446
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1447
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1459
    :cond_1
    :goto_0
    return v0

    .line 1450
    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 1451
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1456
    :cond_3
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 1457
    iget-object v1, p0, Landroid/view/ViewGroup;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1459
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 744
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 1030
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1031
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1032
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1033
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1034
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 1033
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1036
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 938
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 939
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 940
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 941
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 942
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 944
    :cond_0
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 1351
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1353
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1354
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1355
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1356
    aget-object v0, v1, v3

    .line 1357
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1355
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1359
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 1043
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1044
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1045
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1046
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1047
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1046
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1049
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3223
    invoke-virtual {p2, p1, p0, p3, p4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 5415
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 5417
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 5418
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_0

    .line 5419
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5423
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5424
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5426
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 5427
    aget-object v0, v1, v3

    .line 5428
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 5429
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 5426
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5433
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 5302
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 5303
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5304
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5305
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5306
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5307
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5309
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5318
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 5321
    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    return-void

    .line 5311
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    .line 5312
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 5314
    :cond_3
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 5315
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    .end local p0
    :goto_0
    return-object p0

    .line 831
    .restart local p0
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 834
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "outLocalPoint"

    .prologue
    .line 1267
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1268
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1269
    .local v1, children:[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1270
    aget-object v0, v1, v3

    .line 1271
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1269
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1275
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1279
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 6
    .parameter "accessibilityId"

    .prologue
    .line 917
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 918
    .local v3, foundView:Landroid/view/View;
    if-eqz v3, :cond_0

    move-object v5, v3

    .line 930
    :goto_0
    return-object v5

    .line 921
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 922
    .local v2, childrenCount:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 923
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 924
    aget-object v0, v1, v4

    .line 925
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 926
    if-eqz v3, :cond_1

    move-object v5, v3

    .line 927
    goto :goto_0

    .line 923
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 930
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3429
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3448
    .end local p0
    :goto_0
    return-object p0

    .line 3433
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3434
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3436
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3437
    aget-object v2, v3, v0

    .line 3439
    .local v2, v:Landroid/view/View;
    if-eq v2, p2, :cond_1

    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3440
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3442
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3443
    goto :goto_0

    .line 3436
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3448
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewToTakeAccessibilityFocusFromHover(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "child"
    .parameter "descendant"

    .prologue
    .line 1953
    invoke-virtual {p0}, Landroid/view/ViewGroup;->includeForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isActionableForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1959
    .end local p0
    :goto_0
    return-object p0

    .line 1956
    .restart local p0
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 1957
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->findViewToTakeAccessibilityFocusFromHover(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 1959
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    .line 3375
    iget v4, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v4, :cond_0

    .line 3394
    .end local p0
    :goto_0
    return-object p0

    .line 3379
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3380
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3382
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3383
    aget-object v2, v3, v0

    .line 3385
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3386
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3388
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3389
    goto :goto_0

    .line 3382
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3394
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .parameter "tag"

    .prologue
    .line 3402
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3421
    .end local p0
    :goto_0
    return-object p0

    .line 3406
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3407
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3409
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3410
    aget-object v2, v3, v0

    .line 3412
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3413
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3415
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3416
    goto :goto_0

    .line 3409
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3421
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 5
    .parameter
    .parameter "text"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 903
    .local p1, outViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 904
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 905
    .local v2, childrenCount:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 906
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 907
    aget-object v0, v1, v3

    .line 908
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 910
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 906
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 913
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "view"
    .parameter "animation"

    .prologue
    const/high16 v2, 0x1

    .line 5233
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5234
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    .line 5235
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5236
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5238
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 5239
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 5242
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 5243
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5247
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5248
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 5251
    :cond_2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 5252
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 5255
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5257
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5259
    :cond_3
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "insets"

    .prologue
    .line 5389
    invoke-super {p0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 5390
    .local v2, done:Z
    if-nez v2, :cond_0

    .line 5391
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5392
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5393
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 5394
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 5395
    if-eqz v2, :cond_1

    .line 5400
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_0
    return v2

    .line 5393
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 640
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 v0, p2, 0x1000

    if-nez v0, :cond_0

    .line 644
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 648
    :goto_0
    return-object v0

    .line 645
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 648
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 597
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 609
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 611
    :cond_1
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .parameter "region"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5354
    iget v8, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x200

    if-nez v8, :cond_0

    move v4, v7

    .line 5355
    .local v4, meOpaque:Z
    :goto_0
    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 5371
    :goto_1
    return v7

    .end local v4           #meOpaque:Z
    :cond_0
    move v4, v6

    .line 5354
    goto :goto_0

    .line 5359
    .restart local v4       #meOpaque:Z
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 5360
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5361
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5362
    .local v2, count:I
    const/4 v5, 0x1

    .line 5363
    .local v5, noneOfTheChildrenAreTransparent:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 5364
    aget-object v0, v1, v3

    .line 5365
    .local v0, child:Landroid/view/View;
    iget v8, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 5366
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 5367
    const/4 v5, 0x0

    .line 5363
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5371
    .end local v0           #child:Landroid/view/View;
    :cond_4
    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v6, v7

    :cond_6
    move v7, v6

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 4965
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 4936
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "p"

    .prologue
    .line 4954
    return-object p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 5035
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_1

    .line 5036
    :cond_0
    const/4 v0, 0x0

    .line 5038
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 5024
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 3161
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 3367
    const/4 v0, 0x0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 11
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f00

    .line 4611
    iget-object v6, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v6, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4612
    .local v3, rect:Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v3, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4614
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4615
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4618
    :cond_0
    iget v6, p1, Landroid/view/View;->mLeft:I

    iget v7, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int v0, v6, v7

    .line 4619
    .local v0, dx:I
    iget v6, p1, Landroid/view/View;->mTop:I

    iget v7, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int v1, v6, v7

    .line 4621
    .local v1, dy:I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 4623
    if-eqz p3, :cond_2

    .line 4624
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4625
    iget-object v6, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v6, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 4627
    .local v2, position:[F
    :goto_1
    iget v6, p3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    aput v6, v2, v5

    .line 4628
    iget v6, p3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    aput v6, v2, v4

    .line 4629
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4630
    aget v6, v2, v5

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 4631
    aget v6, v2, v4

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p3, Landroid/graphics/Point;->y:I

    .line 4633
    .end local v2           #position:[F
    :cond_1
    iget v6, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 4634
    iget v6, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v1

    iput v6, p3, Landroid/graphics/Point;->y:I

    .line 4637
    :cond_2
    iget v6, p0, Landroid/view/ViewGroup;->mRight:I

    iget v7, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v8, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v10, v10, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4638
    iget-object v5, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-nez v5, :cond_5

    .line 4644
    :goto_2
    return v4

    .line 4611
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v3           #rect:Landroid/graphics/RectF;
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    goto :goto_0

    .line 4625
    .restart local v0       #dx:I
    .restart local v1       #dy:I
    .restart local v3       #rect:Landroid/graphics/RectF;
    :cond_4
    const/4 v6, 0x2

    new-array v2, v6, [F

    goto :goto_1

    .line 4639
    :cond_5
    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v9

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v9

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v9

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4641
    iget-object v4, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v4, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v4

    goto :goto_2

    :cond_6
    move v4, v5

    .line 4644
    goto :goto_2
.end method

.method public getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 529
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 4721
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 5410
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutMode()I
    .locals 1

    .prologue
    .line 4905
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    return v0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    .prologue
    .line 3998
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 4876
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 559
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 563
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 564
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 842
    iget v7, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_1

    .line 863
    :cond_0
    :goto_0
    return v5

    .line 846
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 847
    goto :goto_0

    .line 850
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 851
    .local v3, descendantFocusability:I
    const/high16 v7, 0x6

    if-eq v3, v7, :cond_0

    .line 852
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 853
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 855
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 856
    aget-object v0, v1, v4

    .line 857
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 858
    goto :goto_0

    .line 855
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected hasHoveredChild()Z
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransientState()Z
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Landroid/view/ViewGroup;->mChildCountWithTransientState:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->hasTransientState()Z

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

.method public indexOfChild(Landroid/view/View;)I
    .locals 4
    .parameter "child"

    .prologue
    .line 5007
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5008
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5009
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5010
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    .line 5014
    .end local v2           #i:I
    :goto_1
    return v2

    .line 5009
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5014
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 16
    .parameter "child"
    .parameter "dirty"

    .prologue
    .line 4295
    move-object/from16 v9, p0

    .line 4297
    .local v9, parent:Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4298
    .local v1, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_7

    .line 4302
    move-object/from16 v0, p1

    iget v11, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v11, v11, 0x40

    const/16 v12, 0x40

    if-ne v11, v12, :cond_8

    const/4 v4, 0x1

    .line 4307
    .local v4, drawAnimation:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 4308
    .local v3, childMatrix:Landroid/graphics/Matrix;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v11

    if-eqz v11, :cond_9

    if-nez v4, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    if-nez v11, :cond_9

    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v5, 0x1

    .line 4312
    .local v5, isOpaque:Z
    :goto_1
    if-eqz v5, :cond_a

    const/high16 v8, 0x40

    .line 4314
    .local v8, opaqueFlag:I
    :goto_2
    move-object/from16 v0, p1

    iget v11, v0, Landroid/view/View;->mLayerType:I

    if-eqz v11, :cond_0

    .line 4315
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const/high16 v12, -0x8000

    or-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 4316
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v12, -0x8001

    and-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 4317
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4320
    :cond_0
    iget-object v6, v1, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 4321
    .local v6, location:[I
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/View;->mLeft:I

    aput v12, v6, v11

    .line 4322
    const/4 v11, 0x1

    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/View;->mTop:I

    aput v12, v6, v11

    .line 4323
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v11

    if-nez v11, :cond_1

    .line 4324
    iget-object v2, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4325
    .local v2, boundingRect:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4327
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4328
    iget v11, v2, Landroid/graphics/RectF;->left:F

    const/high16 v12, 0x3f00

    sub-float/2addr v11, v12

    float-to-int v11, v11

    iget v12, v2, Landroid/graphics/RectF;->top:F

    const/high16 v13, 0x3f00

    sub-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, v2, Landroid/graphics/RectF;->right:F

    const/high16 v14, 0x3f00

    add-float/2addr v13, v14

    float-to-int v13, v13

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 4335
    .end local v2           #boundingRect:Landroid/graphics/RectF;
    :cond_1
    const/4 v10, 0x0

    .line 4336
    .local v10, view:Landroid/view/View;
    instance-of v11, v9, Landroid/view/View;

    if-eqz v11, :cond_2

    move-object v10, v9

    .line 4337
    check-cast v10, Landroid/view/View;

    .line 4340
    :cond_2
    if-eqz v4, :cond_3

    .line 4341
    if-eqz v10, :cond_b

    .line 4342
    iget v11, v10, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v11, v11, 0x40

    iput v11, v10, Landroid/view/View;->mPrivateFlags:I

    .line 4350
    :cond_3
    :goto_3
    if-eqz v10, :cond_5

    .line 4351
    iget v11, v10, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v11, v11, 0x3000

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getSolidColor()I

    move-result v11

    if-nez v11, :cond_4

    .line 4353
    const/high16 v8, 0x20

    .line 4355
    :cond_4
    iget v11, v10, Landroid/view/View;->mPrivateFlags:I

    const/high16 v12, 0x60

    and-int/2addr v11, v12

    const/high16 v12, 0x20

    if-eq v11, v12, :cond_5

    .line 4356
    iget v11, v10, Landroid/view/View;->mPrivateFlags:I

    const v12, -0x600001

    and-int/2addr v11, v12

    or-int/2addr v11, v8

    iput v11, v10, Landroid/view/View;->mPrivateFlags:I

    .line 4360
    :cond_5
    move-object/from16 v0, p2

    invoke-interface {v9, v6, v0}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v9

    .line 4361
    if-eqz v10, :cond_6

    .line 4363
    invoke-virtual {v10}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 4364
    .local v7, m:Landroid/graphics/Matrix;
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v11

    if-nez v11, :cond_6

    .line 4365
    iget-object v2, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4366
    .restart local v2       #boundingRect:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4367
    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4368
    iget v11, v2, Landroid/graphics/RectF;->left:F

    const/high16 v12, 0x3f00

    sub-float/2addr v11, v12

    float-to-int v11, v11

    iget v12, v2, Landroid/graphics/RectF;->top:F

    const/high16 v13, 0x3f00

    sub-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, v2, Landroid/graphics/RectF;->right:F

    const/high16 v14, 0x3f00

    add-float/2addr v13, v14

    float-to-int v13, v13

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 4374
    .end local v2           #boundingRect:Landroid/graphics/RectF;
    .end local v7           #m:Landroid/graphics/Matrix;
    :cond_6
    if-nez v9, :cond_1

    .line 4376
    .end local v3           #childMatrix:Landroid/graphics/Matrix;
    .end local v4           #drawAnimation:Z
    .end local v5           #isOpaque:Z
    .end local v6           #location:[I
    .end local v8           #opaqueFlag:I
    .end local v10           #view:Landroid/view/View;
    :cond_7
    return-void

    .line 4302
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 4308
    .restart local v3       #childMatrix:Landroid/graphics/Matrix;
    .restart local v4       #drawAnimation:Z
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 4312
    .restart local v5       #isOpaque:Z
    :cond_a
    const/high16 v8, 0x20

    goto/16 :goto_2

    .line 4343
    .restart local v6       #location:[I
    .restart local v8       #opaqueFlag:I
    .restart local v10       #view:Landroid/view/View;
    :cond_b
    instance-of v11, v9, Landroid/view/ViewRootImpl;

    if-eqz v11, :cond_3

    move-object v11, v9

    .line 4344
    check-cast v11, Landroid/view/ViewRootImpl;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto :goto_3
.end method

.method public invalidateChildFast(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "child"
    .parameter "dirty"

    .prologue
    .line 4444
    move-object v3, p0

    .line 4446
    .local v3, parent:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4447
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_2

    .line 4448
    iget v6, p1, Landroid/view/View;->mLayerType:I

    if-eqz v6, :cond_0

    .line 4449
    iget-object v6, p1, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4452
    :cond_0
    iget v1, p1, Landroid/view/View;->mLeft:I

    .line 4453
    .local v1, left:I
    iget v5, p1, Landroid/view/View;->mTop:I

    .line 4454
    .local v5, top:I
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4455
    invoke-virtual {p1, p2}, Landroid/view/View;->transformRect(Landroid/graphics/Rect;)V

    .line 4459
    :cond_1
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    move-object v4, v3

    .line 4460
    check-cast v4, Landroid/view/ViewGroup;

    .line 4461
    .local v4, parentVG:Landroid/view/ViewGroup;
    iget v6, v4, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v6, :cond_3

    .line 4463
    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 4464
    const/4 v3, 0x0

    .line 4478
    .end local v4           #parentVG:Landroid/view/ViewGroup;
    :goto_0
    if-nez v3, :cond_1

    .line 4480
    .end local v1           #left:I
    .end local v5           #top:I
    :cond_2
    return-void

    .line 4466
    .restart local v1       #left:I
    .restart local v4       #parentVG:Landroid/view/ViewGroup;
    .restart local v5       #top:I
    :cond_3
    invoke-direct {v4, v1, v5, p2}, Landroid/view/ViewGroup;->invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v3

    .line 4467
    iget v1, v4, Landroid/view/ViewGroup;->mLeft:I

    .line 4468
    iget v5, v4, Landroid/view/ViewGroup;->mTop:I

    goto :goto_0

    .line 4473
    .end local v4           #parentVG:Landroid/view/ViewGroup;
    :cond_4
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 4474
    .local v2, location:[I
    const/4 v6, 0x0

    aput v1, v2, v6

    .line 4475
    const/4 v6, 0x1

    aput v5, v2, v6

    .line 4476
    invoke-interface {v3, v2, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 8
    .parameter "location"
    .parameter "dirty"

    .prologue
    const v4, 0x8000

    const/high16 v7, -0x8000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4387
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    .line 4389
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_3

    .line 4391
    aget v2, p1, v5

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4394
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    .line 4395
    .local v0, left:I
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    .line 4397
    .local v1, top:I
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_1

    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 4400
    :cond_1
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 4402
    aput v0, p1, v5

    .line 4403
    aput v1, p1, v6

    .line 4405
    iget v2, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v2, :cond_2

    .line 4406
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v2, v7

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 4407
    iget-object v2, p0, Landroid/view/ViewGroup;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4410
    :cond_2
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 4433
    .end local v0           #left:I
    .end local v1           #top:I
    :goto_0
    return-object v2

    .line 4413
    :cond_3
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 4415
    iget v2, p0, Landroid/view/ViewGroup;->mLeft:I

    aput v2, p1, v5

    .line 4416
    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    aput v2, p1, v6

    .line 4417
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_5

    .line 4418
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4424
    :goto_1
    iget v2, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v2, :cond_4

    .line 4425
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v2, v7

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 4426
    iget-object v2, p0, Landroid/view/ViewGroup;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4429
    :cond_4
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 4421
    :cond_5
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_1

    .line 4433
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4767
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimationCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4737
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4834
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 4802
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 2530
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "child"
    .parameter "outLocalPoint"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2406
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    iget v5, p3, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    sub-float v1, v4, v5

    .line 2407
    .local v1, localX:F
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    iget v5, p3, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 2408
    .local v3, localY:F
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    .line 2409
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 2410
    .local v2, localXY:[F
    aput v1, v2, v6

    .line 2411
    aput v3, v2, v7

    .line 2412
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2413
    aget v1, v2, v6

    .line 2414
    aget v3, v2, v7

    .line 2416
    .end local v2           #localXY:[F
    :cond_0
    invoke-virtual {p3, v1, v3}, Landroid/view/View;->pointInView(FF)Z

    move-result v0

    .line 2417
    .local v0, isInView:Z
    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 2418
    invoke-virtual {p4, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 2420
    :cond_1
    return v0
.end method

.method isViewTransitioning(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 5267
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    .prologue
    .line 5437
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5438
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5439
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5440
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5441
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5440
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5443
    :cond_0
    return-void
.end method

.method public final layout(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4652
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4653
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 4654
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0}, Landroid/animation/LayoutTransition;->layoutChange(Landroid/view/ViewGroup;)V

    .line 4656
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 4661
    :goto_0
    return-void

    .line 4659
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    goto :goto_0
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 4

    .prologue
    .line 969
    invoke-super {p0}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 970
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 971
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 972
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 973
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->makeOptionalFitsSystemWindows()V

    .line 972
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 975
    :cond_0
    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 5072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 5074
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 5076
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 5079
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 5080
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
    .line 5099
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5101
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 5104
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 5108
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 5109
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 5051
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5052
    .local v3, size:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5053
    .local v1, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 5054
    aget-object v0, v1, v2

    .line 5055
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 5056
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 5053
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5059
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method notifyChildOfDrag(Landroid/view/View;)Z
    .locals 2
    .parameter "child"

    .prologue
    .line 1287
    const/4 v0, 0x0

    .line 1288
    .local v0, canAccept:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1289
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1290
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1291
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1292
    iget v1, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1293
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1296
    :cond_0
    return v0
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    .line 4590
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4591
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4593
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4594
    aget-object v3, v0, v2

    .line 4595
    .local v3, v:Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mTop:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mTop:I

    .line 4596
    iget v4, v3, Landroid/view/View;->mBottom:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mBottom:I

    .line 4597
    iget-object v4, v3, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_0

    .line 4598
    iget-object v4, v3, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v4, p1}, Landroid/view/DisplayList;->offsetTopBottom(I)V

    .line 4599
    invoke-virtual {p0, v5, v5}, Landroid/view/ViewGroup;->invalidateViewProperty(ZZ)V

    .line 4593
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4602
    .end local v3           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "descendant"
    .parameter "rect"

    .prologue
    .line 4515
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 4516
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .parameter "descendant"
    .parameter "rect"
    .parameter "offsetFromChildToParent"
    .parameter "clipToBounds"

    .prologue
    const/4 v5, 0x0

    .line 4536
    if-ne p1, p0, :cond_0

    .line 4580
    :goto_0
    return-void

    .line 4540
    :cond_0
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4545
    .local v1, theParent:Landroid/view/ViewParent;
    :goto_1
    if-eqz v1, :cond_4

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4

    if-eq v1, p0, :cond_4

    .line 4547
    if-eqz p3, :cond_2

    .line 4548
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4550
    if-eqz p4, :cond_1

    move-object v0, v1

    .line 4551
    check-cast v0, Landroid/view/View;

    .line 4552
    .local v0, p:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mRight:I

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/View;->mBottom:I

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .end local v0           #p:Landroid/view/View;
    :cond_1
    :goto_2
    move-object p1, v1

    .line 4563
    check-cast p1, Landroid/view/View;

    .line 4564
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1

    .line 4555
    :cond_2
    if-eqz p4, :cond_3

    move-object v0, v1

    .line 4556
    check-cast v0, Landroid/view/View;

    .line 4557
    .restart local v0       #p:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mRight:I

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/View;->mBottom:I

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 4559
    .end local v0           #p:Landroid/view/View;
    :cond_3
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 4569
    :cond_4
    if-ne v1, p0, :cond_6

    .line 4570
    if-eqz p3, :cond_5

    .line 4571
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 4574
    :cond_5
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 4578
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "parameter must be a descendant of this view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "descendant"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 4525
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 4526
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 2942
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 2945
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 2946
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2948
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2949
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 2952
    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 2918
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 2921
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, 0x40

    const/16 v7, 0x40

    if-ne v6, v7, :cond_3

    .line 2922
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2923
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2924
    .local v2, children:[Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v5

    .line 2926
    .local v0, buildCache:Z
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 2927
    aget-object v1, v2, v4

    .line 2928
    .local v1, child:Landroid/view/View;
    iget v6, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 2929
    invoke-virtual {v1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2930
    if-eqz v0, :cond_0

    .line 2931
    invoke-virtual {v1, v5}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2926
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2924
    .end local v0           #buildCache:Z
    .end local v1           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2936
    .restart local v0       #buildCache:Z
    .restart local v4       #i:I
    :cond_2
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2938
    .end local v0           #buildCache:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_3
    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .parameter "child"
    .parameter "oldVisibility"
    .parameter "newVisibility"

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 1001
    if-nez p3, :cond_2

    .line 1002
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1018
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v0, :cond_1

    .line 1019
    if-nez p3, :cond_1

    .line 1020
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    .line 1023
    :cond_1
    return-void

    .line 1004
    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1, p3}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 1005
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1009
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 1011
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 5447
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_1

    .line 5448
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 5471
    :cond_0
    return-object v4

    .line 5451
    :cond_1
    const/4 v3, 0x0

    .line 5452
    .local v3, need:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5453
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 5454
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 5456
    .local v0, childState:[I
    if-eqz v0, :cond_2

    .line 5457
    array-length v5, v0

    add-int/2addr v3, v5

    .line 5453
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5461
    .end local v0           #childState:[I
    :cond_3
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 5463
    .local v4, state:[I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 5464
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 5466
    .restart local v0       #childState:[I
    if-eqz v0, :cond_4

    .line 5467
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 5463
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 3003
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3004
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 3005
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3006
    .local v6, c:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v8

    .line 3007
    .local v8, insets:Landroid/graphics/Insets;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v8, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, v8, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v3, v8, Landroid/graphics/Insets;->right:I

    sub-int v3, v0, v3

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, v8, Landroid/graphics/Insets;->bottom:I

    sub-int v4, v0, v4

    const/high16 v5, -0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;IIIII)V

    .line 3004
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3016
    .end local v6           #c:Landroid/view/View;
    .end local v7           #i:I
    .end local v8           #insets:Landroid/graphics/Insets;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onDebugDrawMargins(Landroid/graphics/Canvas;)V

    .line 3019
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 3020
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3021
    .restart local v6       #c:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    const v5, -0xffff01

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/view/ViewGroup;->drawRect(Landroid/graphics/Canvas;IIIII)V

    .line 3019
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3023
    .end local v6           #c:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onDebugDrawMargins(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 2992
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2993
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2994
    .local v0, c:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/view/ViewGroup$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 2992
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2996
    .end local v0           #c:Landroid/view/View;
    :cond_0
    return-void
.end method

.method onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 2780
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2781
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2782
    return-void
.end method

.method onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 2764
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2765
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_1

    .line 2766
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v4, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 2767
    .local v1, childrenForAccessibility:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2768
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 2769
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2770
    .local v2, childrenForAccessibilityCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2771
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2772
    .local v0, child:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 2770
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2774
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2776
    .end local v1           #childrenForAccessibility:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2           #childrenForAccessibilityCount:I
    .end local v3           #i:I
    :cond_1
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2001
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2593
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2653
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2654
    .local v2, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2655
    const/4 v6, 0x0

    .line 2656
    .local v6, index:I
    const/4 v5, 0x1

    .line 2657
    .local v5, increment:I
    move v3, v2

    .line 2663
    .local v3, end:I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2664
    .local v1, children:[Landroid/view/View;
    move v4, v6

    .local v4, i:I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 2665
    aget-object v0, v1, v4

    .line 2666
    .local v0, child:Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    .line 2667
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2668
    const/4 v7, 0x1

    .line 2672
    .end local v0           #child:Landroid/view/View;
    :goto_2
    return v7

    .line 2659
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v2, -0x1

    .line 2660
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 2661
    .restart local v5       #increment:I
    const/4 v3, -0x1

    .restart local v3       #end:I
    goto :goto_0

    .line 2664
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #children:[Landroid/view/View;
    .restart local v4       #i:I
    :cond_1
    add-int/2addr v4, v5

    goto :goto_1

    .line 2672
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "child"
    .parameter "event"

    .prologue
    .line 691
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Landroid/view/ViewGroup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 694
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "child"
    .parameter "event"

    .prologue
    .line 704
    const/4 v0, 0x1

    return v0
.end method

.method public onResolvedLayoutDirectionReset()V
    .locals 5

    .prologue
    .line 5546
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5547
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5548
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5549
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 5550
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 5547
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5553
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onResolvedTextAlignmentReset()V
    .locals 4

    .prologue
    .line 5576
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5577
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5578
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5579
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    move-result v3

    if-nez v3, :cond_0

    .line 5580
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 5577
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5583
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onResolvedTextDirectionReset()V
    .locals 4

    .prologue
    .line 5561
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5562
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5563
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5564
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v3

    if-nez v3, :cond_0

    .line 5565
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 5562
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5568
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "layoutParams"

    .prologue
    .line 5600
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3603
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 3604
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 3606
    :cond_0
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3612
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 3613
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 3615
    :cond_0
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1068
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_0

    .line 1069
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 1070
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 1072
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 4059
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 4060
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4061
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 4062
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 4078
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4079
    .local v2, count:I
    if-gtz v2, :cond_1

    .line 4130
    :cond_0
    :goto_0
    return-void

    .line 4083
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4084
    .local v0, children:[Landroid/view/View;
    iput v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4086
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 4087
    .local v4, focused:Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_7

    const/4 v3, 0x1

    .line 4088
    .local v3, detach:Z
    :goto_1
    const/4 v1, 0x0

    .line 4090
    .local v1, clearChildFocus:Landroid/view/View;
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 4092
    add-int/lit8 v5, v2, -0x1

    .local v5, i:I
    :goto_2
    if-ltz v5, :cond_9

    .line 4093
    aget-object v6, v0, v5

    .line 4095
    .local v6, view:Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_2

    .line 4096
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4099
    :cond_2
    if-ne v6, v4, :cond_3

    .line 4100
    invoke-virtual {v6}, Landroid/view/View;->unFocus()V

    .line 4101
    move-object v1, v6

    .line 4104
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4106
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 4107
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 4109
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_4

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4111
    :cond_4
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 4116
    :cond_5
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4117
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4120
    :cond_6
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 4122
    iput-object v9, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4123
    aput-object v9, v0, v5

    .line 4092
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v3           #detach:Z
    .end local v5           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_7
    move v3, v7

    .line 4087
    goto :goto_1

    .line 4112
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v3       #detach:Z
    .restart local v5       #i:I
    .restart local v6       #view:Landroid/view/View;
    :cond_8
    if-eqz v3, :cond_5

    .line 4113
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 4126
    .end local v6           #view:Landroid/view/View;
    :cond_9
    if-eqz v1, :cond_0

    .line 4127
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 4128
    invoke-virtual {p0}, Landroid/view/ViewGroup;->ensureInputFocusOnFirstFocusable()V

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .parameter "child"
    .parameter "animate"

    .prologue
    .line 4146
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 4147
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4150
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 4151
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 4154
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 4156
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelTouchTarget(Landroid/view/View;)V

    .line 4157
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->cancelHoverTarget(Landroid/view/View;)V

    .line 4159
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4161
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 4166
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->childHasTransientStateChanged(Landroid/view/View;Z)V

    .line 4170
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 4171
    return-void

    .line 4162
    :cond_6
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_4

    .line 4163
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3852
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3853
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3854
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3855
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3896
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3897
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3898
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3899
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3868
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3869
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3912
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3913
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3914
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3915
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3883
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3884
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 581
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_3

    .line 582
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 583
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 586
    :cond_2
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 588
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    const/high16 v1, 0x8

    .line 2538
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_2

    .line 2553
    :cond_0
    :goto_1
    return-void

    .line 2538
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2543
    :cond_2
    if-eqz p1, :cond_3

    .line 2544
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2550
    :goto_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2551
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 2546
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_2
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2616
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 2618
    .local v0, descendantFocusability:I
    sparse-switch v0, :sswitch_data_0

    .line 2630
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2620
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2627
    :cond_0
    :goto_0
    return v1

    .line 2622
    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2623
    .local v1, took:Z
    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2626
    .end local v1           #took:Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2627
    .restart local v1       #took:Z
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2618
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestOnStylusButtonEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 6427
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6429
    .local v0, parent:Landroid/view/ViewParent;
    if-nez v0, :cond_0

    .line 6437
    :goto_0
    return-void

    .line 6435
    :cond_0
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestOnStylusButtonEvent(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "child"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 663
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 664
    .local v0, parent:Landroid/view/ViewParent;
    if-nez v0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return v2

    .line 667
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 668
    .local v1, propagate:Z
    if-eqz v1, :cond_0

    .line 671
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 5534
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 5535
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5536
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 5538
    :cond_0
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 5378
    if-eqz p1, :cond_0

    .line 5379
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5380
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 5381
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 5384
    :cond_0
    return-void
.end method

.method public resetAccessibilityStateChanged()V
    .locals 4

    .prologue
    .line 2789
    invoke-super {p0}, Landroid/view/View;->resetAccessibilityStateChanged()V

    .line 2790
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2791
    .local v2, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2792
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 2793
    aget-object v0, v2, v3

    .line 2794
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->resetAccessibilityStateChanged()V

    .line 2792
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2796
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resetDragableChildren(Landroid/view/DragEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 1304
    const/4 v7, 0x0

    .line 1306
    .local v7, ret:Z
    iget-object v10, p0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 1307
    iget-object v9, p0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1309
    .local v9, view:Landroid/view/View;
    invoke-static {p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v3

    .line 1310
    .local v3, ev:Landroid/view/DragEvent;
    const/4 v10, 0x6

    iput v10, v3, Landroid/view/DragEvent;->mAction:I

    .line 1311
    invoke-virtual {v9, v3}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1312
    invoke-virtual {v3}, Landroid/view/DragEvent;->recycle()V

    .line 1313
    const/4 v3, 0x0

    .line 1315
    iget v10, v9, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v10, v10, -0x3

    iput v10, v9, Landroid/view/View;->mPrivateFlags2:I

    .line 1316
    invoke-virtual {v9}, Landroid/view/View;->refreshDrawableState()V

    .line 1317
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1320
    .end local v3           #ev:Landroid/view/DragEvent;
    .end local v9           #view:Landroid/view/View;
    :cond_0
    iget-object v10, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    if-nez v10, :cond_2

    .line 1321
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    iput-object v10, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 1331
    :goto_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1332
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1333
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1334
    .local v1, children:[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_5

    .line 1335
    aget-object v0, v1, v5

    .line 1336
    .local v0, child:Landroid/view/View;
    iget v10, v0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v10, v10, -0x4

    iput v10, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 1337
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    .line 1338
    aget-object v10, v1, v5

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    move-result v4

    .line 1339
    .local v4, handled:Z
    if-eqz v4, :cond_1

    .line 1340
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1341
    const/4 v7, 0x1

    .line 1334
    .end local v4           #handled:Z
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1323
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v5           #i:I
    :cond_2
    iget-object v10, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1324
    .local v8, v:Landroid/view/View;
    if-eqz v8, :cond_3

    .line 1325
    iget v10, v8, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v10, v10, -0x3

    iput v10, v8, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_2

    .line 1327
    .end local v8           #v:Landroid/view/View;
    :cond_4
    iget-object v10, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 1346
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local v1       #children:[Landroid/view/View;
    .restart local v2       #count:I
    .restart local v5       #i:I
    :cond_5
    return v7
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    .prologue
    .line 4698
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4699
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .parameter "addsStates"

    .prologue
    .line 5481
    if-eqz p1, :cond_0

    .line 5482
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5487
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 5488
    return-void

    .line 5484
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "always"

    .prologue
    .line 4788
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4789
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4752
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4753
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 2907
    if-nez p1, :cond_0

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 2908
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2909
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2910
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2911
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2910
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2914
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4848
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4849
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4819
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4820
    return-void
.end method

.method public setChildrenLayersEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    .line 3233
    iget-boolean v5, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    if-eq p1, v5, :cond_5

    .line 3234
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 3235
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3237
    if-nez p1, :cond_3

    move v1, v4

    .line 3238
    .local v1, flushLayers:Z
    :goto_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3239
    .local v3, info:Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_4

    iget-object v5, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v5, :cond_4

    iget-object v5, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3241
    iget-object v5, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3242
    const/4 v1, 0x0

    .line 3255
    :cond_0
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget v5, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v2, v5, :cond_5

    .line 3256
    iget-object v5, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v5, v2

    .line 3257
    .local v0, child:Landroid/view/View;
    iget v5, v0, Landroid/view/View;->mLayerType:I

    if-eqz v5, :cond_2

    .line 3258
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->flushLayer()V

    .line 3259
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->invalidate(Z)V

    .line 3255
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3237
    .end local v0           #child:Landroid/view/View;
    .end local v1           #flushLayers:Z
    .end local v2           #i:I
    .end local v3           #info:Landroid/view/View$AttachInfo;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 3245
    .restart local v1       #flushLayers:Z
    .restart local v3       #info:Landroid/view/View$AttachInfo;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 3263
    .end local v1           #flushLayers:Z
    .end local v3           #info:Landroid/view/View$AttachInfo;
    :cond_5
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 5
    .parameter "clipChildren"

    .prologue
    const/4 v3, 0x1

    .line 3274
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 3275
    .local v2, previousValue:Z
    :goto_0
    if-eq p1, v2, :cond_2

    .line 3276
    invoke-direct {p0, v3, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3277
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v3, :cond_2

    .line 3278
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3279
    .local v0, child:Landroid/view/View;
    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_0

    .line 3280
    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v3, p1}, Landroid/view/DisplayList;->setClipChildren(Z)V

    .line 3277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3274
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #previousValue:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3284
    .restart local v2       #previousValue:Z
    :cond_2
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .parameter "clipToPadding"

    .prologue
    .line 3295
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3296
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .parameter "focusability"

    .prologue
    .line 541
    sparse-switch p1, :sswitch_data_0

    .line 547
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :sswitch_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 551
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 552
    return-void

    .line 541
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 4708
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4709
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 4710
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4712
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "animationListener"

    .prologue
    .line 5521
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 5522
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 1
    .parameter "layoutMode"

    .prologue
    .line 4921
    iget v0, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    if-eq v0, p1, :cond_0

    .line 4922
    iput p1, p0, Landroid/view/ViewGroup;->mLayoutMode:I

    .line 4923
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4925
    :cond_0
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 2
    .parameter "transition"

    .prologue
    .line 3979
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 3980
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3982
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 3983
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 3984
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3986
    :cond_1
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 2
    .parameter "split"

    .prologue
    .line 2518
    if-eqz p1, :cond_0

    .line 2519
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2523
    :goto_0
    return-void

    .line 2521
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3596
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 3597
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2836
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 2838
    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2839
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2843
    :goto_0
    return-void

    .line 2841
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .parameter "drawingCacheToKeep"

    .prologue
    .line 4891
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 4892
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 3352
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3353
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 5595
    const/4 v0, 0x1

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 617
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 624
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLayoutAnimation()V
    .locals 1

    .prologue
    .line 4685
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 4686
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4687
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4689
    :cond_0
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 5283
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_1

    .line 5284
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 5285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5287
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5289
    :cond_1
    return-void
.end method

.method unFocus()V
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-nez v0, :cond_0

    .line 788
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 793
    :goto_0
    return-void

    .line 790
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 791
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    goto :goto_0
.end method

.method updateLocalSystemUiVisibility(II)Z
    .locals 6
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 1375
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v0

    .line 1377
    .local v0, changed:Z
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1378
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1379
    .local v2, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 1380
    aget-object v1, v2, v4

    .line 1381
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1379
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1383
    .end local v1           #child:Landroid/view/View;
    :cond_0
    return v0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "view"
    .parameter "params"

    .prologue
    .line 3550
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3551
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3553
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_1

    .line 3554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3556
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3557
    return-void
.end method
