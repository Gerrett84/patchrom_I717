.class public Lcom/android/internal/view/menu/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuPresenter$1;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mIsParentThemeDeviceDefault:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

.field final mPopupPresenterCallback:Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 98
    const v1, 0x109001b

    const v2, 0x109001a

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 85
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 94
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$1;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    .line 102
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 103
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10103fd

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 104
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    .line 105
    iput-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mIsParentThemeDeviceDefault:Z

    .line 108
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/ActionMenuPresenter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mIsParentThemeDeviceDefault:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;)Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 348
    iget-object v3, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 349
    .local v3, parent:Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 359
    :cond_0
    :goto_0
    return-object v0

    .line 351
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 352
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 353
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 354
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 352
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 359
    goto :goto_0
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 12
    .parameter "anchor"
    .parameter "outRect"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 928
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 933
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 935
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 937
    .local v2, root:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 938
    .local v6, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, 0x0

    .line 940
    .local v7, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v8, v6, Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_2

    move-object v7, v6

    .line 941
    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 944
    :cond_2
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 945
    .local v5, visibleDisplayFrame:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 947
    .local v3, statusBarHeight:I
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 950
    .local v1, dm:Landroid/util/DisplayMetrics;
    if-eqz v7, :cond_3

    .line 951
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v4, v8, v11

    .line 952
    .local v4, systemUiVisibility:I
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/lit16 v8, v4, 0x404

    if-nez v8, :cond_3

    .line 954
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x105000a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 957
    .end local v4           #systemUiVisibility:I
    :cond_3
    iput v10, v5, Landroid/graphics/Rect;->left:I

    .line 958
    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 959
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 960
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 962
    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gez v8, :cond_5

    move v8, v9

    :goto_1
    iget v11, v0, Landroid/graphics/Rect;->top:I

    if-gez v11, :cond_6

    :goto_2
    or-int/2addr v8, v9

    if-eqz v8, :cond_4

    .line 963
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 966
    :cond_4
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    move v8, v10

    .line 962
    goto :goto_1

    :cond_6
    move v9, v10

    goto :goto_2
.end method


