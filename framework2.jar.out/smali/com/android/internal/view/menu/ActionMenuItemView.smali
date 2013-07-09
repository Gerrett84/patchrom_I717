.class public Lcom/android/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/TextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private final TW_DRAWABLE_PADDING:I

.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsMultiWindow:Z

.field private mIsParentThemeDeviceDefault:Z

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMinWidth:I

.field private mSavedPaddingLeft:I

.field private mTWDrawablePadding:I

.field private mTextStyleRes:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const/16 v5, 0x8

    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->TW_DRAWABLE_PADDING:I

    .line 81
    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsMultiWindow:Z

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 95
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x1110038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 97
    sget-object v5, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    sget-object v5, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 106
    .local v1, b:Landroid/content/res/TypedArray;
    const/16 v5, 0xbc

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextStyleRes:I

    .line 110
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 113
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 116
    iget-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsParentThemeDeviceDefault:Z

    if-eqz v5, :cond_0

    .line 117
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 118
    .local v2, density:F
    const/high16 v5, 0x4100

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTWDrawablePadding:I

    .line 123
    .end local v2           #density:F
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 124
    .local v3, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x10103fd

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 125
    iget v5, v3, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_1

    .line 126
    iput-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsParentThemeDeviceDefault:Z

    .line 129
    :cond_1
    return-void
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 12
    .parameter "anchor"
    .parameter "outRect"

    .prologue
    .line 427
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 432
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 434
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 436
    .local v3, root:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 437
    .local v7, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x0

    .line 439
    .local v8, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v10, v7, Landroid/view/WindowManager$LayoutParams;

    if-eqz v10, :cond_2

    move-object v8, v7

    .line 440
    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 443
    :cond_2
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 444
    .local v6, visibleDisplayFrame:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 446
    .local v4, statusBarHeight:I
    iget-object v10, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 449
    .local v1, dm:Landroid/util/DisplayMetrics;
    if-eqz v8, :cond_3

    .line 450
    iget v10, v8, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v11, v8, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v5, v10, v11

    .line 451
    .local v5, systemUiVisibility:I
    const/4 v2, 0x0

    .line 453
    .local v2, hasSystemNavBar:Z
    const-string v10, "window"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v9

    .line 455
    .local v9, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v9}, Landroid/view/IWindowManager;->hasSystemNavBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 459
    :goto_1
    if-nez v2, :cond_3

    and-int/lit16 v10, v5, 0x404

    if-nez v10, :cond_3

    .line 461
    iget-object v10, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105000a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 464
    .end local v2           #hasSystemNavBar:Z
    .end local v5           #systemUiVisibility:I
    .end local v9           #wm:Landroid/view/IWindowManager;
    :cond_3
    const/4 v10, 0x0

    iput v10, v6, Landroid/graphics/Rect;->left:I

    .line 465
    iput v4, v6, Landroid/graphics/Rect;->top:I

    .line 466
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v10, v6, Landroid/graphics/Rect;->right:I

    .line 467
    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v10, v6, Landroid/graphics/Rect;->bottom:I

    .line 469
    iget v10, v0, Landroid/graphics/Rect;->left:I

    if-gez v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    iget v11, v0, Landroid/graphics/Rect;->top:I

    if-gez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    or-int/2addr v10, v11

    if-eqz v10, :cond_4

    .line 470
    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 473
    :cond_4
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 469
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 456
    .restart local v2       #hasSystemNavBar:Z
    .restart local v5       #systemUiVisibility:I
    .restart local v9       #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method private updateTextButtonVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 195
    .local v0, visible:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v3, :cond_4

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsMultiWindow:Z

    if-nez v3, :cond_4

    :cond_1
    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    .line 198
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_2

    .line 202
    if-eqz v0, :cond_6

    .line 203
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setHoverPopupType(I)V

    .line 209
    :cond_2
    :goto_3
    return-void

    .end local v0           #visible:Z
    :cond_3
    move v0, v2

    .line 194
    goto :goto_0

    .restart local v0       #visible:Z
    :cond_4
    move v3, v2

    .line 195
    goto :goto_1

    .line 198
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 205
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setHoverPopupType(I)V

    goto :goto_3
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 145
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 150
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextStyleRes:I

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTextStyleRes:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 158
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 159
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 160
    return-void

    .line 158
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 166
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 22
    .parameter "v"

    .prologue
    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 282
    const/16 v18, 0x0

    .line 356
    :goto_0
    return v18

    .line 285
    :cond_0
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v12, v0, [I

    .line 286
    .local v12, screenPos:[I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 287
    .local v6, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 288
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 291
    .local v4, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v15

    .line 292
    .local v15, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v7

    .line 293
    .local v7, height:I
    const/16 v18, 0x1

    aget v18, v12, v18

    div-int/lit8 v19, v7, 0x2

    add-int v10, v18, v19

    .line 294
    .local v10, midy:I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v13, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 297
    .local v13, screenWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getRootView()Landroid/view/View;

    move-result-object v11

    .line 298
    .local v11, root:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 299
    .local v14, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, 0x0

    .line 300
    .local v17, wlp:Landroid/view/WindowManager$LayoutParams;
    const/4 v8, 0x0

    .line 302
    .local v8, isMultiWindow:Z
    instance-of v0, v14, Landroid/view/WindowManager$LayoutParams;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v17, v14

    .line 303
    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 304
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    if-nez v18, :cond_6

    const/4 v9, 0x0

    .line 305
    .local v9, isMultiWindowPopup:Z
    :goto_1
    if-eqz v9, :cond_2

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    if-ltz v18, :cond_1

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    if-gez v18, :cond_2

    .line 306
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 307
    const/4 v8, 0x1

    .line 312
    .end local v9           #isMultiWindowPopup:Z
    :cond_2
    if-nez v8, :cond_4

    .line 313
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 314
    .local v5, ctx:Landroid/content/Context;
    instance-of v0, v5, Landroid/content/ContextWrapper;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 315
    check-cast v5, Landroid/content/ContextWrapper;

    .end local v5           #ctx:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    .line 318
    .restart local v5       #ctx:Landroid/content/Context;
    :cond_3
    if-eqz v5, :cond_4

    instance-of v0, v5, Landroid/app/Activity;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 319
    check-cast v5, Landroid/app/Activity;

    .end local v5           #ctx:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/app/Activity;->getWindowMode()I

    move-result v16

    .line 320
    .local v16, windowMode:I
    invoke-static/range {v16 .. v16}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v8

    .line 325
    .end local v16           #windowMode:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 327
    .local v3, cheatSheet:Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsParentThemeDeviceDefault:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    if-eqz v8, :cond_9

    .line 328
    :cond_5
    const/16 v18, 0x1

    aget v18, v12, v18

    add-int v18, v18, v7

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v19, v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 330
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v18, v0

    const/16 v19, 0x2d0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 331
    const/16 v18, 0x35

    const/16 v19, 0x0

    aget v19, v12, v19

    sub-int v19, v13, v19

    div-int/lit8 v20, v15, 0x2

    sub-int v19, v19, v20

    const/16 v20, 0x1

    aget v20, v12, v20

    add-int v20, v20, v7

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 355
    :goto_2
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 356
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 304
    .end local v3           #cheatSheet:Landroid/widget/Toast;
    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 335
    .restart local v3       #cheatSheet:Landroid/widget/Toast;
    :cond_7
    const/16 v18, 0x35

    const/16 v19, 0x0

    aget v19, v12, v19

    sub-int v19, v13, v19

    div-int/lit8 v20, v15, 0x2

    sub-int v19, v19, v20

    const/16 v20, 0x1

    aget v20, v12, v20

    add-int v20, v20, v7

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_2

    .line 341
    :cond_8
    const/16 v18, 0x51

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1, v7}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_2

    .line 345
    :cond_9
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 347
    const/16 v18, 0x35

    const/16 v19, 0x0

    aget v19, v12, v19

    sub-int v19, v13, v19

    div-int/lit8 v20, v15, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1, v7}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_2

    .line 351
    :cond_a
    const/16 v18, 0x51

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1, v7}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 17
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 363
    .local v5, root:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 364
    .local v8, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v12, 0x0

    .line 366
    .local v12, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v13, v8, Landroid/view/WindowManager$LayoutParams;

    if-eqz v13, :cond_0

    move-object v12, v8

    .line 367
    check-cast v12, Landroid/view/WindowManager$LayoutParams;

    .line 368
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsMultiWindow:Z

    .line 369
    .local v3, oldIsMultiWindow:Z
    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v13, v13, 0x200

    if-eqz v13, :cond_5

    .line 370
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsMultiWindow:Z

    .line 375
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsMultiWindow:Z

    if-eq v13, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 379
    .end local v3           #oldIsMultiWindow:Z
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v7

    .line 380
    .local v7, textVisible:Z
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v13, :cond_1

    .line 381
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-super {v0, v13, v14, v15, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 386
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsParentThemeDeviceDefault:Z

    if-eqz v13, :cond_2

    .line 387
    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_6

    .line 388
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTWDrawablePadding:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawablePadding(I)V

    .line 396
    :cond_2
    :goto_1
    invoke-super/range {p0 .. p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 398
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 399
    .local v10, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 400
    .local v11, widthSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v4

    .line 401
    .local v4, oldMeasuredWidth:I
    const/high16 v13, -0x8000

    if-ne v10, v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 404
    .local v6, targetWidth:I
    :goto_2
    const/high16 v13, 0x4000

    if-eq v10, v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v13, :cond_3

    if-ge v4, v6, :cond_3

    .line 406
    const/high16 v13, 0x4000

    invoke-static {v6, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-super {v0, v13, v1}, Landroid/widget/TextView;->onMeasure(II)V

    .line 410
    :cond_3
    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_4

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v9

    .line 414
    .local v9, w:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 415
    .local v2, dw:I
    sub-int v13, v9, v2

    div-int/lit8 v13, v13, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-super {v0, v13, v14, v15, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 417
    .end local v2           #dw:I
    .end local v9           #w:I
    :cond_4
    return-void

    .line 373
    .end local v4           #oldMeasuredWidth:I
    .end local v6           #targetWidth:I
    .end local v7           #textVisible:Z
    .end local v10           #widthMode:I
    .end local v11           #widthSize:I
    .restart local v3       #oldIsMultiWindow:Z
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsMultiWindow:Z

    goto/16 :goto_0

    .line 391
    .end local v3           #oldIsMultiWindow:Z
    .restart local v7       #textVisible:Z
    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawablePadding(I)V

    goto :goto_1

    .line 401
    .restart local v4       #oldMeasuredWidth:I
    .restart local v10       #widthMode:I
    .restart local v11       #widthSize:I
    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_2
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 243
    .local v0, cdesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_0
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 178
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 182
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .parameter "expandedFormat"

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 186
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 187
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 191
    :cond_0
    return-void
.end method

.method public setHovered(Z)V
    .locals 1
    .parameter "hovered"

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setHovered(Z)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    const/4 v0, 0x0

    .line 212
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 216
    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .parameter "invoker"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 170
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 133
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 224
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 230
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 231
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method