# virtual methods
.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 3
    .parameter "item"
    .parameter "itemView"

    .prologue
    .line 261
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 263
    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView;

    .local v1, menuView:Lcom/android/internal/view/menu/ActionMenuView;
    move-object v0, p2

    .line 264
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 265
    .local v0, actionItemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 266
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 414
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 415
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .parameter "parent"
    .parameter "childIndex"

    .prologue
    .line 322
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 323
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 30

    .prologue
    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v26

    .line 484
    .local v26, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 485
    .local v16, itemsSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    move/from16 v18, v0

    .line 486
    .local v18, maxActions:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v27, v0

    .line 487
    .local v27, widthLimit:I
    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 488
    .local v21, querySpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/ViewGroup;

    .line 490
    .local v20, parent:Landroid/view/ViewGroup;
    const/16 v23, 0x0

    .line 491
    .local v23, requiredItems:I
    const/16 v22, 0x0

    .line 492
    .local v22, requestedItems:I
    const/4 v9, 0x0

    .line 493
    .local v9, firstActionWidth:I
    const/4 v11, 0x0

    .line 494
    .local v11, hasOverflow:Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    .line 495
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 496
    .local v15, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 497
    add-int/lit8 v23, v23, 0x1

    .line 503
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 506
    const/16 v18, 0x0

    .line 494
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 499
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 501
    :cond_2
    const/4 v11, 0x1

    goto :goto_1

    .line 511
    .end local v15           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    if-nez v11, :cond_4

    add-int v28, v23, v22

    move/from16 v0, v28

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 513
    :cond_4
    add-int/lit8 v18, v18, -0x1

    .line 515
    :cond_5
    sub-int v18, v18, v23

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v24, v0

    .line 518
    .local v24, seenGroups:Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseBooleanArray;->clear()V

    .line 520
    const/4 v5, 0x0

    .line 521
    .local v5, cellSize:I
    const/4 v8, 0x0

    .line 522
    .local v8, cellsRemaining:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6

    .line 523
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v28, v0

    div-int v8, v27, v28

    .line 524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v28, v0

    rem-int v6, v27, v28

    .line 525
    .local v6, cellSizeRemaining:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v28, v0

    div-int v29, v6, v8

    add-int v5, v28, v29

    .line 529
    .end local v6           #cellSizeRemaining:I
    :cond_6
    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_1d

    .line 530
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 532
    .restart local v15       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 534
    .local v25, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v28, v0

    if-nez v28, :cond_7

    .line 535
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 537
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_a

    .line 538
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-static {v0, v5, v8, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v28

    sub-int v8, v8, v28

    .line 543
    :goto_3
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 544
    .local v19, measuredWidth:I
    sub-int v27, v27, v19

    .line 545
    if-nez v9, :cond_8

    .line 546
    move/from16 v9, v19

    .line 548
    :cond_8
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v10

    .line 549
    .local v10, groupId:I
    if-eqz v10, :cond_9

    .line 550
    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 552
    :cond_9
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 529
    .end local v10           #groupId:I
    .end local v19           #measuredWidth:I
    .end local v25           #v:Landroid/view/View;
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 541
    .restart local v25       #v:Landroid/view/View;
    :cond_a
    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_3

    .line 553
    .end local v25           #v:Landroid/view/View;
    :cond_b
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 556
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v10

    .line 557
    .restart local v10       #groupId:I
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    .line 558
    .local v13, inGroup:Z
    if-gtz v18, :cond_c

    if-eqz v13, :cond_14

    :cond_c
    if-lez v27, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_d

    if-lez v8, :cond_14

    :cond_d
    const/4 v14, 0x1

    .line 561
    .local v14, isAction:Z
    :goto_5
    if-eqz v14, :cond_11

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 563
    .restart local v25       #v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v28, v0

    if-nez v28, :cond_e

    .line 564
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 566
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_15

    .line 567
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-static {v0, v5, v8, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v7

    .line 569
    .local v7, cells:I
    sub-int/2addr v8, v7

    .line 570
    if-nez v7, :cond_f

    .line 571
    const/4 v14, 0x0

    .line 576
    .end local v7           #cells:I
    :cond_f
    :goto_6
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 577
    .restart local v19       #measuredWidth:I
    sub-int v27, v27, v19

    .line 578
    if-nez v9, :cond_10

    .line 579
    move/from16 v9, v19

    .line 582
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v28, v0

    if-eqz v28, :cond_17

    .line 583
    if-ltz v27, :cond_16

    const/16 v28, 0x1

    :goto_7
    and-int v14, v14, v28

    .line 590
    .end local v19           #measuredWidth:I
    .end local v25           #v:Landroid/view/View;
    :cond_11
    :goto_8
    if-eqz v14, :cond_19

    if-eqz v10, :cond_19

    .line 591
    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 605
    :cond_12
    if-eqz v14, :cond_13

    add-int/lit8 v18, v18, -0x1

    .line 607
    :cond_13
    invoke-virtual {v15, v14}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_4

    .line 558
    .end local v14           #isAction:Z
    :cond_14
    const/4 v14, 0x0

    goto :goto_5

    .line 574
    .restart local v14       #isAction:Z
    .restart local v25       #v:Landroid/view/View;
    :cond_15
    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 583
    .restart local v19       #measuredWidth:I
    :cond_16
    const/16 v28, 0x0

    goto :goto_7

    .line 586
    :cond_17
    add-int v28, v27, v9

    if-lez v28, :cond_18

    const/16 v28, 0x1

    :goto_9
    and-int v14, v14, v28

    goto :goto_8

    :cond_18
    const/16 v28, 0x0

    goto :goto_9

    .line 592
    .end local v19           #measuredWidth:I
    .end local v25           #v:Landroid/view/View;
    :cond_19
    if-eqz v13, :cond_12

    .line 594
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 595
    const/16 v17, 0x0

    .local v17, j:I
    :goto_a
    move/from16 v0, v17

    if-ge v0, v12, :cond_12

    .line 596
    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 597
    .local v4, areYouMyGroupie:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v28

    move/from16 v0, v28

    if-ne v0, v10, :cond_1b

    .line 599
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v28

    if-eqz v28, :cond_1a

    add-int/lit8 v18, v18, 0x1

    .line 600
    :cond_1a
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 595
    :cond_1b
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 611
    .end local v4           #areYouMyGroupie:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v10           #groupId:I
    .end local v13           #inGroup:Z
    .end local v14           #isAction:Z
    .end local v17           #j:I
    :cond_1c
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_4

    .line 619
    .end local v15           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1d
    if-lez v16, :cond_1f

    .line 620
    if-eqz v20, :cond_1e

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->requestLayout()V

    .line 625
    :cond_1e
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    if-eqz v28, :cond_1f

    .line 626
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    check-cast v28, Landroid/view/ViewGroup;

    move-object/from16 v3, v28

    check-cast v3, Landroid/view/ViewGroup;

    .line 627
    .local v3, actionBarContainer:Landroid/view/ViewGroup;
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v28

    if-nez v28, :cond_1f

    .line 628
    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V

    .line 634
    .end local v3           #actionBarContainer:Landroid/view/ViewGroup;
    :cond_1f
    const/16 v28, 0x1

    return v28
.end method

.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "item"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 242
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, actionView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    :cond_0
    instance-of v3, p2, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-nez v3, :cond_1

    .line 245
    const/4 p2, 0x0

    .line 247
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 249
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 251
    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 252
    .local v2, menuParent:Lcom/android/internal/view/menu/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 253
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 254
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    :cond_3
    return-object v0

    .line 249
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #menuParent:Lcom/android/internal/view/menu/ActionMenuView;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .parameter "root"

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    .local v0, result:Lcom/android/internal/view/menu/MenuView;
    move-object v1, v0

    .line 236
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/ActionMenuView;->setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    .line 237
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 394
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 396
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 405
    :goto_0
    return v1

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 401
    .local v0, popup:Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 403
    goto :goto_0

    .line 405
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 426
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 8
    .parameter "context"
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 116
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mIsParentThemeDeviceDefault:Z

    if-eqz v4, :cond_0

    .line 117
    const v4, 0x1090102

    const v5, 0x1090101

    invoke-super {p0, v4, v5}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setMenuLayoutRes(II)V

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 125
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_1

    .line 126
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 129
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_2

    .line 130
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 134
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_3

    .line 135
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 138
    :cond_3
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 139
    .local v3, width:I
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_5

    .line 140
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v4, :cond_4

    .line 141
    new-instance v4, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 142
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 143
    .local v2, spec:I
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 145
    .end local v2           #spec:I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 150
    :goto_0
    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 152
    const/high16 v4, 0x4260

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMinCellSize:I

    .line 155
    iput-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 156
    return-void

    .line 147
    :cond_5
    iput-object v7, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public isSubMenuShowing()Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 640
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 641
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 14
    .parameter "newConfig"

    .prologue
    const/4 v13, 0x1

    .line 160
    iget-boolean v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mIsParentThemeDeviceDefault:Z

    if-eqz v8, :cond_3

    .line 162
    iget-object v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 165
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    sget-object v10, Lcom/android/internal/R$styleable;->View:[I

    const v11, 0x10102f6

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v8, 0x29

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 168
    .local v2, contentDescription:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    iget-object v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 174
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #contentDescription:Ljava/lang/CharSequence;
    :cond_0
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 175
    .local v4, heightValue:Landroid/util/TypedValue;
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x10102eb

    invoke-virtual {v8, v9, v4, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 176
    iget v8, v4, Landroid/util/TypedValue;->data:I

    iget-object v9, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    .line 178
    .local v6, minHeight:I
    iget-object v7, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 179
    .local v7, parent:Landroid/view/ViewGroup;
    if-eqz v7, :cond_3

    .line 180
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 181
    .local v3, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 182
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 184
    instance-of v8, v1, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-nez v8, :cond_1

    instance-of v8, v1, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v8, :cond_2

    .line 185
    :cond_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 181
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    .end local v1           #child:Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #heightValue:Landroid/util/TypedValue;
    .end local v5           #i:I
    .end local v6           #minHeight:I
    .end local v7           #parent:Landroid/view/ViewGroup;
    :cond_3
    iget-boolean v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v8, :cond_4

    .line 194
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0038

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 198
    :cond_4
    iget-boolean v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v8, :cond_5

    .line 199
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 201
    :cond_5
    iget-boolean v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v8, :cond_7

    .line 202
    iget v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 208
    :goto_1
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v8, :cond_6

    .line 209
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v8, v13}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 211
    :cond_6
    return-void

    .line 205
    :cond_7
    iget v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 652
    move-object v1, p1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;

    .line 653
    .local v1, saved:Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
    iget v3, v1, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    .line 654
    iget-object v3, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v4, v1, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 655
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 656
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 657
    .local v2, subMenu:Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 660
    .end local v0           #item:Landroid/view/MenuItem;
    .end local v2           #subMenu:Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 645
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;-><init>()V

    .line 646
    .local v0, state:Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 647
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .parameter "subMenu"

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v2

    .line 329
    :cond_1
    move-object v1, p1

    .line 330
    .local v1, topSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_2

    .line 331
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    .end local v1           #topSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    .restart local v1       #topSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;
    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 334
    .local v0, anchor:Landroid/view/View;
    if-nez v0, :cond_3

    .line 335
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 339
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 340
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 341
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 342
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 343
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 344
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 664
    if-eqz p1, :cond_0

    .line 666
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .parameter "isExclusive"

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 231
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .parameter "itemCount"

    .prologue
    .line 225
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItems:I

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 227
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .parameter "reserveOverflow"

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 222
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .parameter "width"
    .parameter "strict"

    .prologue
    .line 214
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 215
    iput-boolean p2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 217
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .parameter "childIndex"
    .parameter "item"

    .prologue
    .line 270
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 367
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v5, v1

    .line 385
    :goto_0
    return v5

    .line 374
    :cond_0
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 375
    .local v0, popup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 377
    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 381
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    goto :goto_0

    .end local v0           #popup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    :cond_1
    move v5, v1

    .line 385
    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 11
    .parameter "cleared"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 275
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 277
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v8, :cond_1

    .line 278
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 279
    .local v0, actionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 280
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 281
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v7

    .line 282
    .local v7, provider:Landroid/view/ActionProvider;
    if-eqz v7, :cond_0

    .line 283
    invoke-virtual {v7, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    .line 280
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    .end local v0           #actionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v7           #provider:Landroid/view/ActionProvider;
    :cond_1
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 291
    .local v5, nonActionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 292
    .local v2, hasOverflow:Z
    iget-boolean v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    .line 293
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 294
    .restart local v1       #count:I
    if-ne v1, v9, :cond_8

    .line 295
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v8

    if-nez v8, :cond_7

    move v2, v9

    .line 301
    .end local v1           #count:I
    :cond_2
    :goto_2
    if-eqz v2, :cond_a

    .line 302
    iget-object v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v8, :cond_3

    .line 303
    new-instance v8, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v9, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 305
    :cond_3
    iget-object v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 306
    .local v6, parent:Landroid/view/ViewGroup;
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq v6, v8, :cond_5

    .line 307
    if-eqz v6, :cond_4

    .line 308
    iget-object v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 310
    :cond_4
    iget-object v4, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v4, Lcom/android/internal/view/menu/ActionMenuView;

    .line 311
    .local v4, menuView:Lcom/android/internal/view/menu/ActionMenuView;
    iget-object v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    .end local v4           #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    .end local v6           #parent:Landroid/view/ViewGroup;
    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v8, Lcom/android/internal/view/menu/ActionMenuView;

    iget-boolean v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v8, v9}, Lcom/android/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    .line 318
    return-void

    .line 288
    .end local v2           #hasOverflow:Z
    .end local v5           #nonActionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .restart local v1       #count:I
    .restart local v2       #hasOverflow:Z
    .restart local v5       #nonActionItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_7
    move v2, v10

    .line 295
    goto :goto_2

    .line 297
    :cond_8
    if-lez v1, :cond_9

    move v2, v9

    :goto_4
    goto :goto_2

    :cond_9
    move v2, v10

    goto :goto_4

    .line 313
    .end local v1           #count:I
    :cond_a
    iget-object v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v8, v9, :cond_5

    .line 314
    iget-object v8, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3
.end method

.method public updateSubMenu()V
    .locals 4

    .prologue
    .line 451
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 452
    iget-object v2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 453
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v2, :cond_0

    .line 454
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 456
    .local v0, actionButtonView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 457
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->updateAnchorView(Landroid/view/View;)V

    .line 458
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->onGlobalLayout()V

    .line 472
    .end local v0           #actionButtonView:Landroid/view/View;
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_0
    :goto_0
    return-void

    .line 462
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 463
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->updateAnchorView(Landroid/view/View;)V

    .line 464
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->onGlobalLayout()V

    goto :goto_0

    .line 467
    :cond_2
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    goto :goto_0
.end method

.method public updateWidthLimit(IZ)V
    .locals 3
    .parameter "width"
    .parameter "strict"

    .prologue
    const/4 v2, 0x1

    .line 674
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 675
    iput-boolean p2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 676
    iput-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 678
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 679
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 685
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 688
    :cond_0
    return-void

    .line 682
    :cond_1
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mWidthLimit:I

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    goto :goto_0
.end method
